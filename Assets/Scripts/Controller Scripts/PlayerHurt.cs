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

		if (player.character != null) {

			List<int> items = player.character.SpillItems (3);
			GameObject item;
			foreach (int i in items) {
				switch (i) {
				case 11:
					item = UnityEngine.Object.Instantiate( player.freshProduce, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 12:
					item = UnityEngine.Object.Instantiate( player.beefJerky, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 13:
					item = UnityEngine.Object.Instantiate( player.driedFruit, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 21:
					item = UnityEngine.Object.Instantiate( player.painKillers, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 22:
					item = UnityEngine.Object.Instantiate( player.Bandages, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 23:
					item = UnityEngine.Object.Instantiate( player.FirstAidKit, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 31:
					item = UnityEngine.Object.Instantiate( player.Socks, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 32:
					item = UnityEngine.Object.Instantiate( player.Sweater, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 33:
					item = UnityEngine.Object.Instantiate( player.Jacket, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 41:
					item = UnityEngine.Object.Instantiate( player.WalkieTalkie, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 42:
					item = UnityEngine.Object.Instantiate( player.RadioSet, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 43:
					item = UnityEngine.Object.Instantiate( player.SatellitePhone, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 51:
					item = UnityEngine.Object.Instantiate( player.RechargableBatteries, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 52:
					item = UnityEngine.Object.Instantiate( player.Motor, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 53:
					item = UnityEngine.Object.Instantiate( player.Generator, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 61:
					item = UnityEngine.Object.Instantiate( player.Noodles, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 62:
					item = UnityEngine.Object.Instantiate( player.PoolTube, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 63:
					item = UnityEngine.Object.Instantiate( player.EmergencyRaft, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 71:
					item = UnityEngine.Object.Instantiate( player.FireBlanket, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 72:
					item = UnityEngine.Object.Instantiate( player.FireAxe, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 73:
					item = UnityEngine.Object.Instantiate( player.FireExtinguisher, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 81:
					item = UnityEngine.Object.Instantiate( player.MiniChemKit, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 82:
					item = UnityEngine.Object.Instantiate( player.MediumChemKit, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 83:
					item = UnityEngine.Object.Instantiate( player.JumboChemKit, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 91:
					item = UnityEngine.Object.Instantiate( player.KimWipes, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 92:
					item = UnityEngine.Object.Instantiate( player.SpillPad, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				case 93:
					item = UnityEngine.Object.Instantiate( player.ChemGone, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				default:
					item = UnityEngine.Object.Instantiate( player.ChemGone, player.origin.transform.position+new Vector3( 0, 1f, 0), Quaternion.identity);
					break;
				}
				Rigidbody r = item.AddComponent <Rigidbody>();
				item.AddComponent <SphereCollider>();
				r.velocity = new Vector3 (Random.Range (-20f, 20f), 10f, Random.Range (-20f, 20f));
			}
		}
		Globals.SpawnSound (player.grunt, player.transform.position);
	
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
