using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUDScript : MonoBehaviour {

    GameObject gameStarter;
    OnLoad gameScript;
    Text text;

    float startTime;
    float currentTime;
    float gameTimer;

	// Use this for initialization
	void Start () {

//        gameStarter = GameObject.FindGameObjectWithTag("GameStarter");
//        if (gameStarter == null)
//            Debug.Log("GAMESTARTER NULL");
//        gameScript = gameStarter.GetComponent<OnLoad>();
//        if (gameScript == null)
//            Debug.Log("GAMESCRIPT NULL");
//        text = GetComponentInChildren<Text>();
//        if (text == null)
//            Debug.Log("TEXT NULL");
//        startTime = Time.time;
//
//        if (Globals.Shopping)
//            gameTimer = Globals.shoppingTimer;
//        else
//            gameTimer = Globals.minigameTimer;
    }

    // Update is called once per frame
    void FixedUpdate () {

//        currentTime = Time.time;
//
//        text.text = "" + (int)(gameTimer - (currentTime - startTime)) + "s";

    }
}
