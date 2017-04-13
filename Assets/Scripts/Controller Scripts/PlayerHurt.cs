using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerHurt : PlayerState {
	private float timer;
	private float hurtTime = 1f;
	private Vector3 impulse;

	public PlayerHurt( Vector3 impulse ) {
		this.impulse = impulse;
	}

    public override void Start (PlayerController player)
    {
		Globals.SpawnSound (player.cartSound, player.transform.position);
<<<<<<< HEAD
<<<<<<< HEAD
		if (player.character != null) {
			player.character.SpillItems (1);
		}
		UnityEngine.Object.Instantiate(player.apple, player.transform.position, Quaternion.identity);
=======
=======
>>>>>>> origin/master
		List<int> items = player.character.SpillItems(1);
		foreach( int i in items ) {
			GameObject item = UnityEngine.Object.Instantiate(player.apple, player.origin.transform.position+new Vector3(0,1f,0), Quaternion.identity);
			Rigidbody r = item.GetComponent<Rigidbody> ();
			r.velocity = new Vector3 (Random.Range (-20f, 20f), 10f, Random.Range (-20f, 20f));
		}
		Globals.SpawnSound (player.grunt, player.transform.position);
	
<<<<<<< HEAD
>>>>>>> origin/master
=======
>>>>>>> origin/master
		// Disable constraints.
		player.body.constraints = RigidbodyConstraints.None;
		// Force push
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
		// Enable constraints, reset position and rotation.
		player.body.constraints = RigidbodyConstraints.FreezeRotation;
		player.transform.eulerAngles = new Vector3 (0, 0, 0);
		player.transform.position += new Vector3 (0, 0.5f, 0);
    }
}
