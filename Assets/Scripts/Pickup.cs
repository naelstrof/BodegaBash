using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickup : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter (Collision c) {
		Debug.Log ("hitting");
		if (c.gameObject.tag == "Player") {
			PlayerController p = c.gameObject.GetComponentInChildren<PlayerController>();
			Globals.playerScore [p.playerNum] += 10;
			gameObject.SetActive (false);
		}
	}
}
