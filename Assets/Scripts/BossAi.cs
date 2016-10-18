using UnityEngine;
using System.Collections;

public class BossAi : MonoBehaviour
{
    float x;
    float y;
    float z;
    Vector3 RandomLocation;
    Vector3 TrapLocation;
    Vector3 GetLoc;

    public GameObject enemyPrefab;
    public GameObject trapPrefab;
    public GameObject trapLoc;
    public GameObject trap;
    public float timer;

    public float CountDownBeforeAttack = 10f;
    public float AttackCoolDown = 5f;
    public float AttackTime = 30f;

    // Boss attack mode 1 variables --- spawn enemy
    public float Mode1EnemySpawnTime = 2.0f;
    public int Mode1Range = 10;

    // Boss attack mode 2 variables --- 360 shooting
    public Vector3 Mode2BossSpin;
    public float Mode2ReloadTime = 5f;
    public int Mode2MaxBullet = 100;
    public float Mode2FireInterval = 1f;

    // Boss attack mode 3 variables --- spawn trap
    public float Mode3TrapSpawnTime = 2.0f;
    public int Mode3Range = 10;
    //public Vector3 SpawnEnemyLocation;


    public int m_Bullet;
        
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

    private int GetMode = 1;

    // Use this for initialization
    void Start()
    {
        m_LastShotTime = Time.time;
        m_LastAttackTime = Time.time;
        m_Bullet = Mode2MaxBullet;
        timer = Mode1EnemySpawnTime;
    }

    // Update is called once per frame
    void Update()
    {
        Attacking();

    }

    void Attacking()
    {
        bool StartAttack = (m_LastAttackTime + CountDownBeforeAttack) < Time.time;
        bool CoolDown = (m_LastAttackTime + AttackCoolDown) < Time.time;
        bool Attack = (m_LastAttackTime + AttackTime) < Time.time;

        //  Get Random Attack Mode Needs to fix!!! 

        //if(StartAttack )//&& distance)
        //{
        // if (CanAttack && CoolDown)
        //{
        if (CoolDown)
            {
                if (GetMode == 1)
                {
                    // spawn chasing enemy in random location
                    BossAttackMode1();
                    Debug.Log("Attack Mode 1");
                    if (Attack)
                    {
                        GetMode =  GetRandomAttackMode();
                        m_LastAttackTime = Time.time;
                    }
                }

                if (GetMode == 2)
                {
                    // 360 degree shooting
                    BossAttackMode2();
                    Debug.Log("Attack Mode 2");
                    if(Attack)
                    {
                        m_LastAttackTime = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                }

                if (GetMode == 3)
                {
                    // spawn trap at random location
                    BossAttackMode3();
                    Debug.Log("Attack Mode 3");
                    if (Attack)
                    {
                        m_LastAttackTime = Time.time;
                        GetMode = GetRandomAttackMode();
                    }
                }

            }

            //}

        //}
    }

    int GetRandomAttackMode()
    {
        return Random.Range(1, 4);
    }

    public Vector3 GetRandomLocationForEnemy()
    {
        x = Random.Range(0, Mode1Range);
        y = 1;
        z = Random.Range(0, Mode1Range);
        RandomLocation = new Vector3(x, y, z);
        //transform.position = SpawnEnemyLocation;
        return RandomLocation;
    }

    void BossAttackMode1() // spawn chasing enemy in random location
    {
        timer -= Time.deltaTime;
        if(timer <= 0 )
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

    //public Vector3 GetRandomLocation()
    //{
    //    x = Random.Range(0, 50);
    //    y = 10;
    //    z = Random.Range(0, 50);
    //    RandomLocation = new Vector3(x, y, z);
    //    return RandomLocation;
    //}

    public Vector3 GetRandomLocationForTrap()
    {
        x = Random.Range(0, Mode3Range);
        y = 10;
        z = Random.Range(0, Mode3Range);
        RandomLocation = new Vector3(x, y, z);
        //TrapLocation = new Vector3(x, 0.1f, z);
        //transform.position = SpawnEnemyLocation;
        return RandomLocation;
    }

    void BossAttackMode3() // spawn trap at random location
    {
        timer -= Time.deltaTime;
        if (timer <= 0)
        {
            trap = (GameObject) Instantiate(trapPrefab, GetRandomLocationForTrap(), transform.rotation);
            GetLoc = new Vector3(trap.transform.position.x, 0.1f, trap.transform.position.z);
            Instantiate(trapLoc, GetLoc, transform.rotation);
            //trap.transform.position

            timer = Mode3TrapSpawnTime;
        }
    }
}
