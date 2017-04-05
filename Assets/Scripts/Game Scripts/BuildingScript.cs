using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingScript : MonoBehaviour
{

    PlayerController player;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // move the building downward and foward
        transform.Translate(new Vector3(1, -1, 0) * 0.1f, Space.World);
        transform.Rotate(new Vector3(0, 0, -1) * 0.01f, Space.World);
    }

    void OnCollisionEnter(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            Debug.Log("enter");
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.underwater = true;
        }
    }

    void OnCollisionStay(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            Debug.Log("stay");
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.timeUnderwater++;
            if (!player.character.ConsumeA(1))      // if the player is out of floatation supplies,
                player.character.TakeDamage(2);     //   then inflict moderate damage over time            
        }
    }

    void OnCollisionExit(Collision c)
    {
        if (c.gameObject.tag == "Player")
        {
            Debug.Log("exit");
            player = c.gameObject.GetComponent<PlayerController>();
            player.character.underwater = false;
        }
    }
}
