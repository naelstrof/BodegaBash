using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TsunamiScript : MonoBehaviour {

    PlayerController player;
    Rigidbody body;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        // move the water plane
		transform.Translate(Vector3.forward * 0.15f, Space.World); // changed coeff from 0.25f
    }

	void OnTriggerEnter(Collider c)
    {
        if (c.gameObject.tag == "Player")
        {
			player = c.gameObject.GetComponentInChildren<PlayerController>();
            player.topSpeed *= 0.8f;        // changed from 0.7f
            player.accel *= 0.5f;           // changed from 0.1f
            player.airControl *= 0.7f;
            player.fullJumpImpulse *= 0.9f;
        }
    }

	void OnTriggerStay(Collider c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponentInChildren<PlayerController>();
            player.character.timeUnderwater++; 
            if (!player.character.ConsumeA(1))      // if the player is out of floatation supplies,
                player.character.TakeDamage(2);     //   then inflict moderate damage over time            
        }
    }

    void OnTriggerExit(Collider c)
    {
        if (c.gameObject.tag == "Player")
        {
			player = c.gameObject.GetComponentInChildren<PlayerController>();
            player.topSpeed *= 2;
            player.accel *= 2;
            player.airControl *= 2;
            player.fullJumpImpulse *= 2;
        }
    }
}
