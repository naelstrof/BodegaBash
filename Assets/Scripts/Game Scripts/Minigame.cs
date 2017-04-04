using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Scripting;

public abstract class Minigame : MonoBehaviour
{

    public float MGtime;
    public float t0;
    public bool goalFinish;
    public bool deathFinish;
    public bool timerFinish;

    public PlayerController ps; // containing physical data
    public PlayerCharacter pc;  // containing shopping/minigame data

    public abstract void Start();

    public abstract void FixedUpdate();

    public abstract void Finish();

}

public class TsunamiGame : Minigame
{
    GameObject goal;        // a point representing the finish line
    bool[] atGoal;          // booleans indicating which players have reached the goal
    GameObject water;       // the water plane
    
    public override void Start()
    {
        goal = GameObject.FindGameObjectWithTag("Goal");
        atGoal = new bool[Globals.playerCount];
        for (int i = 0; i < atGoal.Length; i++)
            atGoal[i] = false;

        water = GameObject.FindGameObjectWithTag("Water");
        if (water == null)
            Debug.Log("Water plane not set (you may be loading the wrong minigame for this map)");
    }

    public override void FixedUpdate()
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
            ps = Globals.playerScripts[i];  // containing physical data
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
            Finish();

    }

    public override void Finish()
    {
        // score for this minigame is based on (1) your final height (2) FixedUpdate frames spent underwater
        for (int i = 0; i < Globals.playerCount; i++)
            Globals.minigameScores[i] = (int)(500 * Globals.playerScripts[i].origin.position.y) - (Globals.playerChars[i].timeUnderwater);
    }
}

public class EarthquakeGame : Minigame
{
    GameObject goal;        // a point representing the finish line
    bool[] atGoal;          // booleans indicating which players have reached the goal
    GameObject[] fires;     // all fire objects in the map

    public override void Start()
    {
        goal = GameObject.FindGameObjectWithTag("Goal");
        atGoal = new bool[Globals.playerCount];
        for (int i = 0; i < atGoal.Length; i++)
            atGoal[i] = false;

        fires = GameObject.FindGameObjectsWithTag("Fire");
        if (fires.Length == 0)
            Debug.Log("There are no fires in the map (you may be loading the wrong minigame for this map)");
    }

    public override void FixedUpdate()
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
            ps = Globals.playerScripts[i];
            pc = Globals.playerChars[i];

            if (pc.Alive)
            {
                // do NOT end the round early if there is some player still living
                deathFinish = false;

                // determine which players are standing near the end goal
                if (Vector3.Distance(goal.transform.position, ps.transform.position) < 5)
                    atGoal[i] = true;
                else
                    atGoal[i] = false;
            }
        }

        // do NOT end the round early if there is some player who hasn't reached the goal
        for (int i = 0; i < Globals.playerCount; i++)
            if (!atGoal[i])
                goalFinish = false;

        // finish the game if the goal has been met, all players are dead, or the timer has expired
        if (goalFinish || deathFinish || timerFinish)
            Finish();

    }

    public override void Finish()
    {
        // score for this minigame is based on (1) health remaining (2) health lost (3) heals used
        for (int i = 0; i < Globals.playerCount; i++)
            Globals.minigameScores[i] = 10000 + (2 * Globals.playerChars[i].Health) - (Globals.playerChars[i].healthLost) - (1000 * Globals.playerChars[i].healsUsed);
    }
}

public class ChemicalGame : Minigame
{
    GameObject[] victims;   // all spill victims in the map

    public override void Start()
    {
        victims = GameObject.FindGameObjectsWithTag("Victim");
        if (victims.Length == 0)
            Debug.Log("There are no spill victims in the map (you may be loading the wrong minigame for this map)");
    }

    public override void FixedUpdate()
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
            ps = Globals.playerScripts[i];
            pc = Globals.playerChars[i];

            if (pc.Alive)
            {
                // if any player is alive (and the timer isn't expired), the round is not over
                deathFinish = false;

                if (pc.contaminated && pc.timeContaminated++ > 0)
                    pc.TakeDamage((pc.chemBuildup++ / 500) + 1);    // chemical damage increases as the player stays contaminated
                else
                    pc.chemBuildup = 0;                             // if the player isn't contaminated, reset their contamination counter to zero

                // contaminate players who are too close to a victim (measured by their origin)
                for (int v = 0; v < victims.Length; v++)  // yes, I know this nested loop is questionable
                    if (Vector3.Distance(victims[v].transform.position, ps.transform.position) < 1)
                        pc.contaminated = true;
            }
        }

        // do NOT finish the game if there are still contaminated victims
        foreach (GameObject v in victims)
            if (v.GetComponent<VictimScript>().contaminated)
                goalFinish = false;

        // finish the game if the goal has been met, all players are dead, or the timer has expired
        if (goalFinish || deathFinish || timerFinish)
            Finish();

    }

    public override void Finish()
    {
        // score for this minigame is based on (1) victims helped (2) FixedUpdate frames spend contaminated
        for (int i = 0; i < Globals.playerCount; i++)
            Globals.minigameScores[i] = (1000 * Globals.playerChars[i].aidGiven) - (Globals.playerChars[i].timeContaminated);
    }
}