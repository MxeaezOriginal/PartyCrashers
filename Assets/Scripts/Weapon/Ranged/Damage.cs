using UnityEngine;
using System.Collections;

public class Damage : MonoBehaviour {

    [HideInInspector]
    public float bulletDamage;

    Bow bow;
    // call enemy health script
    
    void Start()
    {
        bulletDamage = GameObject.Find("WaterBalloonBomb").GetComponent<Bow>().bulletDamage;
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Enemy" || other.tag == "MeleeEnemy")
        {
            // substract damage from enemy health script
        }
    }
	
	
}
