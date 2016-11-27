using UnityEngine;
using System.Collections;

public class HeavyEnemy : MonoBehaviour
{
    GameObject[] players;
    GameObject target;
    NavMeshAgent agent;
    public float m_Distance;
    //public float minDectectDis=3f;
    public float m_RotationSpeed = 2f;
    public float ViewRange = 120f;
    public float ViewDis = 10f;

    Vector3 rayDirection;
    RaycastHit hit;

    public Vector3 m_Origin;

    public EnemyDeath Script_enemydeath;

    public float KnockBackDis = 40f;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();
        m_Origin = gameObject.transform.position;
        Script_enemydeath = GetComponent<EnemyDeath>();
    }

    void Update()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
            target = players[i];

            if (CanSeePlayer())
            {
                //Script_enemydeath.enabled = true;
                chase();
            }
            else
            {
                //Script_enemydeath.enabled = false;
            }
        }
    }

    public bool CanSeePlayer()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            if ((Vector3.Angle(rayDirection, transform.forward)) < ViewRange) 
            {
                if (Physics.Raycast(transform.position, rayDirection, out hit, ViewDis))
                {
                    if (hit.transform.tag == "Player")
                    {
                        KnockBackDis = 40f;
                        //Debug.Log("I C U!");
                        return true;
                    }
                }
            }
        }
        KnockBackDis = 0f;
        //Debug.Log("Where R U?");
        return false;
    }

    void chase()
    {
        if (GameObject.FindGameObjectWithTag("Player") != null)
        {
            look(GameObject.FindGameObjectWithTag("Player").transform);
            agent.SetDestination(target.transform.position);
            agent.Resume();
        }
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

//if (Physics.Raycast(transform.position, rayDirection, 3))
//{ // If the player is very close behind the player and in view the enemy will detect the player
//    if ((hit.transform.tag == "Player") && (m_Distance <= minDectectDis))
//    {
//        look(GameObject.FindGameObjectWithTag("Player").transform);
//        Debug.Log("I C U!");
//        //return true;
//    }
//}
