using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickup : MonoBehaviour {

    public int ID;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        gameObject.transform.position += new Vector3(0f, 0.01f * Mathf.Sin(Time.time), 0f);
        gameObject.transform.Rotate(Vector3.up, 1.5f);
    }

	void OnCollisionEnter (Collision c) {
		Debug.Log ("picking up item #" + ID);
		if (c.gameObject.tag == "Player") {
			PlayerController p = c.gameObject.GetComponentInChildren<PlayerController>();
            Globals.playerChars[p.playerNum].AddToCart(ID);
			gameObject.SetActive (false);
		}
	}
}
