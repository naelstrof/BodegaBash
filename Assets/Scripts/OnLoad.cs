using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OnLoad : MonoBehaviour {

    int sceneNum;

	public GameObject Player;
	public GameObject TsunamiGame;
	public GameObject EarthquakeGame;
	public GameObject ChemicalGame;
	public Material MAT_p1;
	public Material MAT_p2;
	public Material MAT_p3;
	public Material MAT_p4;
	float startTime;

	// Use this for initialization
	void Start () {

        if (Globals.BBStartup)
        {
            Globals.BBStartup = false;
            SceneManager.LoadScene(0);
            return;
        }

        sceneNum = SceneManager.GetActiveScene().buildIndex;
        switch(sceneNum)
        {
            case 3:
            case 4:
            case 5:
                Globals.Shopping = true;
                break;
            case 7:
            case 8:
            case 9:
                Globals.Shopping = false;
                break;
        }

		Material[] playerMats = {MAT_p1, MAT_p2, MAT_p3, MAT_p4};

        if (Globals.Shopping)
        {
            startTime = Time.time;
			ArrayList Spawns = new ArrayList (GameObject.FindGameObjectsWithTag ("Respawn"));
            for (int i = 0; i < Globals.playerCount; i++)
            {
				Debug.Assert (Spawns.Count > 0);
				GameObject RandSpawn = (GameObject)Spawns[Random.Range(0, Spawns.Count)];
				Spawns.Remove (RandSpawn);
                GameObject player = UnityEngine.Object.Instantiate(Player, RandSpawn.transform.position, Quaternion.identity);
                PlayerController PC = player.GetComponentInChildren<PlayerController>();

				var playerShirtColor = player.GetComponentInChildren<SkinnedMeshRenderer>().materials;
				playerShirtColor[1] = playerMats[i];
				player.GetComponentInChildren<SkinnedMeshRenderer> ().materials = playerShirtColor;
				//Debug.Log (player.GetComponentInChildren<SkinnedMeshRenderer>().materials[1]);

                PC.playerNum = i;
            }
            Globals.shoppingScores = new int[Globals.playerCount];
            Globals.minigameScores = new int[Globals.playerCount];
            Globals.atGoal = new bool[Globals.playerCount];
			Globals.setListener( this.GetComponentInChildren<AudioListener>() );

            // initialize the players in this round
            Globals.playerChars = new PlayerCharacter[Globals.playerCount];
            Globals.playerControllers = new PlayerController[Globals.playerCount];
            // we could load in character choices as strings from an array filled during the character selection screen
            for (int i = 0; i < Globals.playerCount; i++)
            {
                Globals.playerChars[i] = new PlayerCharacter(CharacterTable.Defs["JOE DUDE"]);
                Globals.playerControllers[i] = new PlayerController();
            }
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

				var playerShirtColor = player.GetComponentInChildren<SkinnedMeshRenderer>().materials;
				playerShirtColor[1] = playerMats[i];
				player.GetComponentInChildren<SkinnedMeshRenderer> ().materials = playerShirtColor;

				PC.playerNum = i;
			}
			Globals.setListener( this.GetComponentInChildren<AudioListener>() );

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
		if (Globals.Shopping) {
			if (Time.time - startTime > Globals.shoppingTimer) {
				
				for (int i = 0; i < Globals.playerCount; i++)
					Globals.shoppingScores [i] = ScoreCalculator.TallyCart (Globals.Scenario, Globals.playerChars [i].Cart);
				SceneManager.LoadScene (6);
			}
		}
		else
		{
			if (Time.time - startTime > Globals.minigameTimer)
				SceneManager.LoadScene (10);
		}
	}
}
