using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickup : MonoBehaviour {

    public int ID;
	public ParticleSystem pickupParticles;
	private GameObject Target;
	private float SpeedUp;
	private float cooldown = 2f;
	// Use this for initialization
	void Start () {
		cooldown = 2f;
	}

	void HitPlayer( PlayerController p ) {
		Globals.playerChars [p.playerNum].AddToCart (ID);
		gameObject.SetActive (false);
		Destroy (this);
	}
	// Update is called once per frame
	void Update () {
		cooldown -= Time.deltaTime;
        gameObject.transform.position += new Vector3(0f, 0.01f * Mathf.Sin(Time.time), 0f);
        gameObject.transform.Rotate(Vector3.up, 1.5f);
    }
	void OnCollisionEnter(Collision collision)
	{
		if (cooldown > 0) {
			return;
		}
		if (collision.gameObject.tag == "Player") {
			Debug.Log ("HIT" + cooldown);
			PlayerController p = collision.gameObject.GetComponentInChildren<PlayerController> ();
			HitPlayer (p);
		}
	}
	void OnTriggerEnter (Collider c) {
		if (c.gameObject.tag == "Player") {
			Target = c.gameObject;
			SpeedUp = 1;
		}
	}
	void OnTriggerStay( Collider c ) {
		if (cooldown > 0) {
			return;
		}
		if (c.gameObject.tag == "Player") {
			transform.position += (Target.transform.position - transform.position) * Time.deltaTime * SpeedUp;
			SpeedUp += Time.deltaTime * 5;
			if (Vector3.Distance (transform.position, Target.transform.position) < 0.8f) {
				Debug.Log ("picking up item #" + ID);
				ParticleHandler.SpawnSparkles (gameObject, pickupParticles);
				if (c.gameObject.tag == "Player") {
					PlayerController p = c.gameObject.GetComponentInChildren<PlayerController> ();
					HitPlayer (p);
				}
			}
		}
	}
}
