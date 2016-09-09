using UnityEngine;
using System.Collections;

public class StickyTrap : Trap {

    public float m_StuckTime;

    private PlayerController playerController;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public void OnTriggerStay(Collider other)
    {
        if (other.tag == "Player")
        {
            playerController = other.GetComponent<PlayerController>(); 
            if (m_Cooldown <= Time.time - m_Cooldown)
            {
                playerController.m_CantMove = true;

                m_CurrentCooldown = Time.time;
                StartCoroutine("getUnstuck");
            }
        }
    }

    IEnumerator getUnstuck()
    {
        yield return new WaitForSeconds(m_StuckTime);
        if(playerController != null)
        {
            playerController.m_CantMove = false;
        }
        else
        {
            Debug.Log("Sticky Trap PlayerController value is null");
        }
    }
}
