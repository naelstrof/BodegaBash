using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingScript : MonoBehaviour
{

    PlayerController player;
    float move = 0.05f;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // move the building foward
        transform.Translate(Vector3.right * move, Space.World);
    }

    void OnTriggerEnter(Collider c)
    {
        if (c.gameObject.tag == "Player")
            c.gameObject.GetComponent<PlayerController>().character.InstaKill();
    }
}
