using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Scripting;

public class TsunamiGame : MonoBehaviour
{

	GameObject goal;        // a point representing the finish line
	bool[] atGoal;          // booleans indicating which players have reached the goal
	GameObject water;       // the water plane
	public float MGtime;
	float t0;
	bool goalFinish;
	bool deathFinish;
	bool timerFinish;

	PlayerController ps;
	PlayerCharacter pc;

	public void Start()
	{
		t0 = Time.time;

		goal = GameObject.FindGameObjectWithTag("Goal");
		atGoal = new bool[Globals.playerCount];
		for (int i = 0; i < atGoal.Length; i++)
			atGoal[i] = false;

		water = GameObject.FindGameObjectWithTag("Water");
		if (water == null)
			Debug.Log("Water plane not set (you may be loading the wrong minigame for this map)");
	}

	public void FixedUpdate()
	{
		// set flags - if any of them are NOT reset, then the round will end
		timerFinish = true;
		deathFinish = true;
		goalFinish = true;

		// do NOT end the round early if there is time remaining
		if ((Time.time - t0) < MGtime)
			timerFinish = false;

		// do minigame-related stuff with all the players
		for (int i = 0; i < Globals.playerCount; i++)
		{
			ps = Globals.playerControllers[i];  // containing physical data
			pc = Globals.playerChars[i];    // containing shopping/minigame data

			if (pc.Alive)
			{
				// do NOT end the round early if there is some player still living
				deathFinish = false;

				// determine which players are standing near the end goal
				if (Vector3.Distance(goal.transform.position, ps.transform.position) < 5)
					atGoal[i] = true;
				else
					atGoal[i] = false;

				// remove oxygen (resource A) or health from players who are in the water (measured by their origin)
				if ((ps.origin.position.y <= water.transform.position.y) && (pc.timeUnderwater++ >= 0))  // <-- taking advantage of boolean logic short-circuiting
				if (!pc.ConsumeA(1))    // if the player is out of oxygen,
					pc.TakeDamage(2);   //   then inflict damage
			}
		}

		// do NOT end the round early if there is some player who hasn't reached the goal
		for (int i = 0; i < Globals.playerCount; i++)
			if (!atGoal[i])
				goalFinish = false;

		// finish the game if the goal has been met, all players are dead, or the timer has expired
		if (goalFinish || deathFinish || timerFinish)
			OnDestroy();

	}

	public void OnDestroy()
	{
		// score for this minigame is based on (1) your final height (2) FixedUpdate frames spent underwater
		for (int i = 0; i < Globals.playerCount; i++)
			Globals.minigameScores[i] = (int)(500 * Globals.playerControllers[i].origin.position.y) - (Globals.playerChars[i].timeUnderwater);
	}
}