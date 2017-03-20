using UnityEngine;
using System.Collections;

public class PlayerIdle : PlayerState {

    public override void Start (PlayerController player)
    {
	}

    public override void Update (PlayerController player)
    {
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetAxis("Run"+player.playerNum) > 0) {
			player.SwitchState (new PlayerRun());
		}
		float vert = Input.GetAxis("Vertical"+player.playerNum);
		float horz = Input.GetAxis("Horizontal"+player.playerNum);
        if (vert + horz != 0)
            player.SwitchState(new PlayerWalk());
		
		if (Input.GetButton ("Jump"+player.playerNum) && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
    }

    public override void End(PlayerController player)
    {

    }
}
