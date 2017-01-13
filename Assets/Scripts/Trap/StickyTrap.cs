using UnityEngine;
using System.Collections;

public class StickyTrap : Trap {

    public float m_StuckTime;
    public GameObject m_effect;
    private PlayerController playerController;
	// Use this for initialization
	void Start () {
    
    }
	
	// Update is called once per frame
	void Update () {
	
	}
    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            playerController = other.GetComponent<PlayerController>(); 
            if (m_CurrentCooldown <= Time.time - m_Cooldown || m_CurrentCooldown == 0)
            {
                if(m_effect != null)
                {
                    GameObject effect;
                    effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
                    Destroy(effect, 3f);
                }
                //Debug.Log("Stuck");

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
