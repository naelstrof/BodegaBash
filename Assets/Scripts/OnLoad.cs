using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OnLoad : MonoBehaviour {

	public GameObject Player;
	public GameObject TsunamiGame;
	public GameObject EarthquakeGame;
	public GameObject ChemicalGame;
	float startTime;

	// Use this for initialization
	void Start () {
		
        if (Globals.Shopping)
        {
            startTime = Time.time;
            GameObject[] Spawns = GameObject.FindGameObjectsWithTag("Respawn");
            for (int i = 0; i < Globals.playerCount; i++)
            {
                GameObject RandSpawn = Spawns[Random.Range(0, Spawns.Length)];
                GameObject player = UnityEngine.Object.Instantiate(Player, RandSpawn.transform.position, Quaternion.identity);
                PlayerController PC = player.GetComponentInChildren<PlayerController>();
                PC.playerNum = i;
            }
            Globals.shoppingScores = new int[4];
            Globals.playerChars = new PlayerCharacter[4];
            Globals.clearListener();

            // initialize the players in this round
            Globals.playerChars = new PlayerCharacter[Globals.playerCount];
            // we could load in character choices as strings from an array filled during the character selection screen
            for (int i = 0; i < Globals.playerCount; i++)
                Globals.playerChars[i] = new PlayerCharacter(CharacterTable.Defs["JOE DUDE"]);
        }
        else
        {
			startTime = Time.time;
			GameObject[] Spawns = GameObject.FindGameObjectsWithTag("Respawn");
			for (int i = 0; i < Globals.playerCount; i++)
			{
				GameObject RandSpawn = Spawns[Random.Range(0, Spawns.Length)];
				GameObject player = UnityEngine.Object.Instantiate(Player, RandSpawn.transform.position, Quaternion.identity);
				PlayerController PC = player.GetComponentInChildren<PlayerController>();
				PC.playerNum = i;
			}
			Globals.clearListener();

			switch (Globals.Scenario) {
			case 'T':
				UnityEngine.Object.Instantiate (TsunamiGame, Vector3.zero, Quaternion.identity);
				break;
			case 'E':
				UnityEngine.Object.Instantiate (EarthquakeGame, Vector3.zero, Quaternion.identity);
				break;
			case 'C':
				UnityEngine.Object.Instantiate (ChemicalGame, Vector3.zero, Quaternion.identity);
				break;
			default:
				Debug.Log ("ERROR :: invalid minigame code (must be in { T, E, C })");
				break;
			}
        }
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log(Time.time - startTime + "\ts / " + Globals.gameTimer);
        if (Time.time - startTime > Globals.gameTimer)
            if (Globals.Shopping)
            {
                for (int i = 0; i < Globals.playerCount; i++)
                    Globals.shoppingScores[i] = ScoreCalculator.TallyCart(Globals.Scenario, Globals.playerChars[i].Cart);
                SceneManager.LoadScene(6);         // score screen
            }
            else
            {
                SceneManager.LoadScene(10);
            }
	}
}
