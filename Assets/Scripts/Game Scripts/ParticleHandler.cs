using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleHandler : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

	public static void SpawnDust( PlayerController player, string dustState, Vector3 dustRotation ) {
		float sizeMultiplier = 0.5f;
		float startSpeed = 20f;
		var dustOrigin = new Vector3(player.origin.position.x, player.origin.position.y - 1.1f, player.origin.position.z);
		if (dustState == "landing") {
			sizeMultiplier = Clamp (Mathf.Abs (player.currSpeed.y), 0.5f, 20) * 0.05f;
			startSpeed = Clamp (Mathf.Abs (player.currSpeed.y), 1, 50);
		}
		else if (dustState == "jumping")
			sizeMultiplier = 0.5f;

		ParticleSystem jumpdust = UnityEngine.Object.Instantiate(player.JumpDust, dustOrigin, Quaternion.LookRotation(dustRotation));
		var jumpdustMain = jumpdust.main; 
		var jumpdustShape = jumpdust.shape;

		jumpdustMain.startSizeMultiplier = sizeMultiplier;
		jumpdustShape.radius = sizeMultiplier;
		jumpdustMain.startSpeed = startSpeed;
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
