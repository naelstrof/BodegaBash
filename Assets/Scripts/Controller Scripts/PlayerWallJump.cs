using UnityEngine;
using System.Collections;

public class PlayerWallJump : PlayerState {
	private float time = 0;
	private Vector3 direction;
	private Vector3 normal;

	public PlayerWallJump( Vector3 normal ) {
		this.normal = normal;
	}

	public override void Start(PlayerController player)
	{
		Globals.SpawnSound (player.jumpgrunt, player.transform.position);
		normal.y = 0;
		player.transform.rotation = Quaternion.LookRotation (normal);
		player.body.constraints = RigidbodyConstraints.FreezeAll;
		time = 0;
	}

	public override void Update(PlayerController player)
	{
		float horz = Input.GetAxis("Horizontal"+player.playerNum);
		float vert = Input.GetAxis("Vertical"+player.playerNum);
		direction = new Vector3 (horz, 1, vert);
		time += Time.deltaTime;
		if (time > player.jumpSquatTime*1.5) {
			player.SwitchState (new PlayerAirborne ());
		}
	}

	public override void End(PlayerController player)
	{
		Globals.SpawnSound (player.jumpSound, player.transform.position);
		player.body.constraints = RigidbodyConstraints.FreezeRotation;
		direction.Scale (normal);
		ParticleHandler.SpawnDust (player, "jumping", normal);
		normal.y = 1;
		player.body.velocity = normal*player.fullJumpImpulse;
	}
}
