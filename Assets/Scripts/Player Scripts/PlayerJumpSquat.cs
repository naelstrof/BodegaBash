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
		float horz = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");
		direction = new Vector3 (horz, 1, vert);
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
		UnityEngine.Object.Instantiate(player.JumpDust, player.origin.position, Quaternion.LookRotation(player.transform.up));
		Vector3 old = player.body.velocity;
		if (time > player.jumpSquatTime) {
			Vector3 jumpdir = new Vector3 (1, player.fullJumpImpulse, 1);
			direction *= player.jumpInfluence;
			direction.y = 1;
			jumpdir.Scale (direction);
			player.body.velocity = old + jumpdir;
		} else {
			Vector3 jumpdir = new Vector3 (1, player.shortJumpImpulse, 1);
			direction *= player.jumpInfluence;
			direction.y = 1;
			jumpdir.Scale (direction);
			player.body.velocity = old + jumpdir;
		}
	}
}
