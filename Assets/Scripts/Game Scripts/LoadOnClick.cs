using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadOnClick : MonoBehaviour {

	public void LoadByIndex(int sceneIndex)
    {
        switch(sceneIndex)
        {
            case 0:
                Globals.BBStartup = false;
                SceneManager.LoadScene(sceneIndex);
                break;
		case 789:
			Globals.Shopping = false;
			string scenario = "TE";
			string rsc = scenario [Random.Range (0, scenario.Length)].ToString();
			SetScenario (rsc);
                switch (Globals.Scenario)
                {
                    case 'T':
                        SceneManager.LoadScene(7);
                        break;
                    case 'E':
                        SceneManager.LoadScene(8);
                        break;
                    case 'C':
                        SceneManager.LoadScene(9);
                        break;
                }
                break;
            default:
                SceneManager.LoadScene(sceneIndex);
                break;
        }
	}

	public void LoadRandomMap() {
		int randMap = Random.Range (3, 6);
		SceneManager.LoadScene(randMap);
	}

    public void SetScenario(string disaster)
    {
		if ((disaster[0] == 'T') || (disaster[0] == 'E') || (disaster[0] == 'C'))
			Globals.Scenario = (char)disaster[0];
        else
            Debug.Log("ERROR :: invalid scenario code (must be { T, E, C })");
    }

    public void SetPlayerCount( int num ) {
        Globals.playerCount = num;
    }
}
