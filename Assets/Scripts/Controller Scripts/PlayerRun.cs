using UnityEngine;
using System.Collections;

public class PlayerRun : PlayerState
{


	public override void Start(PlayerController player)
	{
		player.speed = player.currSpeed.magnitude;
	}

	public override void Update(PlayerController player)
	{
		float run = Input.GetAxis ("Run" + player.playerNum);
		float back = Input.GetAxis ("Back" + player.playerNum);
		if ( run < 0 ) { run = 0; }
		if (back < 0) {
			back = 0;
		}
		if (!player.onGround) {
			player.SwitchState (new PlayerAirborne ());
		}
		if (Input.GetButton ("Jump"+player.playerNum) && player.onGround) {
			player.SwitchState (new PlayerJumpSquat ());
		}
		if (run <= 0 && back <= 0) {
			player.SwitchState (new PlayerIdle());
		}
		if (back + run == 2) {
			if (player.speed != 0) {
				if (player.speed > 0) {
					player.speed -= player.accel;
					if (player.speed < 0) {
						player.speed = 0;
					}
				} else {
					player.speed += player.accel;
					if (player.speed > 0) {
						player.speed = 0;
					}
				}
			}
		} else {
			player.speed = Mathf.Clamp (player.speed + player.accel * run - player.accel * back, -player.topSpeed * back / 2f, player.topSpeed * run);
		}
		RaycastHit hit;
		//Debug.DrawRay(player.origin.position,player.origin.forward,Color.red,0.7f,false);
		if (Physics.Raycast (player.origin.position, player.origin.forward, out hit, 0.7f)) {
			if (hit.collider.gameObject.tag != "StoreItem") {
				if (player.currSpeed.magnitude >= player.topSpeed - 10) {
					player.SwitchState (new PlayerHurt (hit.normal * 20 + new Vector3 (0, 5, 0)));
				}
			}
		}
		//float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal"+player.playerNum);
		if (player.speed > 0) {
			player.transform.Rotate (new Vector3 (0, horz * player.turningSpeed * run, 0));
		} else {
			player.transform.Rotate (new Vector3 (0, horz * player.turningSpeed * back, 0));
		}
		Vector3 old = player.body.velocity;
		player.body.velocity = player.transform.forward * player.speed + new Vector3 (0, old.y, 0);
	}

	public override void End(PlayerController player)
	{

	}
}

