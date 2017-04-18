using UnityEngine;
using System.Collections;

public class PlayerJumpSquat : PlayerState {
	private float time = 0;
	private Vector3 direction;
	public override void Start(PlayerController player)
	{
		//Globals.SpawnSound (player.jumpgrunt, player.transform.position);
	}

	public override void Update(PlayerController player)
	{
		time += Time.deltaTime;
		if (time > player.jumpSquatTime) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButtonUp("Jump"+player.playerNum)) {
			player.SwitchState (new PlayerAirborne ());
		}
	}

	public override void End(PlayerController player)
	{
		Globals.SpawnSound (player.jumpSound, player.transform.position);
		// Spawn a new jump dust object at the players feet
		ParticleHandler.SpawnDust (player, "jumping", player.origin.up);
		Vector3 old = player.body.velocity;
		// If the player held the button for the duration of the jump squat, we do a full jump
		if (time > player.jumpSquatTime) {
			Vector3 jumpdir = new Vector3 (0, player.fullJumpImpulse, 0);
			player.body.velocity = old + jumpdir;
		// Otherwise a short hop
		} else {
			Vector3 jumpdir = new Vector3 (0, player.shortJumpImpulse, 0);
			player.body.velocity = old + jumpdir;
		}
	}
}
