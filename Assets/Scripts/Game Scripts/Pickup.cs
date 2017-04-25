using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickup : MonoBehaviour {

    public int ID;
	public ParticleSystem pickupParticles;
	public AudioClip genitempick;
	private GameObject Target;
	private float SpeedUp;
	private float cooldown = 2f;
	private Vector3 pos;
	// Use this for initialization
	void Start () {
		Target = null;
		pos = transform.position;
		cooldown = 2f;
	}

	void HitPlayer( PlayerController p ) {
		Globals.playerChars [p.playerNum].AddToCart (ID);
		ParticleHandler.SpawnSparkles (this.gameObject, pickupParticles);
		gameObject.SetActive (false);
		Destroy (this);
	}
	// Update is called once per frame
	void Update () {
		cooldown -= Time.deltaTime;
		Rigidbody r = this.GetComponent<Rigidbody> ();
		if (r == null && Target == null) {
			gameObject.transform.position = pos + new Vector3 (0f, Mathf.Sin (Time.time) + 0.5f, 0f);
		}
		if (r == null) {
			gameObject.transform.Rotate (Vector3.up, 1.5f);
		}
    }
	void OnCollisionEnter(Collision collision)
	{
		if (cooldown > 0) {
			return;
		}
		if (collision.gameObject.tag == "Player") {
			//Debug.Log ("HIT" + cooldown);
			Globals.SpawnSound (genitempick, collision.gameObject.transform.position);
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
		if (c.gameObject.tag == "Player" ) {
			if (Target == null) {
				Target = c.gameObject;
			}
			transform.position += (Target.transform.position - transform.position) * Time.deltaTime * SpeedUp;
			SpeedUp += Time.deltaTime * 5;
			if (Vector3.Distance (transform.position, Target.transform.position) < 0.8f) {
				Debug.Log ("picking up item #" + ID);
				if (c.gameObject.tag == "Player") {
					Globals.SpawnSound (genitempick, c.gameObject.transform.position);
					PlayerController p = c.gameObject.GetComponentInChildren<PlayerController> ();
					HitPlayer (p);
				}
			}
		}
	}
}
