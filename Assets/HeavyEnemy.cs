using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class HeavyEnemy : EnemyAI //Inherits from EnemyAI now instead of monobehaviour
{
    public int m_EnemyHealth = 20;
    public int m_PartyBarAmount = 2;
    public GameObject coin;

    //GameObject[] players;
    //GameObject target;
    //NavMeshAgent agent;
    //public float m_Distance;
    public float ViewRange = 120f;
    public float ViewDis = 10f;

    Vector3 rayDirection;
    RaycastHit hit;
    //Vector3 m_Origin;

    public float KnockBackDis = 40f;
    public float KB;
    public float m_LastMoveTime;

    //EnemyAI enemyAi;
    EnemyEffect enemyEffect;

    void Start()
    {
        KB = KnockBackDis;
        initializeVariables();
        //players = GameManager.m_Instance.m_Players;
        //agent = gameObject.GetComponent<NavMeshAgent>();
        //enemyAi = gameObject.GetComponent<EnemyAI>();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }

    void Update()
    {
        getClosestPlayer();
        if (CanSeePlayer() && !enemyEffect.isStun)
        {
            chase();
        }
        else
        {
            agent.Stop();
        }

        /*for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
            target = players[i];

            if (CanSeePlayer() && !enemyEffect.isStun)
            {
                enemyAi.chase();
            }
            else
            {
                agent.Stop();
            }
        }*/
    }

    /*void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.CompareTag("Physical"))
        {
            if (m_EnemyHealth > 0)
            {
                m_EnemyHealth = m_EnemyHealth - 1;
            }
            else if (m_EnemyHealth <= 0)
            {

                Destroy(gameObject);

                Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);

                for (int i = 0; i < GameManager.m_Instance.m_Players.Length; ++i)
                {
                    Player player = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
                    player.m_Score += 100;
                }
            }
        }
    }*/

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
                        KB = KnockBackDis;
                        //Debug.Log("I C U!");
                        return true;
                    }
                }
            }
        }
        KB = 0f;
        //Debug.Log("Where R U?");
        return false;
    }
}


