using UnityEngine;
using System.Collections;

public class EnemyEffect : MonoBehaviour
{
    float m_LastStunTime;
    float m_LastKBTime;
    float m_StunTime;
    float m_KBTime;
    float m_KB;
    Vector3 KnockBackDirection;
    [HideInInspector]
    public bool isStun = false;
    [HideInInspector]
    public bool isKB = false;
    private float journeyLength;
    float fracJourney;
    EnemyAI enemyAi;

    float m_MyHealth;

    void Start()
    {
        m_LastStunTime = 0;
        m_LastKBTime = 0;
        enemyAi = GetComponent<EnemyAI>();
    }

    void Update()
    {
        if (isStun == true)
        {
            gameObject.GetComponent<EnemyHealth>().isInvincible = true;
            enemyAi.agent.Stop();
            isStun = (m_LastStunTime + m_StunTime) > Time.time;
            Debug.Log("Stun!");
        }
        if (isStun == false)
        {
            gameObject.GetComponent<EnemyHealth>().isInvincible = false;
            Debug.Log("Not Stun!");
        }
    }

    public void Stun(float ST)
    {
        m_LastStunTime = Time.time;
        isStun = true;
        m_StunTime = ST;
    }

    public void KnockBack(float KB, GameObject player)
    {
        KnockBackDirection = transform.position - player.transform.position;
        enemyAi.m_Rtts = 30f;
        enemyAi.look(enemyAi.target.transform);
        enemyAi.m_Rtts = enemyAi.m_RotationSpeed;

        enemyAi.Knockback(KnockBackDirection, KB);
    }

    //void OnDrawGizmos()
    //{
    //    Gizmos.color = Color.red;
    //    Gizmos.DrawLine(transform.position, KnockBackDirection);
    //}
}
