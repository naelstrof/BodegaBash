using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoalScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		
	}

    void OnCollisionEnter(Collision c)
    {
        if (c.gameObject.tag == "Player")
            Globals.atGoal[c.gameObject.GetComponent<PlayerController>().playerNum] = true;
    }

    void OnCollisionExit(Collision c)
    {
        if (c.gameObject.tag == "Player")
            Globals.atGoal[c.gameObject.GetComponent<PlayerController>().playerNum] = false;
    }
}
