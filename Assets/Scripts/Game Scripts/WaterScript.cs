using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterScript : MonoBehaviour {

    PlayerController player;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        // move the water plane
        transform.Translate(new Vector3(0, 0.01f, 0), Space.World);
    }

    void OnCollisionStay(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.timeUnderwater++; 
            if (!player.character.ConsumeA(1))      // if the player is out of floatation supplies,
                player.character.TakeDamage(2);     //   then inflict moderate damage over time            
        }

    }

}
