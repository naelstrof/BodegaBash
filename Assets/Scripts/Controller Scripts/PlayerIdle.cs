using UnityEngine;
using System.Collections;

public class PlayerIdle : PlayerState {
	private float Timer;

    public override void Start (PlayerController player)
	{
		Timer = 0;
	}

    public override void Update (PlayerController player)
    {
		Timer += Time.deltaTime;
		if (Timer == 5) {
			Globals.SpawnSound (player.playerSigh, player.transform.position);
		}
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetAxis("Run"+player.playerNum) > 0 || Input.GetAxis("Back"+player.playerNum) > 0) {
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
