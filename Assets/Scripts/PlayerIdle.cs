using UnityEngine;
using System.Collections;

public class PlayerIdle : PlayerState {


    public override void Start (PlayerController player)
    {

	}

    public override void Update (PlayerController player)
    {
		if (Input.GetAxis("Run") != 0) {
			player.SwitchState (new PlayerRun());
		}
        float vert = Input.GetAxis("Vertical");
        float horz = Input.GetAxis("Horizontal");
        if (vert + horz != 0)
            player.SwitchState(new PlayerWalk());
    }

    public override void End(PlayerController player)
    {

    }
}
