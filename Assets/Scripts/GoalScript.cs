using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoalScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {

        string msg = "[";	
        for (int i = 0; i < Globals.atGoal.Length; i++)
            msg += ", " + Globals.atGoal[i];
        msg += "]";
        //Debug.Log(msg);

	}

    void OnTriggerEnter(Collider c)
	{
		if (c.gameObject.tag == "Player") {
			Debug.Log ("player " + c.gameObject.GetComponent<PlayerController> ().playerNum + " at goal");
			Globals.atGoal [c.gameObject.GetComponent<PlayerController> ().playerNum] = true;
		}
	}

    void OnTriggerExit(Collider c)
	{
		if (c.gameObject.tag == "Player") {
			Debug.Log ("player " + c.gameObject.GetComponent<PlayerController> ().playerNum + " leaving goal");
			Globals.atGoal [c.gameObject.GetComponent<PlayerController> ().playerNum] = false;
		}
	}
}
