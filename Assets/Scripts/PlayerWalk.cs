using UnityEngine;
using System.Collections;

public class PlayerWalk : PlayerState
{


    public override void Start(PlayerController player)
    {

    }

    public override void Update(PlayerController player)
    {
        float vert = Input.GetAxis("Vertical");
        float horz = Input.GetAxis("Horizontal");
		Vector3 direction = new Vector3 (horz, 0, vert);
        if (vert + horz == 0)
            player.SwitchState(new PlayerIdle());
		Vector3 old = player.body.velocity;
		player.body.velocity = direction * player.speed + new Vector3( 0, old.y, 0 );
    }

    public override void End(PlayerController player)
    {

    }
}
