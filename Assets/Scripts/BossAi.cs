using UnityEngine;
using System.Collections;

public class BossAi : MonoBehaviour
{
    GameObject[] players;
    int PlayerNumbers;
    float x;
    float y;
    float z;
    Vector3 RandomLocation;
    Vector3 TrapLocation;
    Vector3 GetLoc1;
    Vector3 GetLoc2;
    Vector3 GetLoc3;
    Vector3 GetLoc4;

    public float GodRadius = 3f;

    public GameObject enemyPrefab;
    public GameObject trapPrefab;
    public GameObject trapLoc1;
    public GameObject trapLoc2;
    public GameObject trapLoc3;
    public GameObject trapLoc4;

    public GameObject trap1;
    public GameObject trap2;
    public GameObject trap3;
    public GameObject trap4;

    public GameObject ShotPrefab;
    public Transform ShotLocation1;
    public Transform ShotLocation2;
    public Transform ShotLocation3;
    public Transform ShotLocation4;
    public Transform ShotLocation5;
    public Transform ShotLocation6;
    public Transform ShotLocation7;
    public Transform ShotLocation8;

    private float m_LastShotTime;
    private float m_LastAttackTime;
    private float m_LastAttackTime2;
    public float timer;

    //public float CountDownBeforeAttack = 10f;
    public float AttackCoolDown = 5f;
    public float AttackTime = 10f;

    // Boss attack mode 1 variables --- spawn enemy
    public float Mode1EnemySpawnTime = 2.0f;
    public int Mode1Range = 10;

    // Boss attack mode 2 variables --- 360 shooting
    public Vector3 Mode2BossSpin;
    public float Mode2ReloadTime = 5f;
    public int Mode2MaxBullet = 100;
    public float Mode2FireInterval = 1f;
    public float BossShootCounter = 4f;
    public float BossShootInterval = 3f;
    public int m_Bullet;

    //public float BossActivatedRange = 30f;

    // Boss attack mode 3 variables --- spawn trap
    public float Mode3TrapSpawnTime = 2.0f;
    public int Mode3Range = 10;
    //public Vector3 SpawnEnemyLocation;

    private int GetMode = 3;

    BossMovement bossmovement;
    // Use this for initialization
    void Start()
    {
        PlayerNumbers = GameObject.FindGameObjectsWithTag("Player").Length;
        players = GameManager.m_Instance.m_Players;
        bossmovement = GetComponent<BossMovement>();
        m_LastShotTime = Time.time;
        m_LastAttackTime = Time.time;
        m_LastAttackTime2 = Time.time;
        //m_Bullet = Mode2MaxBullet;
        m_Bullet = 0;
        timer = Mode1EnemySpawnTime;
    }

    // Update is called once per frame
    void Update()
    {
        Attacking();
        //BossAttackMode3();
    }

