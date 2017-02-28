﻿using UnityEngine;
using System.Collections;

public class PlayerIdle : PlayerState {
	private bool neutralReset;

    public override void Start (PlayerController player)
    {
		neutralReset = false;
	}

    public override void Update (PlayerController player)
    {
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetAxis("Run") != 0) {
			player.SwitchState (new PlayerRun());
		}
        float vert = Input.GetAxis("Vertical");
        float horz = Input.GetAxis("Horizontal");
		if (Mathf.Abs(horz) < 0.5) {
			neutralReset = true;
		}
        if (vert + horz != 0 && neutralReset)
            player.SwitchState(new PlayerWalk());
		
		if (Input.GetButton ("Jump") && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
    }

    public override void End(PlayerController player)
    {

    }
}