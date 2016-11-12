using UnityEngine;
using System.Collections;

public class SpawnEnemy : MonoBehaviour
{
    //public int[] Num;
    //public int maxNum;
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
    //bool setActive;

    void Start()
    {
        players = GameManager.m_Instance.m_Players;
        timer = spawnTime;
        //setActive = false;
    }

    // Update is called once per frame
    void Update()
    {
        getEnemyNum = GameObject.FindGameObjectsWithTag("MeleeEnemy");
        totalEnemyNum = getEnemyNum.Length;
        timer -= Time.deltaTime;
        range = Vector3.Distance(GameObject.FindWithTag("Player").transform.position, transform.position);
        if (individualSpawnNum == 0)
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
}
