﻿using UnityEngine;
using System.Collections;

public class PlayerWalk : PlayerState
{


    public override void Start(PlayerController player)
    {

    }

    public override void Update(PlayerController player)
    {
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButton ("Jump") && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
		if (Input.GetAxis("Run") != 0) {
			player.SwitchState (new PlayerRun());
		}

        float vert = Input.GetAxis("Vertical");
        float horz = Input.GetAxis("Horizontal");
        if (vert + horz == 0)
            player.SwitchState(new PlayerIdle());

		//Vector3 wantedAngle = new Vector3 (0, -Mathf.Atan2(vert,horz)*180/Mathf.PI+270, 0);
		if (player.onGround) {
			Vector3 test = player.body.velocity + (player.body.transform.forward * vert + player.body.transform.right * horz) * Time.deltaTime * player.accel * 100;
			if (test.magnitude < player.body.velocity.magnitude || test.magnitude < player.walkingSpeed) {
				player.body.velocity += (player.body.transform.forward * vert + player.body.transform.right * horz) * Time.deltaTime * player.accel * 100;
			}
		}
    }

    public override void End(PlayerController player)
    {

    }
}
