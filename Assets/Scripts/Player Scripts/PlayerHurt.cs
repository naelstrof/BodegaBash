using UnityEngine;
using System.Collections;

public class PlayerHurt : PlayerState {
	private float timer;
	private float hurtTime = 1f;
	private Vector3 impulse;

	public PlayerHurt( Vector3 impulse ) {
		this.impulse = impulse;
	}

    public override void Start (PlayerController player)
    {
		player.body.constraints = RigidbodyConstraints.None;
		player.body.velocity = player.body.velocity + impulse;
		player.body.angularVelocity = -player.origin.right*10;
	}

    public override void Update (PlayerController player)
    {
		timer += Time.deltaTime;
		if (timer > hurtTime) {
			player.SwitchState (new PlayerIdle ());
		}
    }

    public override void End(PlayerController player)
    {
		player.body.constraints = RigidbodyConstraints.FreezeRotation;
		player.transform.eulerAngles = new Vector3 (0, 0, 0);
		player.transform.position += new Vector3 (0, 0.5f, 0);
    }
}
