using UnityEngine;
using System.Collections;

public class ChaserEnemyAi : EnemyAI // Used to inherit from monobehaviour
{
    //GameObject[] players;
    //GameObject target;
   // NavMeshAgent agent;
    public float m_ChaseDist = 50;
    //public float m_Distance;
    public float m_StopDistance = 5;
    //public float m_RotationSpeed = 5f;
    //public Vector3 m_Origin;
    public float KnockBackDis = 40f;

    //EnemyAI enemyAi;
    EnemyEffect enemyEffect;

    // Use this for initialization
    void Start()
    {
        initializeVariables();
        //enemyAi = gameObject.GetComponent<EnemyAI>();
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

        //Get closest player
        /*for (int i = 0; i < players.Length; i++)
        {
            m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
            target = players[i];
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

        }*/

    }



}


