using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

    [Header("Bow Setting")]
    [Tooltip("Maximum Charging Time.")]
    public float m_MaxCharge = 0f;
    [SerializeField][Tooltip("Maximum Shooting Speed.")]
    private float m_MaxSpeed = 0f;
    [SerializeField][Tooltip("Medium Shooting Speed.")]
    private float m_MedSpeed = 0f;
    [SerializeField][Tooltip("Low Shooting Speed.")]
    private float m_LowSpeed;
    [SerializeField][Tooltip("Minimum Shooting Speed.")]
    private float m_MinSpeed = 0f;
    [HideInInspector]
    public float m_timePressed = 0f;
    [HideInInspector]
    public bool pierce = false;
    [HideInInspector]
    private bool wasDown = false;
    [HideInInspector]
    public int bulletDamage = 0;
    [SerializeField][Tooltip("Multiplies the initial Damage the bullet does at Half charge.")]
    private int midDmgMultiplier;
    [SerializeField][Tooltip("Multiplies the initial Damage the bullet does at Full charge.")]
    private int maxDmgMultiplier;
    Damage dmg;

    //PlayerController playerController;  // Slow player Movement
    Player player;

    Ray ray;
    RaycastHit hit;
    // Add the fire particle effect to the raycast so that its visible when fully charged
    // when weapon is fully charged, do not shoot projectile, only raycast particle effect
    // http://addcomponent.com/lesson-4-shooting-stuff-with-unity-3d-raycasting/



    void Start ()
    {
        dmg = GetComponent<Damage>();
        player = GetComponentInParent<Player>();
        //playerController = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>();          
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
        Vector3 fwd = transform.TransformDirection(Vector3.forward);

        if (Physics.Raycast(transform.position, fwd, out hit, 5f))
            Debug.Log(hit.collider.gameObject.name);
        
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

            if (m_timePressed >= m_MaxCharge)   //MaxCharge not working correctly
            {
                m_timePressed = m_MaxCharge;                
                //playerController.m_TurnSpeed = playerController.m_TurnSpeed / 2;
                pierce = true;                
            }
            wasDown = true;
            //Debug.Log(m_timePressed);
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
            bulletDamage = m_Damage;
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_LowSpeed * m_timePressed);       
        }
        else if(m_timePressed >= (m_MaxCharge / 2) && m_timePressed < m_MaxCharge)
        {
            bulletDamage = m_Damage * midDmgMultiplier;
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_MedSpeed * m_timePressed);
        }
        else
        {
            bulletDamage = m_Damage * maxDmgMultiplier;
            // Activate the beam who is a children of this gameobject
            //GameObject beam = GameObject.Find("WaterBalloonFullChargeBeam");
            //beam.SetActive(true);
            //Destroy it after half a second
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_MaxSpeed * m_timePressed);
        }       

        m_timePressed = 0;
        m_CoolDown = Time.time;        
    }


}
