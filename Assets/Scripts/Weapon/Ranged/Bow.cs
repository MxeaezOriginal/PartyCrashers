using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged
{
    [Tooltip("Maximum Charging Time.")]
    public float m_MaxCharge = 0f;
    [SerializeField][Tooltip("Medium Shooting Speed.")]
    private float m_MedSpeed = 0f;
    [SerializeField][Tooltip("Minimum Shooting Speed.")]
    private float m_MinSpeed = 0f;
    [HideInInspector]
    public float m_TimePressed = 0f;    
    [HideInInspector]
    private bool m_WasDown = false;
    [HideInInspector]
    public int m_BulletDamage = 0;
    [SerializeField]
    [Tooltip("Multiplies the initial Damage the bullet does at Half charge.")]
    private int m_MidDmgMultiplier;
    [Tooltip("Multiplies the initial Damage the bullet does at Full charge.")]
    public int m_LaserDmgMultiplier;
    [SerializeField]
    private float m_LaserTimer;
    public float m_LaserLenght;

    //Test
    public float laserWidth = 1.0f;

    Player player;
    GameObject laser;

    void Start()
    {
        laser = transform.FindChild("laser").gameObject;     
        player = GetComponentInParent<Player>();
    }

    void Update()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            //Shoot if Button Up
            if (Input.GetAxisRaw(player.m_PrimaryAttack + player.getControllerAsString()) == 0 && m_WasDown)
            {
                shoot();
                m_WasDown = false;
            }
        }
    }

    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            if (m_TimePressed < m_MaxCharge)
            {                
                m_TimePressed += Input.GetAxisRaw(player.m_PrimaryAttack + player.getControllerAsString()) * Time.deltaTime;
            }

            if (m_TimePressed >= m_MaxCharge)
            {
                m_TimePressed = m_MaxCharge;
            }
            m_WasDown = true;
            //Debug.Log(m_TimePressed);
        }
    }

    public override void secondaryAttack()
    {

        if (m_SecondaryCoolDown <= Time.time - m_Weapon2Cooldown || m_SecondaryCoolDown == 0)
        {
            GameObject bigBalloon;
            bigBalloon = (GameObject)Instantiate(m_LeftTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            bigBalloon.GetComponent<Rigidbody>().AddForce(bigBalloon.transform.forward * m_ProjectileSpeed02);

            m_SecondaryCoolDown = Time.time;
        }
    }

    private void shoot()
    {
        GameObject balloon;
        

        if (m_TimePressed < (m_MaxCharge / 2))
        {
            m_TimePressed = m_MinSpeed;
            //Debug.Log(m_TimePressed);
            balloon = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            assignDamage(balloon, 1);
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_TimePressed);
        }
        else if (m_TimePressed >= (m_MaxCharge / 2) && m_TimePressed < m_MaxCharge)
        {
            balloon = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            assignDamage(balloon, m_MidDmgMultiplier);
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_MedSpeed * m_TimePressed);
        }
        else
        {
            laser.GetComponent<LineRenderer>().enabled = true;

            StopCoroutine("LaserTimer");
            StartCoroutine("LaserTimer");                          
        }

        m_TimePressed = 0;
        m_CoolDown = Time.time;
    }

    public void assignDamage(GameObject bullet, int multiplier)
    {
        if(bullet.GetComponent<Damage>() != null)
        {
            bullet.GetComponent<Damage>().m_Damage =  m_Damage * multiplier;
        }
        else
        {
            Debug.Log("Bullet doesn't have a Damage Component");
        }
    }

    IEnumerator LaserTimer()
    {
        yield return new WaitForSeconds(m_LaserTimer);
        laser.GetComponent<LineRenderer>().enabled = false;
    }
    // https://unity3d.com/learn/tutorials/topics/graphics/fun-lasers
}
