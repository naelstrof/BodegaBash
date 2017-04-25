using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Globals
{
    public static bool BBStartup = true;

    private static AudioListener listener = null;
	public static int playerCount = 1;
	public static int[] shoppingScores;
    public static int[] minigameScores;
    public static bool[] atGoal;
    public static PlayerCharacter[] playerChars;
    public static PlayerController[] playerControllers;
    public static char Scenario = ' ';  // 'T' for tsunami  // 'E' for earthquake   // 'C' for chemical spill
    public static bool Shopping = false;
    public static int shoppingTimer = 60;
    public static int minigameTimer = 70;

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

	public static void setListener(AudioListener a) {
		listener = a;
	}

	public static AudioSource StartSound(AudioClip clip, Vector3 position, float volume = 1 ) {
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
		position = listener.transform.TransformPoint(position);
		GameObject root = new GameObject();
		AudioSource blah = root.AddComponent(typeof(AudioSource)) as AudioSource;
		root.transform.position = position;
		blah.clip = clip;
		blah.loop = true;
		blah.volume = volume;
		blah.Play ();
		return blah;
	}

	public static void UpdateSoundPosition( AudioSource blah, Vector3 position ) {
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
		position = listener.transform.TransformPoint(position);
		blah.gameObject.transform.position = position;
	}

	public static void StopSound( AudioSource blah ) {
		Object.Destroy (blah.gameObject);
	}

	public static void SpawnSound( AudioClip clip, Vector3 position, float volume = 1 ) {
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
		position = listener.transform.TransformPoint(position);
		AudioSource.PlayClipAtPoint(clip, position, volume);
	}
}
