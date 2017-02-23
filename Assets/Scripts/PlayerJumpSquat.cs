using UnityEngine;
using System.Collections;

public class PlayerJumpSquat : PlayerState {
	private float time = 0;
	public override void Start(PlayerController player)
	{
	}

	public override void Update(PlayerController player)
	{
		time += Time.deltaTime;
		Debug.Log (time);
		if (time > player.jumpSquatTime) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButtonUp("Jump")) {
			player.SwitchState (new PlayerAirborne ());
		}
	}

	public override void End(PlayerController player)
	{
		Vector3 old = player.body.velocity;
		if (time > player.jumpSquatTime) {
			player.body.velocity = old + new Vector3 (0, player.fullJumpImpulse, 0);
		} else {
			player.body.velocity = old + new Vector3 (0, player.shortJumpImpulse, 0);
		}
	}
}
