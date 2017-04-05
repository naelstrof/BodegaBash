using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VictimScript : MonoBehaviour
{

    PlayerCharacter player;
    public bool contaminated;
    public float aggroRange;

    // Use this for initialization
    void Start()
    {
        contaminated = false;
        aggroRange = 5f;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // when not contaminated, the victim does nothing
        if (contaminated)
        {
            Dictionary<Vector3, float> cands = new Dictionary<Vector3, float>();
            float minDist = float.MaxValue;
            Vector3 target = Vector3.zero;

            // get the position and distance of every player within the aggro range
            for (int i = 0; i < Globals.playerCount; i++)
                if (Vector3.Distance(Globals.playerControllers[i].origin.position, transform.position) < aggroRange)
                    cands.Add(Globals.playerControllers[i].origin.position, Vector3.Distance(Globals.playerControllers[i].origin.position, transform.position));

            // select the position of the closest player...
            foreach (KeyValuePair<Vector3, float> kvp in cands)
                if (kvp.Value < minDist)
                    target = kvp.Key;

            //   ...and move toward that player
            if (!target.Equals(Vector3.zero))
                GetComponent<UnityEngine.AI.NavMeshAgent>().destination = target;
        }
    }

    /// <summary>
    /// This should be called from the PlayerController script,
    /// in response to an Interaction input with this victim.
    /// </summary>
    /// <param name="_pNum"></param>
    void ReceiveAid(int _pNum)
    {
        // getcomponents (help icons) and SetActive(false)
        contaminated = false;
        Globals.playerChars[_pNum].aidGiven++;
    }

}
