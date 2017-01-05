using UnityEngine;
using System.Collections;

public class ShooterEnemy : EnemyAI //Inherits from EnemyAI instead of Monobehaviour
{
    //public GameObject[] players;
    //GameObject target;
    //NavMeshAgent agent;

    //public float m_distance;
    public float ActivedDis = 20f;
    public float ChaseDis = 15f;
    public float ShootDis = 10f;
    public float RunAwayDis = 5f;
    public float ChaseSpeed = 0.005f;
    public float RunAwaySpeed = 0.01f;

    Vector3 MoveDir;
    Vector3 Flee;

    public float bulletImpulse = 20.0f;
    float timer;
    public float bulletwaitingtime = 3.0f;
    public Rigidbody projectile;

    //EnemyAI enemyAi;
    EnemyEffect enemyEffect;

    void Start()
    {
        initializeVariables();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }
    void Update()
    {
        getClosestPlayer();
        
        aim(target.transform);

        MoveDir = transform.position - target.transform.position;
        Flee = transform.position + MoveDir;
        if (!enemyEffect.isStun)
        {
            if (m_Distance <= RunAwayDis)
            {
                transform.position = Vector3.Lerp(transform.position, Flee, RunAwaySpeed);
                Debug.Log("Running away!");
            }
            if (m_Distance > RunAwayDis && m_Distance < ChaseDis)
            {
                timer += Time.deltaTime;
                if (timer > bulletwaitingtime)
                {
                    Shoot();
                    timer = 0;
                }
                Debug.Log("Shooting!");
            }
            if (m_Distance >= ChaseDis && m_Distance <= ActivedDis)
            {
                chase();
                Debug.Log("Chasing!");
            }
            if (m_Distance > ActivedDis)
            {
                returnToOrigin();
                //Debug.Log("Stay!");
            }
        }
        else
        {
            agent.Stop();
        }
    }
    void Shoot()
    {
        Rigidbody bullet = (Rigidbody)Instantiate(projectile, transform.position + transform.forward, transform.rotation);
        bullet.AddForce(transform.forward * bulletImpulse, ForceMode.Impulse);

        Destroy(bullet.gameObject, 1.0f);
    }
}
