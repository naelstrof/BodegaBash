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
        // move the building foward
        transform.Translate(Vector3.right * 0.1f, Space.World);
    }

    void OnTriggerEnter(Collider c)
    {
        if (c.gameObject.tag == "Player")
            c.gameObject.GetComponent<PlayerController>().character.TakeDamage(99999);
    }
}
