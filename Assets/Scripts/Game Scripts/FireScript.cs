using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireScript : MonoBehaviour {

    PlayerController player;
    new SphereCollider collider; // ???

	// Use this for initialization
	void Start () {
        collider = GetComponent<SphereCollider>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        // scale the flame's X and Z
        transform.localScale += new Vector3(0.001f, 0, 0.001f);
        // scale the collider's X and Z
        collider.transform.localScale += new Vector3(0.001f, 0, 0.001f);
	}

    void OnCollisionStay(Collision c)
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
