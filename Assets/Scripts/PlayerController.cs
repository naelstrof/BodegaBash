using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public Rigidbody body;
	public float speed { get; set; }
    public float topSpeed;
	public float walkingSpeed;
	public float turningSpeed;
	public float accel;
	public float fullJumpImpulse = 100;
	public float shortJumpImpulse = 10;
	public float jumpSquatTime = 5f / 60f;
	public float airControl;
	public Vector3 hitNormal{ get; set; }

    private PlayerState currentState;
    private PlayerState newState;

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
		Debug.DrawRay(transform.position,new Vector3 (0, -1, 0)*1,Color.green,1.5f,false);
		if (Physics.Raycast (transform.position, new Vector3 (0, -1, 0), out hit, 1.5f)) {
			hitNormal = hit.normal;
			onGround = true;
		} else {
			hitNormal = new Vector3 (0, 1, 0);
			onGround = false;
		}

        if (newState != null)
        {
            currentState.End(this);
            currentState = newState;
            currentState.Start(this);
            newState = null;
        }
        currentState.Update(this);
	}

	public bool onGround;

    public void SwitchState(PlayerState ps)
    {
        newState = ps;
    }
}
