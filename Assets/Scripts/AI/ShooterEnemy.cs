using UnityEngine;
using System.Collections;

public class ShooterEnemy : MonoBehaviour {
    public GameObject[] players;
    GameObject target;
    NavMeshAgent agent;
    public Vector3 m_Origin;

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
    public float m_RotationSpeed = 5f;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();
        m_Origin = gameObject.transform.position;
    }
    void Update()
    {
        for (int i = 0; i < players.Length;i++ )
        {
            if(i == 0)
            {
                m_distance = Vector3.Distance(transform.position, players[i].transform.position);
                target = players[i];
                look(target.transform);
                MoveDir = transform.position - players[i].transform.position;
                Flee = transform.position + MoveDir;
                //target = players[i].transform;
                if (m_distance <= RunAwayDis)
                {
                    transform.position = Vector3.Lerp(transform.position, Flee, RunAwaySpeed);
                    Debug.Log("Running away!");
                }
                else if (m_distance > RunAwayDis && m_distance < ChaseDis)
                {
                    timer += Time.deltaTime;
                    if (timer > bulletwaitingtime)
                    {
                        Shoot();
                        timer = 0;
                    }
                    Debug.Log("Shooting!");
                }
                else if (m_distance >= ChaseDis && m_distance <= ActivedDis)
                {
                    chase(); Debug.Log("Chasing!");
                }
                else if (m_distance > ActivedDis)
                {
                    //Debug.Log("Stay!");
                }
            }
            
            else 
            {
                if (Vector3.Distance(transform.position, players[i].transform.position) < m_distance)
                {
                    m_distance = Vector3.Distance(transform.position, players[i].transform.position);
                    target = players[i];
                    look(target.transform);
                    MoveDir = transform.position - players[i].transform.position;
                    Flee = transform.position + MoveDir;
                    if (m_distance <= RunAwayDis)
                    {
                        transform.position = Vector3.Lerp(transform.position, Flee, RunAwaySpeed);
                        Debug.Log("Running away!");
                    }
                    else if (m_distance > RunAwayDis && m_distance < ChaseDis)
                    {
                        timer += Time.deltaTime;
                        if (timer > bulletwaitingtime)
                        {
                            Shoot();
                            timer = 0;
                        }
                        Debug.Log("Shooting!");
                    }
                    else if (m_distance >= ChaseDis && m_distance <= ActivedDis)
                    {
                        chase();
                        Debug.Log("Chasing!");
                    }
                    else if (m_distance > ActivedDis)
                    {
                        Debug.Log("Stay!");
                    }
                }
            }
        }
            
    }
    void Shoot()
    {
        Rigidbody bullet = (Rigidbody)Instantiate(projectile, transform.position + transform.forward, transform.rotation);
        bullet.AddForce(transform.forward * bulletImpulse, ForceMode.Impulse);

        Destroy(bullet.gameObject, 1.0f);
    }

    void chase()
    {
        if (GameObject.FindGameObjectWithTag("Player") != null)
        {
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
