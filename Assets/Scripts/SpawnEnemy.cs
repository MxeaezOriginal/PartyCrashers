using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class SpawnEnemy : MonoBehaviour
{
    List<GameObject> enemies = new List<GameObject>();
    //public int[] Num;
    //public int maxNum;

    //public int individualEnemyNum = 0;
    //public int individualSpawnNum = 4;
    //public int totalEnemyNum;
    //public int totalSpawnNum = 5;
    public int limitedSpawnTotalNum = 4;
    public int limitedSpawnCurrentNum = 0;
    public bool infiniteSpawn;
    public int infiniteSpawnInMapNum = 5;
    public int infiniteSpawnCurrentNum;
    GameObject target;
    NavMeshAgent agent;
    //GameObject[] getEnemyNum;
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
    //private float nextTurnTime;
    //private Transform startTransform;
    //public float multiplyBy;
    //Vector3 direction;
    //public float fleeDis = 10;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        timer = spawnTime;
        //players = GameObject.FindGameObjectsWithTag("Player");
        agent = gameObject.GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        foreach(GameObject enemy in enemies)
        {
            if(enemy == null)
            {
                enemies.Remove(enemy);
                infiniteSpawnCurrentNum--;
            }
        }
        look(GameObject.FindGameObjectWithTag("Player").transform);
        // run away ----------------------------------------------------------
        // Get closest player

        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                target = players[i];
                MoveDirection = transform.position - players[i].transform.position;
                RunAwayDirection = transform.position + MoveDirection;
                //direction = (target.transform.position - transform.position);
                //if (m_Distance <= RunAwayRange)
                //{
                //    transform.position = Vector3.Lerp(transform.position, RunAwayDirection, RunSpeed);
                //}
            }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < m_Distance)
                {
                    m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                    target = players[i];
                    MoveDirection = transform.position - players[i].transform.position;
                    RunAwayDirection = transform.position + MoveDirection;
                    //direction = (target.transform.position - transform.position);
                    //if (m_Distance <= RunAwayRange)
                    //{
                    //    transform.position = Vector3.Lerp(transform.position, RunAwayDirection, RunSpeed);
                    //}
                }
            }
        }
        if (m_Distance <= RunAwayRange)
        {
            transform.position = Vector3.Lerp(transform.position, RunAwayDirection, RunSpeed);
            //GetComponent<NavMeshAgent>().destination = transform.position + RunAwayDirection * fleeDis;
            //RunFrom(GameObject.FindGameObjectWithTag("Player").transform);
            //chase();
        }
        // run away finish ---------------------------------------------------

        timer -= Time.deltaTime;
        range = Vector3.Distance(GameObject.FindWithTag("Player").transform.position, transform.position);
        if (infiniteSpawn == true)
        {
            if (infiniteSpawnCurrentNum < infiniteSpawnInMapNum)
            {
                if (timer <= 0 && range <= activedRange)
                {
                    GameObject enemy = EnemySpawner();

                    enemies.Add(enemy);
                    infiniteSpawnCurrentNum++;
                    timer = spawnTime;
                }
            }
        }
        else
        {
            if (limitedSpawnCurrentNum < limitedSpawnTotalNum)
            {
                if (timer <= 0 && range <= activedRange)
                {
                    Instantiate(enemyPrefab, GetRandomLocationForEnemy(), transform.rotation);
                    limitedSpawnCurrentNum++;
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

    GameObject EnemySpawner()
    {
        GameObject enemy = (GameObject) Instantiate(enemyPrefab, GetRandomLocationForEnemy(), transform.rotation);

        return enemy;
    }

    void look(Transform other)
    {
        Vector3 lookPosition = other.position - transform.position;
        lookPosition.y = 0;
        Quaternion rotation = Quaternion.LookRotation(lookPosition);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * m_RotationSpeed);
    }

    //void RunFrom(Transform other)
    //{

    //    // store the starting transform
    //    //startTransform = transform;

    //    //temporarily point the object to look away from the player
    //    transform.rotation = Quaternion.LookRotation(transform.position - transform.position);

    //    //Then we'll get the position on that rotation that's multiplyBy down the path (you could set a Random.range
    //    // for this if you want variable results) and store it in a new Vector3 called runTo
    //    Vector3 runTo = transform.position + transform.forward * multiplyBy;
    //    //Debug.Log("runTo = " + runTo);

    //    //So now we've got a Vector3 to run to and we can transfer that to a location on the NavMesh with samplePosition.

    //    NavMeshHit hit;    // stores the output in a variable called hit

    //    // 5 is the distance to check, assumes you use default for the NavMesh Layer name
    //    NavMesh.SamplePosition(runTo, out hit, 5, 1 << NavMesh.GetNavMeshLayerFromName("Default"));
    //    //Debug.Log("hit = " + hit + " hit.position = " + hit.position);

    //    // just used for testing - safe to ignore
    //    //nextTurnTime = Time.time + 5;

    //    // reset the transform back to our start transform
    //    //transform.position = startTransform.position;
    //    //transform.rotation = startTransform.rotation;

    //    // And get it to head towards the found NavMesh position
    //    agent.SetDestination(hit.position);
    //}

    //void chase()
    //{
    //    if (GameObject.FindGameObjectWithTag("Player") != null)
    //    {
    //        look(GameObject.FindGameObjectWithTag("Player").transform);
    //        agent.SetDestination(target.transform.position);
    //        agent.Resume();
    //    }
    //}

    //void returnToOrigin()
    //{
    //    agent.SetDestination(m_Origin);
    //    agent.Resume();
    //}


}
