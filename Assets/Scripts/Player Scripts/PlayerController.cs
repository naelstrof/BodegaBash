using UnityEngine;
using System.Collections;
using System;

public class PlayerController : MonoBehaviour {

    public Rigidbody body;
	public Transform origin;
	public float speed { get; set; }
    public float topSpeed;
	public float walkingSpeed;
	public float turningSpeed;
	public float accel;
	public float jumpInfluence;
	public float fullJumpImpulse = 16;
	public float shortJumpImpulse = 8;
	public float jumpSquatTime = 7f / 60f;
	public float airControl = 2;
	public string playerNum = "1";
	public new GameObject camera;
	public ParticleSystem JumpDust;

	public bool onGround{ get; set; }
	public Vector3 hitNormal{ get; set; }
	public Vector3 currSpeed{ get; set; }
	private Vector3 wallJumpDirection{ get; set; }

	private float wallJumping;
	private float failWallJumpTimer;
	private float lastTimeInNeutral;
	private Vector3 prevPos;
    private PlayerState currentState;
    private PlayerState newState;
	private Vector3 lastPosition;

	// Use this for initialization
	void Start ()
    {
		body = GetComponent<Rigidbody>();
		body.interpolation = RigidbodyInterpolation.Interpolate;
        currentState = new PlayerIdle();
	}

	// Update is called once per frame
	void FixedUpdate ()
    {
		// We use a spherecast, which is like a "Fat" raytrace to see if we're hitting the ground.
		RaycastHit hit;
		//Debug.DrawRay(origin.position,new Vector3 (0, -1, 0)*1,Color.green,1f,false);
		if (Physics.SphereCast (origin.position, .5f, -transform.up, out hit, 1f)) {
			hitNormal = hit.normal;
			onGround = true;
		} else {
			hitNormal = new Vector3 (0, 1, 0);
			onGround = false;
		}
		if (!onGround && body.velocity.y == 0) {
			onGround = true;
		}

        if (newState != null)
        {
            currentState.End(this);
            currentState = newState;
            currentState.Start(this);
            newState = null;
        }
        currentState.Update(this);

		// Here's some wall-jumping logic below.
		float vert = Input.GetAxis("Vertical"+playerNum);
		float horz = Input.GetAxis("Horizontal"+playerNum);
		// We record the last time the player had the stick in neutral,
		// so that it's easier to record a joystick flick.
		if (vert + horz == 0) {
			lastTimeInNeutral = Time.time;
		}
		// Checking if the stick is now fully flicked, and the last time we were in neutral was less than 1/6th of a second ago, we're not currently in a walljump failure state, and we are in mid-air...
		if ( ((Mathf.Abs (vert) >= 0.8f || Mathf.Abs (horz) >= 0.8f) && Time.time - lastTimeInNeutral < 7f/60f) && failWallJumpTimer <= 0  && currentState.GetType () == typeof(PlayerAirborne)) {
			// We record the walljump direction, after converting the vector into camera space coordinates
			wallJumpDirection = camera.transform.forward*vert + camera.transform.right*horz;
			// This is how long the game will check for a wall jump
			wallJumping = 20f/60f;
			// This is the wall jump cooldown, after failing a walljump.
			failWallJumpTimer = 40f / 60f;
		}
		if (wallJumping > 0) {
			wallJumping -= Time.deltaTime;
		} else if (failWallJumpTimer > 0) {
			failWallJumpTimer -= Time.deltaTime;
		}

		// Since the physics simulation doesn't like us setting velocity directly, we
		// separately keep track of our actual velocity ourselves.
		currSpeed = (transform.position - lastPosition)/Time.deltaTime;
		lastPosition = transform.position;
	}

	// This function is called automatically whenever something is within the trigger.
	// In particular, if there's a wall near a player this code will execute.
	public void OnTriggerStay( Collider obj ) {
		// We only care about this if we're in midair.
		if (currentState.GetType () == typeof(PlayerAirborne)) {
			// If a wall jump has actually been triggered.
			if (wallJumping > 0) {
				wallJumping = 0;
				RaycastHit hit;
				// We quickly cast a ray, hoping that it'd hit the wall to give us a normal.
				if (Physics.Raycast(transform.position, (obj.transform.position - transform.position).normalized, out hit)) {
					// If the normal matches up with our wall jump direction, with a tolerance of 90 degrees, switch to the wall jump state.
					if (Mathf.Abs (hit.normal.y) < 0.3 && Vector3.Dot( hit.normal, wallJumpDirection) > 0) {
						SwitchState (new PlayerWallJump (hit.normal));
					}
				}
			}
		}
	}

    public void SwitchState(PlayerState ps)
    {
        newState = ps;
    }

	public Type GetStateType() {
		return currentState.GetType();
	}
}
