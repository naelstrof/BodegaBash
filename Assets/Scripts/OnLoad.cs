using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OnLoad : MonoBehaviour {
	public GameObject Player;
	public float gameTime = 45;
	private float startTime;
	// Use this for initialization
	void Start () {
		startTime = Time.time;
		GameObject[] Spawns = GameObject.FindGameObjectsWithTag("Respawn");
		for (int i = 0; i < Globals.playerCount; i++) {
			GameObject RandSpawn = Spawns [Random.Range (0, Spawns.Length)];
			GameObject player = UnityEngine.Object.Instantiate(Player, RandSpawn.transform.position, Quaternion.identity);
			PlayerController PC = player.GetComponentInChildren<PlayerController> ();
			PC.playerNum = i;
		}
		Globals.playerScore = new int[4];
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time - startTime > gameTime) {
			SceneManager.LoadScene (2); // score screen
		}
	}
}
