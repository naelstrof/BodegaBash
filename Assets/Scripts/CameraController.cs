using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	public Rigidbody followObject;
	public Vector3 offset = new Vector3(-6f,3f,-6f);
	public Vector3 lookOffset = new Vector3(0f,1.5f,0f);
	private PlayerController player;
	private Vector3 desiredPos;
	private int playerCount;
	private Camera cam;
	void Start() {
		playerCount = GameObject.FindGameObjectsWithTag("Player").Length;
		followObject.interpolation = RigidbodyInterpolation.Interpolate;
		player = followObject.GetComponent<PlayerController> ();
		cam = this.GetComponent<Camera> ();

		switch (player.playerNum) {
		case "1":
			{
				switch (playerCount) {
				case 3:
				case 2:
					{
						cam.rect = new Rect (0, 0f, .5f, 1f);
						break;
					}
				case 4:
					{
						cam.rect = new Rect (0, 0f, .5f, .5f);
						break;
					}
				default:
					{
						cam.rect = new Rect (0, 0f, 1f, 1f);
						break;
					}
				}
				break;
			}
		case "2":
			{
				switch (playerCount) {
				case 2:
					{
						cam.rect = new Rect (0.5f, 0f, .5f, 1f);
						break;
					}
				case 3:
				case 4:
					{
						cam.rect = new Rect (0.5f, 0.5f, .5f, .5f);
						break;
					}
				}
				break;
			}
		case "3":
			{
				cam.rect = new Rect (0.5f, 0f, .5f, .5f);
				break;
			}
		case "4":
			{
				cam.rect = new Rect (0f, 0.5f, .5f, .5f);
				break;
			}
		}
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
