using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class PlayerCharacter
{
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

    Dictionary<string, int> catRanks;   // maps item category names to the highest rank of
                                        //   that item held by the player.

    Stack<int> recentitems;             // the player's history of items is tracked as
                                        //   a stack of item ID's.  when a player loses
                                        //   items for whatever reason, they lose the most
                                        //   recent items they picked up.

    // MINIGAME STATS
    int health;         // hitpoints - when you run out,
                        //   you're done until the next shopping round
    int energy;         // stamina - fuel to run longer
                        //   and perform special moves

    /// <summary>
    /// PlayerCharacter constructor
    /// </summary>
    /// <param name="_cd">Character selection</param>
    /// <param name="_health">Starting health</param>
    /// <param name="_energy">Starting energy</param>
    public PlayerCharacter(CharacterTable.CharacterDef _cd, int _health, int _energy)
    {
        speed = _cd.Speed;
        accel = _cd.Accel;
        weight = _cd.Weight;
        skillz = _cd.Skillz;

        health = _health;
        energy = _energy;

        cart = new Dictionary<int, int>();
        recentitems = new Stack<int>();
    }

    /// <summary>
    /// Adds an item to the player's cart, or increments that
    /// item's quantity if it is already in the cart.
    /// 
    /// If the pickup displaces an item based on rank and category,
    /// this method returns that item's ID as an integer.  Otherwise,
    /// this method return zero.
    /// </summary>
    /// <param name="_itemID"></param>
    /// <returns>an item ID, or zero</returns>
    public int AddToCart(int _itemID)
    {
        int outitem = 0;
        // update the cart and recentitems
        if (cart.ContainsKey(_itemID))
            cart[_itemID]++;
        else
            cart.Add(_itemID, 1);
        recentitems.Push(_itemID);
        // update category-rank map and eject old item if the new item outranks it
        //string iCat = ItemTable.Defs[_itemID].Category;
        //int iRank = ItemTable.Defs[_itemID].Rank;
        //if (catRanks.ContainsKey(iCat))
        //    if (catRanks[iCat] < iRank)
        //        catRanks[iCat] = iRank;
        //else
        //    catRanks.Add(iCat, iRank);

        return outitem;
    }

    /// <summary>
    /// Removes an item from the player's cart, and decrements
    /// that item's quantity in the player's cart.
    /// </summary>
    /// <param name="_itemID"></param>
    private void RemoveItem(int _itemID)
    {
        // update the cart
        if (--cart[_itemID] <= 0)
            cart.Remove(_itemID);       // unnecessary?
        // update the category-rank map
        //if (!cart.ContainsKey(_itemID))
        //    catRanks.Remove();
            
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
            
        for (int i = 0; i < _qty; i++)
        {
            if (recentitems.Count > 0)
            {
                int popped = recentitems.Pop();
                RemoveItem(popped);
                outItems.Add(popped);
            }
        }

        return outItems;
    }
}