using UnityEngine;
using System.Collections;

public class BunnyController : MonoBehaviour {

	public GameObject player;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 bunnypos = GetComponent<Transform> ().position;
		Vector3 playerpos = player.transform.position;
		GetComponent<UnityEngine.AI.NavMeshAgent> ().destination = (bunnypos - playerpos)*1.5f;
	}

	void OnCollisionEnter (Collision c) {
		Debug.Log ("Nice!");
		if (c.gameObject.tag == "Player")
			gameObject.SetActive (false);
	}
}
