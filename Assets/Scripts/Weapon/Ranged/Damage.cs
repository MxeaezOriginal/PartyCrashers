using UnityEngine;
using System.Collections;

public class Damage : MonoBehaviour {

    private float damage;

    // call enemy health script
    
    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Enemy" || other.tag == "MeleeEnemy")
        {
            // substract damage from enemy health script
        }
    }
	
	
}
