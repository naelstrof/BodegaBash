using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadOnClick : MonoBehaviour {



	public void LoadByIndex(int sceneIndex)
    {
        switch(sceneIndex)
        {
            case 789:
                Globals.Shopping = false;
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

    public void SetScenario(char disaster)
    {
        if ((disaster == 'T') || (disaster == 'E') || (disaster == 'C'))
            Globals.Scenario = disaster;
        else
            Debug.Log("ERROR :: invalid scenario code (must be in { T, E, C })");
    }

    public void SetPlayerCount( int num ) {
        switch(num)
        {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
		        Globals.playerCount = num;
                break;
            case 111:
                SetScenario('T');
                break;
            case 222:
                SetScenario('E');
                break;
            case 333:
                SetScenario('C');
                break;

        }
    }
}
