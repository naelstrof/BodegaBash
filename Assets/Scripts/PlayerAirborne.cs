using UnityEngine;
using System.Collections;

public class PlayerAirborne : PlayerState {
	public override void Start(PlayerController player)
	{
	}

	public override void Update(PlayerController player)
	{
		Vector3 old = player.body.velocity;
		if (old.y <= 0 && player.onGround) {
			player.SwitchState (new PlayerWalk ());
		}
		float horz = Input.GetAxis("Horizontal");
		player.body.transform.Rotate (new Vector3 (0, horz*player.turningSpeed*player.airControl, 0));
	}

	public override void End(PlayerController player)
	{
	}
}
