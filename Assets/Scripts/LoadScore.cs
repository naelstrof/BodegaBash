using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LoadScore : MonoBehaviour {

    public int playernum;

	// Use this for initialization
	void Start () {

        int normalNum = playernum + 1;
        Text text = GetComponentInChildren<Text>();

        if (Globals.Shopping)
            if (normalNum <= Globals.playerCount)
                text.text = "Player " + normalNum + " score: " + Globals.shoppingScores[playernum];
            else
                text.text = "";
        else
            if (normalNum <= Globals.playerCount)
                text.text = "Player " + normalNum + " score: " + Globals.minigameScores[playernum];
            else
                text.text = "";

    }
	
	// Update is called once per frame
	void Update () {
		
	}
}