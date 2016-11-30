using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class HeavyEnemy : MonoBehaviour
{
    public int m_EnemyHealth = 20;
    public int m_PartyBarAmount = 2;
    public GameObject coin;

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

    Vector3 m_Origin;

    public EnemyDeath Script_enemydeath;

    public float KnockBackDis = 40f;
    bool isStun = false;
    public float m_LastMoveTime;
    public float StunTime = 2f;
    public float time;
    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        agent = gameObject.GetComponent<NavMeshAgent>();
        m_Origin = gameObject.transform.position;
        Script_enemydeath = GetComponent<EnemyDeath>();
        m_LastMoveTime = 0;
    }

    void Update()
    {
        time = Time.time;
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
            target = players[i];

            if (CanSeePlayer() && !isStun)
            {
                chase();
            }
            else
            {
            }
        }
        if (isStun)
        {
            isStun = (m_LastMoveTime + StunTime) > Time.time;
            //Debug.Log("Stun!");
        }
        if (!isStun)
        {
            //Debug.Log("Not Stun!");
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.CompareTag("Physical"))
        {
            isStun = true;
            m_LastMoveTime = Time.time;
            if (m_EnemyHealth > 0)
            {
                m_EnemyHealth = m_EnemyHealth - 1;
                //m_EnemyHealth = m_EnemyHealth - ;
                //m_EnemyHealth = m_EnemyHealth - col.GetComponent<Sword>().m_Damage;
                //Debug.Log(col.GetComponent<Sword>().m_Damage);
            }
            else if (m_EnemyHealth <= 0)
            {
                if (SceneManager.GetActiveScene().name == GameManager.m_Instance.m_TutorialLevel)
                {
                    GameManager.m_Instance.m_TutorialEnemies.Add(gameObject.name);
                }

                Destroy(gameObject);

                Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);

                for (int i = 0; i < GameManager.m_Instance.m_Players.Length; ++i)
                {
                    Player player = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
                    player.m_Score += 100;
                }
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


