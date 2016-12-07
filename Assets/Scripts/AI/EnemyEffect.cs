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
    Transform m_Target;
    [HideInInspector]
    public bool isStun = false;
    [HideInInspector]
    public bool isKB = false;
    private float journeyLength;
    float fracJourney;
    EnemyAI enemyAi;

    void Start()
    {
        m_LastStunTime = 0;
        m_LastKBTime = 0;
        //StartTime = Time.time;
        enemyAi = GetComponent<EnemyAI>();
    }

    void Update()
    {
        //timeSinceStarted = Time.time - StartTime;
        //percentageComplete = timeSinceStarted / 1f;
        // is Stun---------------------------
        //m_KBTime = Time.time - m_LastKBTime;
        //fracJourney = (m_KBTime / journeyLength)*GetComponent<NavMeshAgent>().speed;
        if (isStun == true)
        {
            transform.position = transform.position;
            isStun = (m_LastStunTime + m_StunTime) > Time.time;
            Debug.Log("Stun!");
        }
        if (isStun == false)
        {
            Debug.Log("Not Stun!");
        }
        // is KnockBack----------------------
        //if (isKB == true)
        //{
        //   //if(enemyAi.agent.destination.normalized == transform.position.normalized)
        //   // {
        //    //    isKB = false;
        //   // }


        //    //transform.position = Vector3.Lerp(transform.position, KnockBackDirection * m_KB, fracJourney);
        //    //transform.position += KnockBackDirection.normalized;
        //    //enemyAi.look(m_Target.transform);

        //    //isKB = (m_LastKBTime + m_KBTime) > Time.time;
        //    //Debug.Log("KBing!");
        //}
    }

    public void Stun(float ST)
    {
        m_LastStunTime = Time.time;
        isStun = true;
        m_StunTime = ST;
    }

    public void KnockBack(float KB, GameObject player)
    {
        // m_LastKBTime = Time.time;
        //m_KBTime = 2f;
        //isKB = true;
        KnockBackDirection = transform.position - player.transform.position;
        m_Target = player.transform;
        enemyAi.Knockback(KnockBackDirection, KB);

        //KnockBack = transform.position + KnockBackDirection;

        //m_KB = KB;
        //KnockBackDirection = transform.position - new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z);
        //journeyLength = Vector3.Distance(transform.position, KnockBackDirection*KB);
        //Target = player.transform;

        //GetComponent<NavMeshAgent>().speed = KnockBackDirection.
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawLine(transform.position, KnockBackDirection);
    }
}
