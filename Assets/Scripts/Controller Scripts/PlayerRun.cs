using UnityEngine;
using System.Collections;

public class PlayerRun : PlayerState
{


	public override void Start(PlayerController player)
	{
		player.speed = player.currSpeed.magnitude;
	}

	public override void Update(PlayerController player)
	{
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButton ("Jump"+player.playerNum) && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
		if (Input.GetAxis("Run"+player.playerNum) <= 0) {
			player.SwitchState (new PlayerIdle());
		}
		player.speed = Mathf.Clamp (player.speed + player.accel * Input.GetAxis("Run"+player.playerNum), 0, player.topSpeed);
		RaycastHit hit;
		//Debug.DrawRay(player.origin.position,player.origin.forward,Color.red,0.7f,false);
		if (Physics.Raycast (player.origin.position, player.origin.forward, out hit, 0.7f)) {
			if (player.currSpeed.magnitude >= player.topSpeed-10) {
				player.SwitchState (new PlayerHurt (hit.normal * 20 + new Vector3(0,5,0)));
			}
		}
		//float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal"+player.playerNum);
		player.transform.Rotate (new Vector3 (0, horz*player.turningSpeed, 0));
		Vector3 old = player.body.velocity;
		if (player.onGround) {
			player.body.velocity = player.transform.forward * player.speed + new Vector3 (0, old.y, 0);
		} else {
			Vector3 desiredvel = player.transform.forward * player.speed + new Vector3 (0, old.y, 0);
			player.body.velocity = desiredvel * player.airControl + old * (1 - player.airControl);
		}
	}

	public override void End(PlayerController player)
	{

	}
}

