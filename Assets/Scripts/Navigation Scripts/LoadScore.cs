using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LoadScore : MonoBehaviour {
	public int Playernum;
	// Use this for initialization
	void Start () {
		Text text = GetComponentInChildren<Text> ();
        text.text = "PLAYER SCORE: " + ScoreCalculator.TallyCart('T', Globals.playerChars[Playernum].Cart);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
