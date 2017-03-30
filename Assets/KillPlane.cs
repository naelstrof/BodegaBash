using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillPlane : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

	// Update is called once per frame
	void Update () {
		GameObject[] Players = GameObject.FindGameObjectsWithTag("Player");
		foreach ( GameObject p in Players ) {
			if (p.transform.position.y < transform.position.y) {
				GameObject[] Spawns = GameObject.FindGameObjectsWithTag("Respawn");
				GameObject RandSpawn = Spawns [Random.Range (0, Spawns.Length)];
				p.transform.position = RandSpawn.transform.position;
				PlayerController pc = p.GetComponentInChildren<PlayerController>();
				pc.SwitchState (new PlayerHurt (new Vector3(0, 0, 0)));
				pc.body.velocity = new Vector3 (0, 0, 0);
				CameraController c = p.GetComponentInChildren<CameraController> ();
				c.transform.position = RandSpawn.transform.position;
			}
		}
	}
}
