﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Scripting;

public class TsunamiGame : MonoBehaviour
{

	float t0;
	bool goalFinish;
	bool deathFinish;
	bool timerFinish;

	public void Start()
	{
		t0 = Time.time;
		Globals.atGoal = new bool[Globals.playerCount];
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

        for (int i = 0; i < Globals.playerCount; i++)
        {
            // do NOT end the round early if there is some player still living
            if (Globals.playerChars[i].Alive)
                deathFinish = false;
            // do NOT end the round early if there is some player who hasn't reached the goal
            if (Globals.playerChars[i].Alive && !Globals.atGoal[i])
                goalFinish = false;
        }

        string dlog = "";
        if (timerFinish)
            dlog += "timer ";
        if (deathFinish)
            dlog += "death ";
        if (goalFinish)
            dlog += "goal ";
        //Debug.Log(dlog);

        // finish the game if the goal has been met, all players are dead, or the timer has expired
        if (goalFinish || deathFinish || timerFinish)
            FinishGame();

	}

	public void FinishGame()
	{
		// score for this minigame is based on (1) your final height (2) FixedUpdate frames spent underwater
		for (int i = 0; i < Globals.playerCount; i++) {
            Globals.minigameScores[i] = 10000 - (Globals.playerChars[i].timeUnderwater);
            SceneManager.LoadScene(10);
        }
	}
}