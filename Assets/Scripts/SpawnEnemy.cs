using UnityEngine;
using System.Collections;

public class SpawnEnemy : MonoBehaviour
{
    //public int[] Num;
    //public int maxNum;
    public bool infiniteSpawn;
    public int individualEnemyNum = 0;
    public int individualSpawnNum = 4;
    GameObject[] getEnemyNum;
    public int totalEnemyNum;
    public int totalSpawnNum = 5;
    GameObject[] players;
    float x;
    float y;
    float z;
    Vector3 RandomLocation;
    public float SpawnRange = 5f;
    public float GodRadius = 3f;
    //---------------------------------------------------
    public GameObject enemyPrefab;
    public float timer;
    public float range;
    public float spawnTime = 5.0f;
    public float activedRange = 10f;
    // run away
    public float m_Distance;
    Vector3 MoveDirection;
    Vector3 RunAwayDirection;
    public float RunAwayRange = 5f;
    public float RunSpeed = 0.01f;
    // Rotation from EnemyAi
    public float m_RotationSpeed = 5f;

    //bool setActive;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        timer = spawnTime;
        players = GameObject.FindGameObjectsWithTag("Player");
        //setActive = false;
    }

    // Update is called once per frame
    void Update()
    {
        look(GameObject.FindGameObjectWithTag("Player").transform);
        // run away ----------------------------------------------------------
        // Get closest player
        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                MoveDirection = transform.position - players[i].transform.position;
                RunAwayDirection = transform.position + MoveDirection;
                if (m_Distance <= RunAwayRange)
                {
                    transform.position = Vector3.Lerp(transform.position, RunAwayDirection, RunSpeed);
                }
        }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < m_Distance)
                {
                    m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                    MoveDirection = transform.position - players[i].transform.position;
                    RunAwayDirection = transform.position + MoveDirection;
                    if (m_Distance <= RunAwayRange)
                    {
                        transform.position = Vector3.Lerp(transform.position, RunAwayDirection, RunSpeed);
                    }
                }
        }
    }
        // run away finish ---------------------------------------------------
        getEnemyNum = GameObject.FindGameObjectsWithTag("MeleeEnemy");
        totalEnemyNum = getEnemyNum.Length;
        timer -= Time.deltaTime;
        range = Vector3.Distance(GameObject.FindWithTag("Player").transform.position, transform.position);
        if (infiniteSpawn == true)
        {
            if (totalEnemyNum < totalSpawnNum)
            {
                if (timer <= 0 && range <= activedRange)
                {
                    EnemySpawner();
                    timer = spawnTime;
                }
            }
        }
        else
        {
            if (individualEnemyNum < individualSpawnNum)
            {
                if (timer <= 0 && range <= activedRange)
                {
                    Instantiate(enemyPrefab, GetRandomLocationForEnemy(), transform.rotation);
                    individualEnemyNum++;
                    timer = spawnTime;
                }
            }
        }
        //for (int i = 0; i < maxNum; i++)
        //{
        //    timer -= Time.deltaTime;
        //    range = Vector3.Distance(GameObject.FindWithTag("Player").transform.position, transform.position);

        //    if (timer <= 0 && range <= activedRange)
        //    {
        //        EnemySpawner();
        //        timer = spawnTime;
        //    }
        //}
    }


    public Vector3 GetRandomLocationForEnemy()
    {
        x = Random.Range(transform.position.x - SpawnRange, transform.position.x + SpawnRange);
        y = 1;
        z = Random.Range(transform.position.z - SpawnRange, transform.position.z + SpawnRange);

        for (int i = 0; i < players.Length; i++)
        {
            while (x <= players[i].transform.position.x + GodRadius && x >= players[i].transform.position.x - GodRadius && z <= players[i].transform.position.z + GodRadius && z >= players[i].transform.position.z - GodRadius)
            {
                x = Random.Range(transform.position.x - SpawnRange, transform.position.x + SpawnRange);
                z = Random.Range(transform.position.z - SpawnRange, transform.position.z + SpawnRange);
            }
        }

        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }

    void EnemySpawner()
    {
        Instantiate(enemyPrefab, GetRandomLocationForEnemy(), transform.rotation);
    }

    void look(Transform other)
    {
        Vector3 lookPosition = other.position - transform.position;
        lookPosition.y = 0;
        Quaternion rotation = Quaternion.LookRotation(lookPosition);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * m_RotationSpeed);
    }
}
