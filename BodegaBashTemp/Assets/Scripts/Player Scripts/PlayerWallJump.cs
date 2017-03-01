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
		normal.y = 0;
		player.body.transform.rotation = Quaternion.LookRotation (normal);
		player.body.constraints = RigidbodyConstraints.FreezeAll;
		time = 0;
	}

	public override void Update(PlayerController player)
	{
		float horz = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");
		direction = new Vector3 (horz, 1, vert);
		time += Time.deltaTime;
		if (time > player.jumpSquatTime*1.5) {
			player.SwitchState (new PlayerAirborne ());
		}
	}

	public override void End(PlayerController player)
	{
		player.body.constraints = RigidbodyConstraints.FreezeRotation;
		direction.Scale (normal);
		UnityEngine.Object.Instantiate(player.JumpDust, player.body.transform.position, Quaternion.LookRotation(normal));
		normal.y = 1;
		player.body.velocity = normal*player.fullJumpImpulse;
	}
}
