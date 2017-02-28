using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	public GameObject followObject;
	public Vector3 offset;
	void Update () {
		Vector3 newOffset = offset;
		newOffset.Scale (followObject.transform.forward);
		newOffset.y = offset.y;
		transform.position = followObject.transform.position + newOffset;
		transform.LookAt (followObject.transform.position);
	}
}
