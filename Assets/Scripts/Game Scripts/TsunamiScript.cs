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
        transform.Translate(Vector3.back * 0.25f, Space.World);
    }

    void OnTriggerEnter(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponent<PlayerController>();
            player.topSpeed *= 0.5f;
            player.accel *= 0.5f;
            player.airControl *= 0.5f;
            player.fullJumpImpulse *= 0.5f;
        }
    }

    void OnTriggerStay(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.timeUnderwater++; 
            if (!player.character.ConsumeA(1))      // if the player is out of floatation supplies,
                player.character.TakeDamage(2);     //   then inflict moderate damage over time            
        }
    }

    void OnTriggerExit(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponent<PlayerController>();
            player.topSpeed *= 2;
            player.accel *= 2;
            player.airControl *= 2;
            player.fullJumpImpulse *= 2;
        }
    }
}
