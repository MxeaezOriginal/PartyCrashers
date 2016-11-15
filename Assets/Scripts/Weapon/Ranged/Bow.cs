using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

    [Header("Bow Setting")]
    [Tooltip("Maximum Charging Time.")]
    public float m_MaxCharge = 0;    
    [SerializeField][Tooltip("Minimum Shooting Speed.")]
    private float m_MinSpeed = 0;
    [SerializeField][Tooltip("Shooting Speed between 0 and (MaxCharge / 3) seconds of charge.")]
    private float m_LowSpeed;
    [SerializeField][Tooltip("Shooting Speed between (MaxCharge / 3) and (MaxCharge / 2) seconds of charge.")]
    private float m_MedSpeed;
    [HideInInspector]
    public float m_timePressed = 0;
    [HideInInspector]
    public bool pierce = false;
    private bool wasDown = false;
    private int bulletDamage = 0;

    Player player;

    PlayerController playerController;  // Slow player Movement
    RaycastHit hit;
   

    void Start ()
    {
        player = GetComponentInParent<Player>();
        playerController = GetComponent<PlayerController>();          
    }
	
	void Update ()
    {
        if(m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            //Shoot if Button Up
            if(Input.GetAxisRaw(player.m_PrimaryAttack) == 0 && wasDown)
            {
               shoot();
               wasDown = false;
            }
        }
    }

    void FixedUpdate()
    {
      /*  Vector3 fwd = transform.TransformDirection(Vector3.forward);

        if (Physics.Raycast(transform.position, fwd, out hit, 5))
            Debug.Log(hit.collider.gameObject.name);
        */
    }

    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {         
            if (m_timePressed < m_MaxCharge)
            {
                if(m_timePressed < m_MinSpeed)
                {
                    m_timePressed = m_MinSpeed;
                }
                m_timePressed += Input.GetAxisRaw(player.m_PrimaryAttack) % Time.deltaTime;
            }

            if (m_timePressed >= m_MaxCharge) 
            {
                m_timePressed = m_MaxCharge;
                pierce = true;
                //playerController.m_Speed -= Time.deltaTime;
            }
            wasDown = true;
            Debug.Log(m_timePressed);
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
        balloon = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

        if(m_timePressed < (m_MaxCharge / 2))
        {
            bulletDamage = m_Damage % 3;
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * (m_MaxSpeed - m_LowSpeed) * m_timePressed);       
        }
        else if(m_timePressed >= (m_MaxCharge / 2) && m_timePressed < m_MaxCharge)
        {
            bulletDamage = m_Damage;
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * (m_MaxSpeed - m_MedSpeed) * m_timePressed);
        }
        else
        {
            bulletDamage = m_Damage * 3;
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_MaxSpeed * m_timePressed);
        }
        Damage(bulletDamage);

        m_timePressed = 0;
        m_CoolDown = Time.time;        
    }

    private void Damage(int dmg)
    {
        // Need to fix the Enemy health script
    }
}
