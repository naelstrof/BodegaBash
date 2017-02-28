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
			player.SwitchState (new PlayerIdle ());
		}
		float horz = Input.GetAxis("Horizontal");
		player.body.transform.Rotate (new Vector3 (0, horz*player.turningSpeed*player.airControl, 0));
		if (Input.GetAxis ("Run") != 0) {
			Vector3 desiredvel = player.body.transform.forward * player.speed + new Vector3 (0, old.y, 0);
			player.body.velocity = desiredvel * 0.4f + old * 0.6f;
		}
	}

	public override void End(PlayerController player)
	{
	}
}
