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
		GetComponent<NavMeshAgent> ().destination = bunnypos - playerpos;
	}
}
