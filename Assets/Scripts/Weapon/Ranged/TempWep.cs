using UnityEngine;
using System.Collections;
using System;

public class TempWep : Ranged {

    public GameObject bullet;

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public override void primaryAttack()
    {
        GameObject clone = Instantiate(bullet, gameObject.transform.position, gameObject.transform.rotation) as GameObject;
    }

    public override void secondaryAttack()
    {
        
    }
}
