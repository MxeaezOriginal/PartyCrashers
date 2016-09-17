using UnityEngine;
using System.Collections;

public class Sword : Melee {

    public int dashDistance = 25;

    public float dashDelay = 0.1f;

    PlayerController m_PlayerController;
    CharacterController m_CharacterController;

	// Use this for initialization
	void Start () {
        m_PlayerController = GetComponentInParent<PlayerController>();
        m_CharacterController = GetComponentInParent<CharacterController>();
    }
	
	// Update is called once per frame
	void Update () {
    }

    override public void primaryAttack()
    {
        m_CharacterController.Move(Vector3.forward * Time.deltaTime * 50f);
    }

    override public void secondaryAttack()
    {

    }

    IEnumerator dash()
    {
        yield return new WaitForSeconds(dashDelay);
        m_CharacterController.Move(Vector3.forward * Time.deltaTime * 10f);
    }
}