    void Attacking()
    {
        //bool StartAttack = (m_LastAttackTime + CountDownBeforeAttack) < Time.time;
        bool CoolDown = (m_LastAttackTime + AttackCoolDown) < Time.time;
        bool Attack = (m_LastAttackTime2 + AttackTime) < Time.time;
        //if(StartAttack )//&& distance)
        //{
        // if (CanAttack && CoolDown)
        //{
        //if (CoolDown)
        //{
        if (bossmovement.m_Distance <= bossmovement.RunAwayDistance)
        {
            //bool Shoot = (m_LastShotTime + BossShootCounter) < Time.time;
            //bool StopShooting = (m_LastShotTime + BossShootInterval) < Time.time;
            if (CoolDown)
            {
                BossAttackMode2();
            }

        }
        else if (bossmovement.m_Distance > bossmovement.RunAwayDistance && bossmovement.m_Distance <= bossmovement.AttackDistance/*&& bossmovement.m_Distance < bossmovement.StayDistance*/)
        {
            if (CoolDown)
            {
                if (GetMode == 1)
                {
                    // spawn chasing enemy in random location
                    Debug.Log("Attack Mode 1");
                    BossAttackMode1();
                    if (Attack)
                    {
                        m_LastAttackTime2 = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                }
                if (GetMode == 2)
                {
                    // 360 degree shooting
                    Debug.Log("Attack Mode 2");
                    BossAttackMode2();
                    if (Attack)
                    {
                        m_LastAttackTime2 = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                }
                if (GetMode == 3)
                {
                    // spawn trap at random location
                    Debug.Log("Attack Mode 3");
                    BossAttackMode3();
                    if (Attack)
                    {
                        m_LastAttackTime2 = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                }
                if (GetMode == 4)
                {
                    // Spawn trap and shoot
                    Debug.Log("Attack Mode 4");
                    BossAttackMode3();
                    BossAttackMode2();
                    if (Attack)
                    {
                        m_LastAttackTime2 = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                    //// Boss Do nothing and return to start Position
                    //Debug.Log("Attack Mode 4 = Idle");
                    //BossIdle();
                    //if (Attack)
                    //{
                    //    m_LastAttackTime2 = Time.time;
                    //    GetMode = GetRandomAttackMode();
                    //}
                }
            }
        }
    }

    int GetRandomAttackMode()
    {
        // if (BossHP >= 60)
        // return Random.Range(1,5);
        // else if (BossHp < 60)
        // return Random.Range(1,4);
        return Random.Range(1, 5);
    }

    public Vector3 GetRandomLocationForEnemy()
    {
        x = Random.Range(transform.position.x - Mode1Range, transform.position.x + Mode1Range);
        y = 1;
        z = Random.Range(transform.position.z - Mode1Range, transform.position.z + Mode1Range);

        for (int i = 0; i < players.Length; i++)
        {
            while (x <= players[i].transform.position.x + GodRadius && x >= players[i].transform.position.x - GodRadius && z <= players[i].transform.position.z + GodRadius && z >= players[i].transform.position.z - GodRadius)
            {
                x = Random.Range(transform.position.x - Mode1Range, transform.position.x + Mode1Range);
                z = Random.Range(transform.position.z - Mode1Range, transform.position.z + Mode1Range);
            }
        }

        RandomLocation = new Vector3(x, y, z);
        //transform.position = SpawnEnemyLocation;
        return RandomLocation;
    }

    void BossIdle()
    {
        //transform.position = Vector3.Lerp(transform.position, bossmovement.StartPos, bossmovement.BossRunAwaySpeed);
    }

    void BossAttackMode1() // spawn chasing enemy in random location
    {
        timer -= Time.deltaTime;
        if (timer <= 0)
        {
            Instantiate(enemyPrefab, GetRandomLocationForEnemy(), transform.rotation);
            timer = Mode1EnemySpawnTime;
        }
    }

    void BossAttackMode2() // 360 degree shooting
    {
        transform.Rotate(Mode2BossSpin * Time.deltaTime);

        bool CanShoot = (m_LastShotTime + Mode2FireInterval) < Time.time;
        bool HaveAmmo = m_Bullet > 0;
        if (m_Bullet <= 0)
        {
            bool Reloading = (m_LastShotTime + Mode2ReloadTime) < Time.time;
            if (Reloading)
            {
                m_Bullet = Mode2MaxBullet;
            }
        }
        if (CanShoot && HaveAmmo)
        {
            if (m_Bullet > 0)
            {
                // Shoot!
                if (ShotPrefab != null)
                {
                    if (ShotLocation1 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation1.position, ShotLocation1.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation2 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation2.position, ShotLocation2.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation3 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation3.position, ShotLocation3.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation4 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation4.position, ShotLocation4.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation5 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation5.position, ShotLocation5.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation6 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation6.position, ShotLocation6.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation7 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation7.position, ShotLocation7.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }
                if (ShotPrefab != null)
                {
                    if (ShotLocation8 != null)
                    {
                        Instantiate(ShotPrefab, ShotLocation8.position, ShotLocation8.rotation);
                    }
                    else
                    {
                        GameObject shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                        shot.transform.position = transform.position;
                        shot.transform.forward = transform.forward;
                        shot.transform.up = transform.up;
                    }
                    m_LastShotTime = Time.time;
                }

                --m_Bullet;
            }
        }
    }

    int GetRandomPlayer()
    {
        return Random.Range(0, 3);
    }
    
    public Vector3 GetPlayersLocationForTrap1()
    {
        x = players[0].transform.position.x;
        y = 10;
        z = players[0].transform.position.z;
        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }
    public Vector3 GetPlayersLocationForTrap2()
    {
        x = players[1].transform.position.x;
        y = 10;
        z = players[1].transform.position.z;
        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }
    public Vector3 GetPlayersLocationForTrap3()
    {
        x = players[2].transform.position.x;
        y = 10;
        z = players[2].transform.position.z;
        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }
    public Vector3 GetPlayersLocationForTrap4()
    {
        x = players[3].transform.position.x;
        y = 10;
        z = players[3].transform.position.z;
        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }
    void BossAttackMode3() // spawn trap at random location
    {
        timer -= Time.deltaTime;
        if (timer <= 0)
        {
            if (PlayerNumbers == 1)
            {
                Debug.Log("Player Number = 1");
                trap1 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap1(), transform.rotation);
                GetLoc1 = new Vector3(trap1.transform.position.x, 0.1f, trap1.transform.position.z);
                Instantiate(trapLoc1, GetLoc1, transform.rotation);
                timer = Mode3TrapSpawnTime;
            }
            else if (PlayerNumbers == 2)
            {
                Debug.Log("Player Number = 2");
                trap1 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap1(), transform.rotation);
                GetLoc1 = new Vector3(trap1.transform.position.x, 0.1f, trap1.transform.position.z);
                Instantiate(trapLoc1, GetLoc1, transform.rotation);

                trap2 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap2(), transform.rotation);
                GetLoc2 = new Vector3(trap2.transform.position.x, 0.1f, trap2.transform.position.z);
                Instantiate(trapLoc2, GetLoc2, transform.rotation);

                timer = Mode3TrapSpawnTime;
            }
            else if (PlayerNumbers == 3)
            {
                Debug.Log("Player Number = 3");
                trap1 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap1(), transform.rotation);
                GetLoc1 = new Vector3(trap1.transform.position.x, 0.1f, trap1.transform.position.z);
                Instantiate(trapLoc1, GetLoc1, transform.rotation);

                trap2 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap2(), transform.rotation);
                GetLoc2 = new Vector3(trap2.transform.position.x, 0.1f, trap2.transform.position.z);
                Instantiate(trapLoc2, GetLoc2, transform.rotation);

                trap3 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap3(), transform.rotation);
                GetLoc3 = new Vector3(trap3.transform.position.x, 0.1f, trap3.transform.position.z);
                Instantiate(trapLoc3, GetLoc3, transform.rotation);

                timer = Mode3TrapSpawnTime;
            }
            else if (PlayerNumbers == 4)
            {
                Debug.Log("Player Number = 4");
                trap1 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap1(), transform.rotation);
                GetLoc1 = new Vector3(trap1.transform.position.x, 0.1f, trap1.transform.position.z);
                Instantiate(trapLoc1, GetLoc1, transform.rotation);

                trap2 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap2(), transform.rotation);
                GetLoc2 = new Vector3(trap2.transform.position.x, 0.1f, trap2.transform.position.z);
                Instantiate(trapLoc2, GetLoc2, transform.rotation);

                trap3 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap3(), transform.rotation);
                GetLoc3 = new Vector3(trap3.transform.position.x, 0.1f, trap3.transform.position.z);
                Instantiate(trapLoc3, GetLoc3, transform.rotation);

                trap4 = (GameObject)Instantiate(trapPrefab, GetPlayersLocationForTrap4(), transform.rotation);
                GetLoc4 = new Vector3(trap4.transform.position.x, 0.1f, trap4.transform.position.z);
                Instantiate(trapLoc4, GetLoc4, transform.rotation);

                timer = Mode3TrapSpawnTime;
            }
        }
    }

    //public Vector3 GetRandomLocation()
    //{
    //    x = Random.Range(0, 50);
    //    y = 10;
    //    z = Random.Range(0, 50);
    //    RandomLocation = new Vector3(x, y, z);
    //    return RandomLocation;
    //}
}
