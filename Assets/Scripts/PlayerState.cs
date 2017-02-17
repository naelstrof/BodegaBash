using UnityEngine;
using System.Collections;

public abstract class PlayerState {

    public abstract void Start(PlayerController player);
    public abstract void Update(PlayerController player);
    public abstract void End(PlayerController player);
}
