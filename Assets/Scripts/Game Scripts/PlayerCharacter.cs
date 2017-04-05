using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class PlayerCharacter
{
    bool alive;
    public bool Alive { get { return alive; } }

    // MOVEMENT & HANDLING
    int speed;          // determines top movement speed
                        //   narrow range (45-55 mph?)
    int accel;          // determines rate of change of direction
    int weight;         // strong influence on outcome of player impacts
                        //   (slight influence on controls)
    int skillz;         // influence on difficulty of moves
                        //   (wall jump frames, etc)

    // SHOPPING-RELATED
    Dictionary<int, int> cart;          // a player's inventory during the shopping phase
                                        //   is represented as a dictionary mapping store
                                        //   item ID's to quantities of that item held.
    public Dictionary<int, int> Cart { get { return cart; } }

    Stack<int> recentitems;             // the player's history of items is tracked as
                                        //   a stack of item ID's.  when a player loses
                                        //   items for whatever reason, they lose the most
                                        //   recent items they picked up.
	public int encumbrance;
	public int maxEncumbrance;

    // MINIGAME STATS
    int health;         // current hitpoints
    int maxHealth;		// maximum hitpoints
    int heals;          // number of heals allowed in the minigame round
        
                        //                                  TSUNAMI         EARTHQUAKE      CHEMSPILL
    int rsrcA;          // qty of 1st minigame resource     floatation      fire            neutralizer
    int rsrcB;          // qty of 2nd minigame resource     communication?  communication?  absorbant
    int rsrcC;          // qty of 3rd minigame resource     power?          power?          clothing
    
    public int Health { get { return health; } }
    public int Heals { get { return heals; } }
    public int RsrcA { get { return rsrcA; } }
    public int RsrcB { get { return rsrcB; } }
    public int RsrcC { get { return rsrcC; } }

    public bool underwater;
    public int timeUnderwater;

    public int healthLost;
    public int healsUsed;

    public bool contaminated;
    public int timeContaminated;
    public int chemBuildup;
    public int aidGiven;

    /// <summary>
    /// PlayerCharacter constructor
    /// </summary>
    /// <param name="_cd">Character selection</param>
    /// <param name="_health">Starting health</param>
    /// <param name="_energy">Starting energy</param>
    public PlayerCharacter(CharacterTable.CharacterDef _cd)
    {
        alive = true;

        speed = _cd.Speed;
        accel = _cd.Accel;
        weight = _cd.Weight;
        skillz = _cd.Skillz;

        cart = new Dictionary<int, int>();
        recentitems = new Stack<int>();
		encumbrance = 0;
		maxEncumbrance = 70 + skillz * 10;

        maxHealth = 999;        // "marked" with 999 to help with errors I guess
        health = maxHealth;
        heals = 3;

        rsrcA = 0;
        rsrcB = 0;
        rsrcC = 0;
    }

    // SHOPPING PHASE METHODS //

    /// <summary>
    /// Adds an item to the player's cart, or increments that
    /// item's quantity if it is already in the cart.
    /// 
    /// </summary>
    /// <param name="_itemID"></param>
    /// <returns>an item ID, or zero</returns>
	public bool AddToCart(int _itemID)
    {
		if (ItemTable.Defs [_itemID].Rank <= maxEncumbrance - encumbrance) {			
			// update the cart and recentitems
			if (cart.ContainsKey (_itemID))
				cart [_itemID]++;
			else
				cart.Add (_itemID, 1);
			recentitems.Push (_itemID);
			encumbrance += ItemTable.Defs [_itemID].Rank;
			return true;
		}
		return false;
    }

    /// <summary>
    /// Removes an item from the player's cart, and decrements
    /// that item's quantity in the player's cart.
    /// </summary>
    /// <param name="_itemID"></param>
    private int RemoveItem(int _itemID)
    {
        // update the cart
        if (--cart[_itemID] <= 0)       // decrement then check; if none left, remove altogether
            cart.Remove(_itemID);       // unnecessary?
		encumbrance -= ItemTable.Defs[_itemID].Rank;
        return _itemID;
    }

    /// <summary>
    /// Spills X items from the player's cart by
    /// by removing its X most recently-obtained
    /// items and returning them in a list.
    /// 
    /// If the player has fewer than X items, then
    /// only the items they have will be returned.
    /// </summary>
    /// <param name="_qty">The quantity of items to spill.</param>
    /// <returns></returns>
    public List<int> SpillItems(int _qty)
    {
        List<int> outItems = new List<int>();
            
        for (int i = 0; i < _qty; i++)      // this is tricksy hobbit garbage code
            if (recentitems.Count > 0)      // don't worry about it
                outItems.Add(RemoveItem(recentitems.Pop()));    // *inhale* so damn clever

        return outItems;
    }

    // MINIGAME PHASE METHODS //

    public void PrepForMinigame(char _scenario)
    {
        // bump stats and assign minigame resources
        int statBoost = 0;
        foreach (KeyValuePair<int, int> kvp in cart)
        {
            ItemTable.ItemDef item = ItemTable.Defs[kvp.Key];
            switch (item.Category)
            {
                case Globals.CAT_FOOD:
                    maxHealth += 20 * (item.Rank - 1) + 10;
                    statBoost += item.BasePoints;
                    break;
                case Globals.CAT_MEDS:
                    heals += 1 + 2 * (item.Rank - 1);
                    statBoost += 2 * item.BasePoints;
                    break;
                case Globals.CAT_CLOTH:     // resource C for chemspills
                    if (_scenario == 'C')
                        rsrcC += item.Rank;
                    statBoost += item.BasePoints;
                    break;
                case Globals.CAT_COMM:      // resource B for tsunamis and earthquakes?
                    if (_scenario == 'T' || _scenario == 'E')
                        rsrcB += item.Rank;
                    break;
                case Globals.CAT_POWER:     // resource C for tsunamis and earthquakes?
                    if (_scenario == 'T' || _scenario == 'E')
                        rsrcC += item.Rank;
                    break;
                case Globals.CAT_FLOAT:     // resource A for tsunamis
                    if (_scenario == 'T')
                        rsrcA += item.Rank * 100;
                    break;
                case Globals.CAT_FIRE:      // resource A for earthquakes
                    if (_scenario == 'E')
                        rsrcA += item.Rank * 100;
                    break;
                case Globals.CAT_NEUT:      // resource A for chemspills
                    if (_scenario == 'C')
                        rsrcA += item.Rank;
                    break;
                case Globals.CAT_ABSRB:     // resource B for chemspills
                    if (_scenario == 'C')
                        rsrcB += item.Rank;
                    break;
            }
        }

        health = maxHealth;

        // evenly gain stats based on general items (tentative system)
        int gain = statBoost / 2000;
        speed += gain;
        accel += gain;
        weight += gain;
        skillz += gain;
    }

    /// <summary>
    /// Consumes three 'heals' to restore up to 500 health.
    /// </summary>
    /// <returns>A boolean indicating whether the attempt was successful (i.e. whether the player had enough heals)</returns>
    public bool HealSelf()
    {
        if (heals < 3)
            return false;
        heals -= 3;
        healsUsed++;
        health += 500;
        if (health >= maxHealth)
            health = maxHealth;
        return true;
    }

    /// <summary>
    /// Checks for contamination before calling ConsumeEach().
    /// If either doesn't work (i.e. is false), then returns false.
    /// </summary>
    /// <returns></returns>
    public bool CleanSelf()
    {
        if (!contaminated || !ConsumeEach(true))
            return false;
        contaminated = false;
        return true;
    }

    /// <summary>
    /// Consumes a single 'heal' to help a survivor.
    /// </summary>
    /// <returns>A boolean indicating whether the attempt was successful (i.e. whether the player had enough heals)</returns>
    public bool GiveFirstAid()
    {
        if (heals < 1)
            return false;
        heals--;
        return true;
    }

    /// <summary>
    /// Subtract health from the player,
    /// then kill them if it hits zero or below.
    /// 
    /// Return the amount of damage actually dealt to the player.
    /// </summary>
    /// <param name="_dmg"></param>
    public int TakeDamage(int _dmg)
    {
        int dealt = Math.Min(_dmg, health);
        health -= _dmg;
        healthLost += dealt;
        if (health <= 0)
            alive = false;
        return dealt;
        
    }

    /// <summary>
    /// Subtract some resource A from the player.
    /// Return false if the player is out of resource A.
    /// </summary>
    /// <param name="_count">Amount of resource to consume.</param>
    /// <returns>Boolean indicating whether the player had enough of resource A.</returns>
    public bool ConsumeA(int _count)
    {
        if (rsrcA < _count)
            return false;
        rsrcA -= _count;
        return true;
    }

    /// <summary>
    /// Subtract some resource B from the player.
    /// Return false if the player is out of resource B.
    /// </summary>
    /// <param name="_count">Amount of resource to consume.</param>
    /// <returns>Boolean indicating whether the player had enough of resource B.</returns>
    public bool ConsumeB(int _count)
    {
        if (rsrcB < _count)
            return false;
        rsrcB -= _count;
        return true;
    }

    /// <summary>
    /// Subtract some resource A from the player.
    /// Return false if the player is out of resource C.
    /// </summary>
    /// <param name="_count">Amount of resource to consume.</param>
    /// <returns>Boolean indicating whether the player had enough of resource C.</returns>
    public bool ConsumeC(int _count)
    {
        if (rsrcC < _count)
            return false;
        rsrcC -= _count;
        return true;
    }

    /// <summary>
    /// Attempt to consume 1 unit each of resources A, B, and C.
    /// If the player is out of these resources, consume nothing and return false.
    /// (for use in the Chemical Spill minigame)
    /// </summary>
    /// <returns></returns>
    public bool ConsumeEach(bool _self)
    {
        if (rsrcA < 1 || rsrcB < 1 || rsrcC < 1)
            return false;
        rsrcA--;
        rsrcB--;
        rsrcC--;
        if (!_self)
            aidGiven++;
        return true;
    }
}