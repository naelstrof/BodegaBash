using UnityEngine;
using System.Collections;

public class PlayerJumpSquat : PlayerState {
	private float time = 0;
	private Vector3 direction;
	public override void Start(PlayerController player)
	{
	}

	public override void Update(PlayerController player)
	{
		time += Time.deltaTime;
		if (time > player.jumpSquatTime) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButtonUp("Jump")) {
			player.SwitchState (new PlayerAirborne ());
		}
	}

	public override void End(PlayerController player)
	{
		// Spawn a new jump dust object at the players feet
		UnityEngine.Object.Instantiate(player.JumpDust, player.origin.position, Quaternion.LookRotation(player.transform.up));
		Vector3 old = player.body.velocity;
		// If the player held the button for the duration of the jump squat, we do a full jump
		if (time > player.jumpSquatTime) {
			Vector3 jumpdir = new Vector3 (1, player.fullJumpImpulse, 1);
			player.body.velocity = old + jumpdir;
		// Otherwise a short hop
		} else {
			Vector3 jumpdir = new Vector3 (1, player.shortJumpImpulse, 1);
			player.body.velocity = old + jumpdir;
		}
	}
}
