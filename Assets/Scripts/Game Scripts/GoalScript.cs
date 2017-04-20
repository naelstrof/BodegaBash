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

    void OnTriggerEnter(Collider c)
	{
		if (c.gameObject.tag == "Player") {
            PlayerController p = c.gameObject.GetComponent<PlayerController>();
            //Debug.Log ("P" + p.playerNum + "(" + (int)p.transform.position.x + ", " + (int)p.transform.position.y + ") at goal (" + (int)this.transform.position.x + ", " + (int)this.transform.position.y + ")");
            Globals.atGoal [c.gameObject.GetComponent<PlayerController> ().playerNum] = true;
		}
	}

    void OnTriggerExit(Collider c)
	{
		if (c.gameObject.tag == "Player") {
			//Debug.Log ("player " + c.gameObject.GetComponent<PlayerController> ().playerNum + " leaving goal");
			Globals.atGoal [c.gameObject.GetComponent<PlayerController> ().playerNum] = false;
		}
	}
}
