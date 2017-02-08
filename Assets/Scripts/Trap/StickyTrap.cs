using UnityEngine;
using System.Collections;

public class StickyTrap : Trap {

    public float m_StuckTime;
    public GameObject m_effect;
    private PlayerController playerController;
    private EnemyAI m_EnemyAi;
    private EnemyEffect m_EnemyEffect;

    public void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            playerController = other.GetComponent<PlayerController>(); 
            if (m_CurrentCooldown <= Time.time - m_Cooldown || m_CurrentCooldown == 0)
            {
                if(m_effect != null)
                {
                    GameObject effect;
					effect = (GameObject)Instantiate(m_effect, other.transform.position, Random.rotation);  
					Destroy(effect, m_StuckTime);
                }
                //Debug.Log("Stuck");
                playerController.m_CantMove = true;
                m_CurrentCooldown = Time.time;
                StartCoroutine("getUnstuck");
            }
        }
        if (other.GetComponent<EnemyHealth>() != null)
        {
            EnemyAI m_EnemyAi = other.gameObject.GetComponent<EnemyAI>() ;
            EnemyEffect m_EnemyEffect = other.gameObject.GetComponent<EnemyEffect>();
            if (m_CurrentCooldown <= Time.time - m_Cooldown || m_CurrentCooldown == 0)
            {
                if (m_effect != null)
                {
                    GameObject effect;
                    effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
                    Destroy(effect, 3f);
                }
                // Trap cannot stun enemy
                //m_EnemyEffect.isStun = true;
                //Debug.Log(m_EnemyEffect.isStun);
                m_EnemyAi.agent.Stop();
                m_CurrentCooldown = Time.time;
                StartCoroutine(getUnstuck2());
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
    IEnumerator getUnstuck2()
    {
        yield return new WaitForSeconds(m_StuckTime);
        if (m_EnemyAi != null)
        {
            m_EnemyAi.agent.Resume();
            //m_EnemyEffect.isStun = false;
        }
        else
        {
            Debug.Log("Sticky Trap PlayerController value is null");
        }
    }

}
