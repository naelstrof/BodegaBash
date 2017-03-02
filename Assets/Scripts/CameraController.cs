using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	public GameObject followObject;
	public Vector3 offset = new Vector3(-6f,3f,-6f);
	public Vector3 lookOffset = new Vector3(0f,1.5f,0f);
	private PlayerController player;
	private Vector3 desiredPos;
	void Start() {
		player = followObject.GetComponent<PlayerController> ();
	}
	void FixedUpdate () {
		if (player.currSpeed.magnitude <= 0 || player.GetStateType() == typeof(PlayerWalk) || player.GetStateType() == typeof(PlayerIdle) ) {
			Vector3 newOffset = offset;
			newOffset.Scale (followObject.transform.forward);
			newOffset.y = offset.y;
			desiredPos = followObject.transform.position + newOffset;
		} else {
			Vector3 newOffset = offset;
			Vector3 careVel = player.body.velocity;
			careVel.y = 0;
			newOffset.Scale (careVel.normalized);
			newOffset.y = offset.y;
			desiredPos = followObject.transform.position + newOffset;
		}
		transform.position = transform.position+(desiredPos - transform.position) * Time.deltaTime * 4;
		transform.LookAt (followObject.transform.position + lookOffset);
	}
}
