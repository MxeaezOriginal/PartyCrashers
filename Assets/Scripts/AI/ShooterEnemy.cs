using UnityEngine;
using System.Collections;

public class ShooterEnemy : MonoBehaviour
{
    public GameObject[] players;
    GameObject target;
    NavMeshAgent agent;

    public float m_distance;
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

    EnemyAI enemyAi;
    EnemyEffect enemyEffect;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();
        enemyAi = gameObject.GetComponent<EnemyAI>();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }
    void Update()
    {
        for (int i = 0; i < players.Length; i++)
        {
            m_distance = Vector3.Distance(transform.position, players[i].transform.position);
            target = players[i];
            enemyAi.look(target.transform);
            MoveDir = transform.position - players[i].transform.position;
            Flee = transform.position + MoveDir;
            if(!enemyEffect.isStun)
            {
                if (m_distance <= RunAwayDis)
                {
                    transform.position = Vector3.Lerp(transform.position, Flee, RunAwaySpeed);
                    Debug.Log("Running away!");
                }
                if (m_distance > RunAwayDis && m_distance < ChaseDis)
                {
                    timer += Time.deltaTime;
                    if (timer > bulletwaitingtime)
                    {
                        Shoot();
                        timer = 0;
                    }
                    Debug.Log("Shooting!");
                }
                if (m_distance >= ChaseDis && m_distance <= ActivedDis)
                {
                    enemyAi.chase(); Debug.Log("Chasing!");
                }
                if (m_distance > ActivedDis)
                {
                    enemyAi.returnToOrigin();
                    //Debug.Log("Stay!");
                }
            }
            else
            {
                agent.Stop();
            }
        }
    }
    void Shoot()
    {
        Rigidbody bullet = (Rigidbody)Instantiate(projectile, transform.position + transform.forward, transform.rotation);
        bullet.AddForce(transform.forward * bulletImpulse, ForceMode.Impulse);

        Destroy(bullet.gameObject, 1.0f);
    }
}
