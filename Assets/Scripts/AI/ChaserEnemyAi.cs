using UnityEngine;
using System.Collections;

public class ChaserEnemyAi : EnemyAI // Used to inherit from monobehaviour
{
    public float m_ChaseDist = 50;
    public float m_StopDistance = 5;
    public float KnockBackDis = 40f;

    public int m_Damage = 1;

    EnemyEffect enemyEffect;
    private HeartSystem m_HeartSystem;
    private bool m_CanDamage = true;
    // Use this for initialization
    void Start()
    {
        initializeVariables();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }

    // Update is called once per frame
    void Update()
    {
        getClosestPlayer();

        if (!enemyEffect.isStun)
        {
            chase();
            if (m_Distance < m_ChaseDist)
            {
                chase();
            }
            if (m_Distance < m_StopDistance)
            {
                agent.Stop();
            }
            if (m_Distance > m_ChaseDist)
            {
                returnToOrigin();
            }
        }
        else
        {
            agent.Stop();
        }
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();
            if (other.tag == "Player")
            {
                if(m_CanDamage)
                {
                    m_HeartSystem.TakeDamage(m_Damage);
                    m_CanDamage = false;
                    StartCoroutine(WaitForSec(2));
                }
                m_HeartSystem.UpdateHearts();
            }
        }
    }

    public void OnTriggerExit(Collider other)
    {
        //if (other.GetComponent<HeartSystem>() != null)
        //{
        //    m_CanDamage = true;
        //}
    }
    
    IEnumerator WaitForSec(float s)
    {
        yield return new WaitForSeconds(s);
        m_CanDamage = true;
    }

}


