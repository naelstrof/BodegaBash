using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickup : MonoBehaviour {

    public int ID;
	public ParticleSystem pickupParticles;
	public AudioClip genitempick;
	private GameObject Target;
	private float SpeedUp;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        gameObject.transform.position += new Vector3(0f, 0.01f * Mathf.Sin(Time.time), 0f);
        gameObject.transform.Rotate(Vector3.up, 1.5f);
    }

	void OnTriggerEnter (Collider c) {
		Globals.SpawnSound (genitempick, transform.position);
		SpeedUp = 1;
		Target = c.gameObject;
	}
	void OnTriggerStay( Collider c ) {
		transform.position += (Target.transform.position - transform.position)*Time.deltaTime*SpeedUp;
		SpeedUp += Time.deltaTime*5;
		if (Vector3.Distance (transform.position, Target.transform.position) < 0.8f) {
			Debug.Log ("picking up item #" + ID);
			ParticleHandler.SpawnSparkles (gameObject, pickupParticles);
			if (c.gameObject.tag == "Player") {
				PlayerController p = c.gameObject.GetComponentInChildren<PlayerController>();
				Globals.playerChars[p.playerNum].AddToCart(ID);
				gameObject.SetActive (false);
			}
		}
	}
}
