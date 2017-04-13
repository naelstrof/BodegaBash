using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Scripting;

public class ChemicalGame : MonoBehaviour
{
	GameObject[] victims;   // all spill victims in the map
	float t0;
	bool goalFinish;
	bool deathFinish;
	bool timerFinish;

	PlayerController ps;
	PlayerCharacter pc;

	public void Start()
	{
		t0 = Time.time;

		victims = GameObject.FindGameObjectsWithTag("Victim");
		if (victims.Length == 0)
			Debug.Log("There are no spill victims in the map (you may be loading the wrong minigame for this map)");
	}

	public void FixedUpdate()
	{
		// set flags - if any of them are NOT reset, then the round will end
		timerFinish = true;
		deathFinish = true;
		goalFinish = true;

		// do NOT end the round early if there is time remaining
		if ((Time.time - t0) < Globals.minigameTimer)
			timerFinish = false;

		// do minigame-related stuff with all the players
		for (int i = 0; i < Globals.playerCount; i++)
		{
			pc = Globals.playerChars[i];

			if (pc.Alive)
			{
				// if any player is alive (and the timer isn't expired), the round is not over
				deathFinish = false;

				if (pc.contaminated && pc.timeContaminated++ > 0)
					pc.TakeDamage((pc.chemBuildup++ / 500) + 1);    // chemical damage increases as the player stays contaminated
				else
					pc.chemBuildup = 0;                             // if the player isn't contaminated, reset their contamination counter to zero
			}
		}

		// do NOT finish the game if there are still contaminated victims
		foreach (GameObject v in victims)
			if (v.GetComponent<VictimScript>().contaminated)
				goalFinish = false;

		// finish the game if the goal has been met, all players are dead, or the timer has expired
		if (goalFinish || deathFinish || timerFinish)
			OnDestroy();

	}

	public void OnDestroy()
	{
		// score for this minigame is based on (1) victims helped (2) FixedUpdate frames spend contaminated
		for (int i = 0; i < Globals.playerCount; i++)
			Globals.minigameScores[i] = (1000 * Globals.playerChars[i].aidGiven) - (Globals.playerChars[i].timeContaminated);
	}
}