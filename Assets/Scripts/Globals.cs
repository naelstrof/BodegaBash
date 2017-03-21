using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Globals
{

	public static int playerCount = 1;
	public static int[] playerScore = new int[4];
    public static PlayerCharacter[] playerChars = new PlayerCharacter[4];

    // ITEM CATEGORIES
    public const string CAT_FOOD = "food";              // food and water
    public const string CAT_MEDS = "medicine";          // medicine and first-aid
    public const string CAT_CLOTH = "clothing";         // clothing
    public const string CAT_COMM = "communication";     // communication device         Ts, Eq
    public const string CAT_POWER = "power";            // power supply                 Ts, Eq
    public const string CAT_FLOAT = "floatation";       // floatation device            Ts
    public const string CAT_FIRE = "fire";              // fire equipment               Eq
    public const string CAT_NEUT = "neutralizaer";      // chemical neutralizing soln   Ch
    public const string CAT_ABSRB = "absorbant";        // absorbant material for chem  Ch

}
