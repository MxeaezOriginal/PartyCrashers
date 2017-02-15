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
    //public Transform m_ShotPos;
    //public GameObject m_Projectile;

    //VFX
    public GameObject shootEffect;
    //VFXend

    //EnemyAI enemyAi;
    EnemyEffect enemyEffect;

    //SFX
    public AudioSource audioSource;
    public AudioClip[] SFX;
    private AudioClip SFXtoPlay;

    public float maxRandomPitch;
    public float minRandomPitch;
    private float randomPitch;
    //SFX End

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
            }
            if (m_Distance > RunAwayDis && m_Distance < ChaseDis)
            {
                timer += Time.deltaTime;
                if (timer > bulletwaitingtime)
                {
                    Shoot();
                    timer = 0;
                }
            }
            if (m_Distance >= ChaseDis && m_Distance <= ActivedDis)
            {
                chase();
            }
            if (m_Distance > ActivedDis)
            {
                returnToOrigin();
            }
        }
        else
        {
            agent.Stop();
        }
    }
    void Shoot()
    {
        if(projectile != null)
        {
            Rigidbody bullet = (Rigidbody)Instantiate(projectile, transform.position + transform.forward, transform.rotation);
            bullet.AddForce(transform.forward * bulletImpulse, ForceMode.Impulse);
            //VFX
            if (shootEffect != null)
            {
                GameObject shootvfx;
                shootvfx = (GameObject)Instantiate(shootEffect, transform.position, transform.rotation);
                Destroy(shootvfx, 0.3f);
            }
            //VFXend


            //SFX
            if (audioSource != null)
            {
                randomPitch = Random.RandomRange(maxRandomPitch, minRandomPitch);
                SFXtoPlay = SFX[Random.Range(0, SFX.Length)];
                audioSource.clip = SFXtoPlay;
                audioSource.pitch = randomPitch;
                audioSource.Play();
            }
            //SFX END
            Destroy(bullet.gameObject, 1.0f);
        }
        else
        {
            Debug.Log("Projectile is null");
        }



    }
}
