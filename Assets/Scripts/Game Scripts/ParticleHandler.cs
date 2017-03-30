using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleHandler : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

	public static void SpawnDust( PlayerController player, string dustState, Vector3 dustRotation ) {
		float sizeMultiplier;
		if (dustState == "landing") 
			sizeMultiplier = Clamp(Mathf.Abs(player.currSpeed.y), 1, 20)*0.05f;
		else if (dustState == "jumping")
			sizeMultiplier = 0.5f;
		else
			sizeMultiplier = 0.5f;
		ParticleSystem jumpdust = UnityEngine.Object.Instantiate(player.JumpDust, player.origin.position, Quaternion.LookRotation(dustRotation));
		var jumpdustMain = jumpdust.main; 
		var jumpdustShape = jumpdust.shape;

		jumpdustMain.startSizeMultiplier = sizeMultiplier;
		jumpdustShape.radius = sizeMultiplier;
		//Debug.Log ("dustSize = " + sizeMultiplier);
	}

	public static float Clamp(float num, float min, float max){
		if (num < min)
			num = min;
		if (num > max)
			num = max;
		return num;
	}
}
