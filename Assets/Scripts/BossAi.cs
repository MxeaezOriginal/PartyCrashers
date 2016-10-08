using UnityEngine;
using System.Collections;

public class BossAi : MonoBehaviour
{
    float x;
    float y;
    float z;
    Vector3 RandomLocation;
    Vector3 TrapLocation;
    public Vector3 GetLoc;

    public GameObject enemyPrefab;
    public GameObject trapPrefab;
    public GameObject trapLoc;
    public GameObject trap;
    public float timer;
    public float spawnTime = 2.0f;
    //public Vector3 SpawnEnemyLocation;

    public Vector3 spin;
        
    public float m_FireInterval = 1f;
    public GameObject ShotPrefab;
    public Transform ShotLocation1;
    public Transform ShotLocation2;
    public Transform ShotLocation3;
    public Transform ShotLocation4;
    public Transform ShotLocation5;
    public Transform ShotLocation6;
    public Transform ShotLocation7;
    public Transform ShotLocation8;

    public float m_ReloadTime = 5f;

    private float m_LastShotTime;
    public int m_Bullet;
    public int m_MaxBullet = 10;



    // Use this for initialization
    void Start()
    {
        m_LastShotTime = Time.time;
        m_Bullet = m_MaxBullet;
        timer = spawnTime;


    }

    // Update is called once per frame
    void Update()
    {
        //BossAttackMode1();
        //BossAttackMode2();
        BossAttackMode3();
    }

    public Vector3 GetRandomLocationForEnemy()
    {
        x = Random.Range(0, 50);
        y = 1;
        z = Random.Range(0, 50);
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
            timer = spawnTime;
        }
    }

    void BossAttackMode2() // 360 degree shooting
    {
        transform.Rotate(spin * Time.deltaTime);

        bool CanShoot = (m_LastShotTime + m_FireInterval) < Time.time;
        bool HaveAmmo = m_Bullet > 0;
        if (m_Bullet <= 0)
        {
            bool Reloading = (m_LastShotTime + m_ReloadTime) < Time.time;
            if (Reloading)
            {
                m_Bullet = m_MaxBullet;
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

    public Vector3 GetRandomLocation()
    {
        x = Random.Range(0, 50);
        y = 10;
        z = Random.Range(0, 50);
        RandomLocation = new Vector3(x, y, z);
        return RandomLocation;
    }

    

    public Vector3 GetRandomLocationForTrap()
    {
        x = Random.Range(0, 50);
        y = 10;
        z = Random.Range(0, 50);
        RandomLocation = new Vector3(x, y, z);
        //TrapLocation = new Vector3(x, 0.1f, z);
        //transform.position = SpawnEnemyLocation;
        return RandomLocation;
    }

    //public Vector3 GetPreLocationForTrap()
    //{
    //    x = Random.Range(0, 50);
    //    y = 0.1f;
    //    z = Random.Range(0, 50);
    //    RandomLocation = new Vector3(x, y, z);
    //    //transform.position = SpawnEnemyLocation;
    //    return TrapLocation;
    //}

    void BossAttackMode3() // spawn trap at random location
    {
        timer -= Time.deltaTime;
        if (timer <= 0)
        {
            trap = (GameObject) Instantiate(trapPrefab, GetRandomLocationForTrap(), transform.rotation);
            GetLoc = new Vector3(trap.transform.position.x, 0.1f, trap.transform.position.z);
            Instantiate(trapLoc, GetLoc, transform.rotation);
            //trap.transform.position

            timer = spawnTime;
        }
    }
}
