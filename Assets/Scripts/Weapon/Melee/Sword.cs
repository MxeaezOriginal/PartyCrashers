using UnityEngine;
using System.Collections;

public class Sword : Melee {

    public int dashDistance = 25;

    public float dashDelay = 0.1f;

    public float smooth = 20f;

    public static bool attack = false;

    //PlayerController m_PlayerController;
    CharacterController m_CharacterController;

	// Use this for initialization
	void Start () {
        //m_PlayerController = GetComponentInParent<PlayerController>();
        m_CharacterController = GetComponentInParent<CharacterController>();
    }
	
	// Update is called once per frame
	void Update () {
    }

    override public void primaryAttack()
    {
        attack = true;
        if (attack == true)
            {
            Quaternion newRotation = new Quaternion(transform.rotation.x, transform.rotation.y, transform.rotation.z, transform.rotation.w); ;
            newRotation *= Quaternion.Euler(90, 0, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, 10 * Time.deltaTime);
            Debug.Log("primary");
            attack = false;
        }
    }

    override public void secondaryAttack()
    {
        m_CharacterController.Move(Vector3.forward * Time.deltaTime * 50f);
    }

    IEnumerator dash()
    {
        yield return new WaitForSeconds(dashDelay);
        m_CharacterController.Move(Vector3.forward * Time.deltaTime * 10f);
    }
}
