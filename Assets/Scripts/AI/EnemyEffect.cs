using UnityEngine;
using System.Collections;

public class EnemyEffect : MonoBehaviour {

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
    //float StartTime;
    //float timeSinceStarted;
    //float percentageComplete;

    void Start()
    {
        m_LastStunTime = 0;
        m_LastKBTime = 0;
        //StartTime = Time.time;
    }

    void Update()
    {
        //timeSinceStarted = Time.time - StartTime;
        //percentageComplete = timeSinceStarted / 1f;
        // is Stun---------------------------
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
        if (isKB == true)
        {
            transform.position = Vector3.Lerp(transform.position, KnockBackDirection * m_KB, m_KBTime/m_KB);
            //transform.position = transform.position;
            isKB = (m_LastKBTime + m_KBTime) > Time.time;
            Debug.Log("KBing!");
        }
    }

    public void Stun(float ST)
    {
        m_LastStunTime = Time.time;
        isStun = true;
        //m_Stun = 3;
        m_StunTime = ST;
    }

    public void KnockBack(float KB, GameObject Player)
    {
        m_LastKBTime = Time.time;
        isKB = true;
        m_KBTime = 1f;
        KnockBackDirection = transform.position - Player.transform.position;
        m_KB = KB;

        //transform.position = Vector3.Lerp(transform.position, KnockBackDirection*KB, 0.5f);
        //transform.position += Vector3.forward * Time.deltaTime * KB;

        //transform.position += KnockBackDirection * Time.deltaTime * KB;
        //Time.deltaTime * 5f
    }
    //void OnDrawGizmos()
    //{
    //    Gizmos.color = Color.red;
    //    Gizmos.DrawLine(transform.position, KnockBackDirection * 5);
    //}
}
