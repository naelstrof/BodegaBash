using UnityEngine;
using System.Collections;

public class PlayerAirborne : PlayerState {
	private Quaternion desiredRotation;
	public override void Start(PlayerController player)
	{
	}

	public override void Update(PlayerController player)
	{
		Vector3 old = player.body.velocity;
		if (old.y <= 0 && player.onGround) {
			UnityEngine.Object.Instantiate(player.JumpDust, player.origin.position, Quaternion.LookRotation(player.origin.up));
			player.SwitchState (new PlayerIdle ());
		}
		float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal");
		//player.origin.Rotate (new Vector3 (0, horz*player.turningSpeed*player.airControl, 0));
		if (vert + horz != 0) {
			Vector3 temp = player.camera.transform.forward * vert + player.camera.transform.right * horz;
			temp.y = 0;
			desiredRotation.SetLookRotation (temp);
			player.transform.rotation = Quaternion.RotateTowards (player.transform.rotation, desiredRotation, 360*Time.deltaTime*temp.magnitude);
			//player.origin.LookAt (player.origin.position + temp);
		} else {
			/*Vector3 temp = player.body.velocity;
			temp.y = 0;
			if (temp.normalized.magnitude < 1) {
				desiredRotation.SetLookRotation (temp.normalized);
			} else {
				desiredRotation = player.transform.rotation;
			}*/
			player.transform.rotation = Quaternion.RotateTowards (player.transform.rotation, desiredRotation, 360*Time.deltaTime);
			//player.origin.LookAt (player.origin.position + temp.normalized);
		}
		RaycastHit hit;
		Debug.DrawRay(player.origin.position,player.transform.forward,Color.red,0.7f,false);
		if (Physics.Raycast (player.origin.position, player.transform.forward, out hit, 0.7f)) {
			//Vector3 tempVel = player.currSpeed;
			//tempVel.y = 0;
			//if (tempVel.magnitude >= player.topSpeed - 1) {
			//player.SwitchState (new PlayerHurt (hit.normal * 20 + new Vector3 (0, 8, 0)));
			//}
		} else if ( vert+horz != 0 || Input.GetAxis("Run") != 0 ) {
			Vector3 desiredvel = player.transform.forward * player.speed;
			if (Vector3.Dot (player.body.velocity.normalized, desiredvel.normalized) < 0.65f) {
				player.body.velocity += desiredvel * Time.deltaTime * 1.3f;
			}
		}
	}

	public override void End(PlayerController player)
	{
	}
		
}
