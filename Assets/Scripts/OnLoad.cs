using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnLoad : MonoBehaviour {
	public GameObject Player;
	// Use this for initialization
	void Start () {
		GameObject[] Spawns = GameObject.FindGameObjectsWithTag("Respawn");
		for (int i = 1; i <= Globals.playerCount; i++) {
			GameObject RandSpawn = Spawns [Random.Range (0, Spawns.Length)];
			GameObject player = UnityEngine.Object.Instantiate(Player, RandSpawn.transform.position, Quaternion.identity);
			PlayerController PC = player.GetComponentInChildren<PlayerController> ();
			PC.playerNum = i.ToString ();
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
