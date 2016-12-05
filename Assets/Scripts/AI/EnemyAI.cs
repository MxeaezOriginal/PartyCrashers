using UnityEngine;
using System.Collections;

public class EnemyAI : MonoBehaviour
{
    protected GameObject[] players;
    protected GameObject target;
    protected NavMeshAgent agent;
    protected float m_Distance;
    protected Vector3 m_Origin;
    public float m_RotationSpeed = 2f;

    public void chase()
    {
        if (target != null)
        {
            look(target.transform);
            agent.SetDestination(target.transform.position);
            agent.Resume();
        }

        /*
        if (GameObject.FindGameObjectWithTag("Player") != null)
        {
            look(GameObject.FindGameObjectWithTag("Player").transform);
            agent.SetDestination(target.transform.position);
            agent.Resume();
        }*/
    }

    public void returnToOrigin()
    {
        agent.SetDestination(m_Origin);
        agent.Resume();
    }

    public void look(Transform other)
    {
        Vector3 lookPosition = other.position - transform.position;
        lookPosition.y = 0;
        Quaternion rotation = Quaternion.LookRotation(lookPosition);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * m_RotationSpeed);
    }

    public void getClosestPlayer()
    {
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
    }

    public void initializeVariables()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();
        m_Origin = gameObject.transform.position;
    }
}
