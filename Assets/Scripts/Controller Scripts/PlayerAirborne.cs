using UnityEngine;
using System.Collections;

// Airborne state, if the player is in the air, he should be in this state.
public class PlayerAirborne : PlayerState {
	private Quaternion desiredRotation;
	public override void Start(PlayerController player)
	{
	}

	public override void Update(PlayerController player)
	{
		Vector3 old = player.body.velocity;
		// If the player is on the ground, we switch to an Idle state.
		// We also do some sanity checking with the old.y<=0, if we're 'airborne' but not moving up or down--
		// then we're probably actually on the ground and just can't tell.
		if (old.y <= 0 && player.onGround) {
			ParticleHandler.SpawnDust (player, "landing", player.origin.up);
			player.SwitchState (new PlayerIdle ());
		}
		float vert = Input.GetAxis("Vertical"+player.playerNum);
		float horz = Input.GetAxis("Horizontal"+player.playerNum);
		// If the player is inputting a direction, we rotate the player towards the angle they are holding.
		if (vert + horz != 0) {
			// Gotta transform the player input vector into camera coordinates.
			Vector3 temp = player.camera.transform.forward * vert + player.camera.transform.right * horz;
			temp.y = 0;
			// Quarternions have a sweet function just to generate themselves pointing in the desired direction.
			desiredRotation.SetLookRotation (temp);
			// Then we just smoothly rotate toward the desired rotation.
			player.transform.rotation = Quaternion.RotateTowards (player.transform.rotation, desiredRotation, 720*Time.deltaTime*temp.magnitude);
		}
		// This raytrace checks if there's something immediately in front of the player, 
		// and prevents him from "grabbing" a wall by thrusting themselves into it.
		RaycastHit hit;
		//Debug.DrawRay(player.origin.position,player.transform.forward,Color.red,0.7f,false);
		if (Physics.Raycast (player.origin.position, player.transform.forward, out hit, 0.7f)) {
		// We do an additional check to see if the player is trying to move at all, we accept joystick
		// or RUN button input here. The joystick does in fact control direction somewhat due
		// to the above rotation code.
		} else if ( vert+horz != 0 || Input.GetAxis("Run"+player.playerNum) > 0 ) {
			Vector3 desiredvel = player.transform.forward * player.speed;
			if (Vector3.Dot (player.body.velocity.normalized, desiredvel.normalized) < 0.65f) {
				player.body.velocity += desiredvel * Time.deltaTime * 1.3f;
			}
		}
	}

	public override void End(PlayerController player)
	{
	}
		
}
