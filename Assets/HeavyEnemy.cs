using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class HeavyEnemy : EnemyAI //Inherits from EnemyAI now instead of monobehaviour
{
    public int m_EnemyHealth = 20;
    public int m_PartyBarAmount = 2;
    public GameObject coin;
    
    public float ViewRange = 120f;
    public float ViewDis = 10f;

    Vector3 rayDirection;
    RaycastHit hit;

    public float KnockBackDis = 40f;
    public float KB;
    public float m_LastMoveTime;
    public float RotationSpeed = 1f;
    
    EnemyEffect enemyEffect;

    void Start()
    {
        KB = KnockBackDis;
        initializeVariables();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }

    void Update()
    {
        getClosestPlayer();
        if (DetectPlayer() && !enemyEffect.isStun)
        {
            m_Rtts = RotationSpeed;
            look(target.transform);
            m_Rtts = m_RotationSpeed;
        }
        if (CanSeePlayer() && !enemyEffect.isStun)
        {
                chase();
        }
        else
        {
                agent.Stop();
        }
    }

    public bool DetectPlayer()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            //Ray ray = gameObject.transform.forward;
            if ((Vector3.Angle(rayDirection, transform.forward)) < ViewRange)
            {
                if (Physics.Raycast(transform.position, rayDirection, out hit, ViewDis))
                {
                    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                    {
                        KB = KnockBackDis;
                        //Debug.Log("I C U!");
                        return true;
                    }
                }
                //if (Physics.Raycast(transform.position, transform.forward, out hit, ViewDis))
                //{
                //    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                //    {
                //        KB = KnockBackDis;
                //        return true;
                //    }
                //}
            }
        }
        KB = 0f;
        //Debug.Log("Where R U?");
        return false;
    }

    public bool CanSeePlayer()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            //Ray ray = gameObject.transform.forward;
            if ((Vector3.Angle(rayDirection, transform.forward)) < ViewRange) 
            {
                //if (Physics.Raycast(transform.position, rayDirection, out hit, ViewDis))
                //{
                //    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                //    {
                //        KB = KnockBackDis;
                //        //Debug.Log("I C U!");
                //        return true;
                //    }
                //}
                if (Physics.Raycast(transform.position, transform.forward, out hit, ViewDis))
                {
                    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                    {
                        KB = KnockBackDis;
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


