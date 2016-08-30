using UnityEngine;
using System.Collections;

public class Sword : Melee {

    PlayerController m_Controller;

	// Use this for initialization
	void Start () {
        m_Controller = GetComponentInParent<PlayerController>();
	}
	
	// Update is called once per frame
	void Update () {
    }

    override public void primaryAttack()
    {

    }

    override public void secondaryAttack()
    {

    }
}
