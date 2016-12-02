using UnityEngine;
using System.Collections;

public class EnemyEffect : MonoBehaviour {

    float m_LastMoveTime;
    float m_Stun;

    Vector3 KnockBackDirection;
    [HideInInspector]
    public bool isStun = false;
    //Vector3 KnockBack;

    void Start()
    {
        m_LastMoveTime = 0;
    }

    void Update()
    {
        if (isStun == true)
        {
            //gameObject.active = false;
            transform.position = transform.position;
            isStun = (m_LastMoveTime + m_Stun) > Time.time;
            Debug.Log("Stun!");
        }
        if (isStun == false)
        {
            //gameObject.active = true;
            Debug.Log("Not Stun!");
        }
    }

    public void Stun(float ST)
    {
        m_LastMoveTime = Time.time;
        isStun = true;
        //m_Stun = 3;
        m_Stun = ST;
    }

    public void KnockBack(float KB)
    {
        transform.position += Vector3.forward * Time.deltaTime * KB;
    }

}
