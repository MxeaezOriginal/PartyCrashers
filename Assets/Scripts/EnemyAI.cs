using UnityEngine;
using System.Collections;

public class EnemyAI : MonoBehaviour
{
    GameObject[] players;
    GameObject target;
    public float moveSpeed = 4;
    NavMeshAgent agent;
    public float m_ChaseDist = 50;
    public float m_Distance;
    public float m_StopDistance = 5;
    public float m_RotationSpeed = 5f;
    public Vector3 m_Origin;

    // Use this for initialization
    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();

        m_Origin = gameObject.transform.position;

    }

    // Update is called once per frame
    void Update()
    {
        //Get closest player
        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                target = players[i];
            }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < m_Distance)
                {
                    m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                    target = players[i];
                }
            }
        }

        if (m_Distance < m_ChaseDist)
        {
            chase();
        }
        if(m_Distance < m_StopDistance)
        {
            agent.Stop();
        }
        if (m_Distance > m_ChaseDist)
        {
            returnToOrigin();
        }
    }



    void chase()
    {
        look(GameObject.FindGameObjectWithTag("Player").transform);
        agent.SetDestination(target.transform.position);
        agent.Resume();
    }

    void returnToOrigin()
    {
        agent.SetDestination(m_Origin);
        agent.Resume();
    }

    void look(Transform other)
    {
        Vector3 lookPosition = other.position - transform.position;
        lookPosition.y = 0;
        Quaternion rotation = Quaternion.LookRotation(lookPosition);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * m_RotationSpeed);
    }

}
