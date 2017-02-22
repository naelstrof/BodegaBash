using UnityEngine;
using System.Collections;

public class PlayerWalk : PlayerState
{


    public override void Start(PlayerController player)
    {

    }

    public override void Update(PlayerController player)
    {
		if (Input.GetAxis("Run") != 0) {
			player.SwitchState (new PlayerRun());
		}
        float vert = Input.GetAxis("Vertical");
        float horz = Input.GetAxis("Horizontal");
        if (vert + horz == 0)
            player.SwitchState(new PlayerIdle());
		Vector3 old = player.body.velocity;
		if (player.onGround) {
			player.body.velocity = player.body.transform.forward * vert * player.walkingSpeed + player.body.transform.right * -horz * player.walkingSpeed + new Vector3 (0, old.y, 0);
		}
    }

    public override void End(PlayerController player)
    {

    }
}
