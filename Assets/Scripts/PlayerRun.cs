using UnityEngine;
using System.Collections;

public class PlayerRun : PlayerState
{


	public override void Start(PlayerController player)
	{
		player.speed = 0;
	}

	public override void Update(PlayerController player)
	{
		if (Input.GetAxis("Run") == 0) {
			player.SwitchState (new PlayerIdle());
		}
		player.speed = Mathf.Clamp (player.speed + player.accel * Input.GetAxis("Run"), 0, player.topSpeed);
		float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal");
		player.body.transform.Rotate (new Vector3 (0, -horz*player.turningSpeed, 0));
		Vector3 old = player.body.velocity;
		if (player.onGround) {
			player.body.velocity = player.body.transform.forward * player.speed + new Vector3 (0, old.y, 0);
		} else {
			Vector3 desiredvel = player.body.transform.forward * player.speed + new Vector3 (0, old.y, 0);
			player.body.velocity = desiredvel * player.airControl + old * (1 - player.airControl);
		}
	}

	public override void End(PlayerController player)
	{

	}
}

