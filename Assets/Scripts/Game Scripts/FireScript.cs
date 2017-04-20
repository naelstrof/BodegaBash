using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireScript : MonoBehaviour {

    PlayerController player;
    BoxCollider boxcollider; // ???
    float growth = 0.02f;

	// Use this for initialization
	void Start () {
        boxcollider = GetComponent<BoxCollider>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        // scale the flame's X and Z
        transform.localScale += new Vector3(growth, 0, growth);
        // scale the collider's X and Z
        boxcollider.transform.localScale += new Vector3(growth, 0, growth);
	}

    void OnTriggerStay(Collider c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.TakeDamage(1);         // take slight damage regardless of fire supplies
            if (!player.character.ConsumeA(1))      // if the player is out of fire supplies,
                player.character.TakeDamage(5);     //   then inflict heavy damage over time            
        }

    }

    // would be cool to have an "interact" method that allows a player to douse the fire and half its size
}
