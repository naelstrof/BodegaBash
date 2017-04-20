using UnityEngine;
using System.Collections;
using System;

public class PlayerController : MonoBehaviour {

    public PlayerCharacter character;     // preferrable to keeping two arrays in Globals?
                                          // EDIT: We could merge PlayerCharacter into PlayerController.
                                          //       Maybe just move the members over?

    public Rigidbody body;
	public Transform origin;
	public float speed { get; set; }
    public float topSpeed = 20;
	public float walkingSpeed = 8;
	public float turningSpeed;
	public float accel;
	public float jumpInfluence;
	public float fullJumpImpulse = 16;
	public float shortJumpImpulse = 8;
	public float jumpSquatTime = 7f / 60f;
	public float airControl = 2;
	public int playerNum;
	public new GameObject camera;
	public GameObject apple;
	public ParticleSystem JumpDust;
	//Sounds from here
	public AudioClip jumpSound;
	public AudioClip cartSound;
	public AudioClip playerSigh;
	public AudioClip grunt;
	public AudioClip breeze;
	public AudioClip jumpgrunt;
	public AudioClip footsteps;
	public AudioClip landing;
	//Animation
	private Animator animator;

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
        character = Globals.playerChars[playerNum];
		currSpeed = Vector3.zero;
        body = GetComponent<Rigidbody>();
		body.interpolation = RigidbodyInterpolation.Interpolate;
        currentState = new PlayerIdle();
		animator = GetComponent<Animator>();
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

		//Drive basic animations using the player's horizontal speed.
		animator.SetFloat("runSpeed", (Mathf.Abs(currSpeed.x)+Math.Abs(currSpeed.z)+0.1f)*0.1f);
	}

	public void OnTriggerEnter( Collider obj ) {
		// If we collided with a player
		if (obj.gameObject.tag == "Player" ) {
			// Try to determine who wins the "battle"
			PlayerController p1 = obj.gameObject.GetComponentInChildren<PlayerController>();
			PlayerController p2 = this;
			if (p2.GetStateType () == typeof(PlayerHurt)) {
				return;
			}
			if (p1.GetStateType () == typeof(PlayerHurt)) {
				return;
			}
		
			float p1score = p1.currSpeed.magnitude;
			float p2score = p2.currSpeed.magnitude;

			if (p1.GetStateType () == typeof(PlayerHurt)) {
				p1score = 0;
			}
				
			float wantedyaw = Quaternion.LookRotation(p2.transform.position-p1.transform.position).eulerAngles.y;
			float realyaw = p1.transform.eulerAngles.y;
			//Debug.Log (wantedyaw + " " + realyaw);
			p1score -= Mathf.Abs (wantedyaw - realyaw)/10f;
			p1score *= p1.character.weight;

			wantedyaw = Quaternion.LookRotation(p1.transform.position-p2.transform.position).eulerAngles.y;
			realyaw = p2.transform.eulerAngles.y;
			p2score -= Mathf.Abs (wantedyaw - realyaw)/10f;
			p2score *= p2.character.weight;
			if (p1score > p2score) {
				SwitchState (new PlayerHurt ((p1.currSpeed + new Vector3 (0, p1.currSpeed.magnitude, 0))*(float)(p1.character.weight)));
			} else {
				p1.SwitchState (new PlayerHurt ((p2.currSpeed + new Vector3 (0, p2.currSpeed.magnitude, 0))*(float)(p2.character.weight)));
			}
		}
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
