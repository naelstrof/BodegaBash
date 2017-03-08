using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	public Rigidbody followObject;
	public Vector3 offset = new Vector3(-6f,3f,-6f);
	public Vector3 lookOffset = new Vector3(0f,1.5f,0f);
	private PlayerController player;
	private Vector3 desiredPos;
	void Start() {
		followObject.interpolation = RigidbodyInterpolation.Interpolate;
		player = followObject.GetComponent<PlayerController> ();
	}
	void Update () {
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

		transform.position = transform.position+(desiredPos - transform.position) * Time.deltaTime * 3;

		var targetRotation = Quaternion.LookRotation(followObject.transform.position - transform.position + lookOffset);
		transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, 5 * Time.deltaTime);
	}
}
