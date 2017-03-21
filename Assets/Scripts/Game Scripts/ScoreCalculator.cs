using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class ScoreCalculator
{
    /// <summary>
    /// Returns a player's score for a shopping round,
    /// based on the disaster scenario and the
    /// contents of their cart.
    /// </summary>
    /// <param name="_scenario">Current disaster scenario { 'T'=tsunami, 'E'=earthquake, 'C'=chemspill }</param>
    /// <param name="_cart">The player's cart.</param>
    /// <returns></returns>
    public static int TallyCart(char _scenario, Dictionary<int, int> _cart) 
    {
        int points = 0;

        foreach (KeyValuePair<int, int> kvp in _cart)
            switch (ItemTable.Defs[kvp.Key].Category)
            {
                case Globals.CAT_FOOD:
                case Globals.CAT_MEDS:
                case Globals.CAT_CLOTH:
                    points += (ItemTable.Defs[kvp.Key].BasePoints * kvp.Value);
                    break;
                case Globals.CAT_COMM:
                case Globals.CAT_POWER:
                    if (_scenario == 'T' || _scenario == 'E')
                        points += (ItemTable.Defs[kvp.Key].BasePoints * kvp.Value);
                    else
                        points += (int)(ItemTable.Defs[kvp.Key].BasePoints * kvp.Value * 0.1);
                    break;
                case Globals.CAT_FLOAT:
                    if (_scenario == 'T')
                        points += (ItemTable.Defs[kvp.Key].BasePoints * kvp.Value);
                    else
                        points += (int)(ItemTable.Defs[kvp.Key].BasePoints * kvp.Value * 0.1);
                    break;
                case Globals.CAT_FIRE:
                    if (_scenario == 'E')
                        points += (ItemTable.Defs[kvp.Key].BasePoints * kvp.Value);
                    else
                        points += (int)(ItemTable.Defs[kvp.Key].BasePoints * kvp.Value * 0.1);
                    break;
                case Globals.CAT_NEUT:
                case Globals.CAT_ABSRB:
                    if (_scenario == 'C')
                        points += (ItemTable.Defs[kvp.Key].BasePoints * kvp.Value);
                    else
                        points += (int)(ItemTable.Defs[kvp.Key].BasePoints * kvp.Value * 0.1);
                    break;
            }
        return points;
    }

    /// <summary>
    /// Driver method that returns a player's score for a minigame,
    /// based on the disaster scenario.
    /// </summary>
    /// <param name="_scenario">Current disaster scenario { 'T'=tsunami, 'E'=earthquake, 'C'=chemspill }</param>
    /// <returns></returns>
    public static int TallyGame(char _scenario)
    {
        switch(_scenario)
        {
            case 'T':
                break;
            case 'E':
                break;
            case 'C':
                break;
        }
        return 0;
    }
}