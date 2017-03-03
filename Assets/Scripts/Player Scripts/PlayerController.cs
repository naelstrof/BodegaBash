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
        currentState = new PlayerIdle();
	}

	// Update is called once per frame
	void Update ()
    {
		RaycastHit hit;
		Debug.DrawRay(origin.position,new Vector3 (0, -1, 0)*1,Color.green,1f,false);
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
		float vert = Input.GetAxis("Vertical");
		float horz = Input.GetAxis("Horizontal");
		if (vert + horz == 0 || currentState.GetType () != typeof(PlayerAirborne)) {
			lastTimeInNeutral = Time.time;
		}
		if ( ((Mathf.Abs (vert) >= 0.8f || Mathf.Abs (horz) >= 0.8f) && Time.time - lastTimeInNeutral < 10f/60f) && failWallJumpTimer <= 0  && currentState.GetType () == typeof(PlayerAirborne)) {
			wallJumpDirection = camera.transform.forward*vert + camera.transform.right*horz;
			wallJumping = 20f/60f;
			failWallJumpTimer = 40f / 60f;
		}
		if (wallJumping > 0) {
			wallJumping -= Time.deltaTime;
		} else if (failWallJumpTimer > 0) {
			failWallJumpTimer -= Time.deltaTime;
		}
		currSpeed = (transform.position - lastPosition)/Time.deltaTime;
		lastPosition = transform.position;
	}

	public void OnTriggerStay( Collider obj ) {
		if (currentState.GetType () == typeof(PlayerAirborne)) {
			if (wallJumping > 0) {
				wallJumping = 0;
				RaycastHit hit;
				if (Physics.Raycast(transform.position, (obj.transform.position - transform.position).normalized, out hit)) {
					Debug.Log ("A" + hit.normal);
					Debug.Log ("B" + wallJumpDirection);
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

	void FixedUpdate()
	{
	}
}
