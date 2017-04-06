using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Globals
{
	private static AudioListener listener = null;
	public static int playerCount = 1;
	public static int[] shoppingScores = new int[4];
    public static int[] minigameScores = new int[4];
    public static bool[] atGoal = new bool[4];
    public static PlayerCharacter[] playerChars = new PlayerCharacter[4];
    public static PlayerController[] playerControllers = new PlayerController[4];
    public static char Scenario = ' ';  // 'T' for tsunami  // 'E' for earthquake   // 'C' for chemical spill
    public static bool Shopping = false;
	public static int shoppingTimer = 3;
    public static int minigameTimer = 300;

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

	private static AudioListener getListener() {
		if (listener == null) {
			listener = GameObject.FindObjectOfType<AudioListener> ();
		}
		return listener;
	}

	public static void clearListener() {
		listener = null;
	}

	public static void SpawnSound( AudioClip clip, Vector3 position ) {
		// Find the closest player to the sound source
		GameObject[] Players = GameObject.FindGameObjectsWithTag("Player");
		GameObject closestPlayer = Players [0];
		float closestDistance = 999999999999;
		foreach (GameObject p in Players) {
			float d = Vector3.Distance (p.transform.position, position);
			if (d < closestDistance) {
				closestDistance = d;
				closestPlayer = p;
			}
		}

		// Once we find the closest player, we transform the position to be relative to the audio listener.
		position = closestPlayer.transform.InverseTransformPoint( position );
		position = getListener().transform.TransformPoint (position);
		Debug.Log (getListener().transform.position);
		Debug.Log (position);
		AudioSource.PlayClipAtPoint(clip, position);
	}
}
