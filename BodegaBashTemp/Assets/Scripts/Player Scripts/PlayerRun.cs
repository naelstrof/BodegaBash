﻿using UnityEngine;
using System.Collections;

public class PlayerRun : PlayerState
{


	public override void Start(PlayerController player)
	{
		player.speed = 0;
	}

	public override void Update(PlayerController player)
	{
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButton ("Jump") && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
		if (Input.GetAxis("Run") == 0) {
			player.SwitchState (new PlayerIdle());
		}
		player.speed = Mathf.Clamp (player.speed + player.accel * Input.GetAxis("Run"), 0, player.topSpeed);
		RaycastHit hit;
		Debug.DrawRay(player.body.transform.position,player.body.transform.forward,Color.red,1f,false);
		if (Physics.Raycast (player.body.transform.position, player.body.transform.forward, out hit, 1f)) {
			if (player.body.velocity.magnitude >= player.topSpeed) {
				player.SwitchState (new PlayerHurt (hit.normal * 15 + new Vector3(0,5,0)));
			}
		}
		//float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal");
		player.body.transform.Rotate (new Vector3 (0, horz*player.turningSpeed, 0));
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

