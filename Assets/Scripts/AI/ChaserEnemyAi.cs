using UnityEngine;
using System.Collections;

public class ChaserEnemyAi : EnemyAI // Used to inherit from monobehaviour
{
    public float m_ChaseDist = 50;
    public float m_StopDistance = 5;
    public float KnockBackDis = 40f;
    EnemyEffect enemyEffect;

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
}


