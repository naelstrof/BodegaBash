using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public Rigidbody body;
    public float speed;

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
        if (newState != null)
        {
            currentState.End(this);
            currentState = newState;
            currentState.Start(this);
            newState = null;
        }
        currentState.Update(this);
	}

    public void SwitchState(PlayerState ps)
    {
        newState = ps;
    }
}
