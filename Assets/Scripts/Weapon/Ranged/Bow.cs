using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

    public Player player;
    [SerializeField]
    public float m_MaxSpeed;
    [SerializeField]    
    private float m_MinSpeed;

    protected float m_timePressed = 0;
   
    private bool wasDown = false;
    protected bool pierce = false;

    RaycastHit hit;
    

    // Use this for initialization
    void Start ()
    {
        player = GetComponentInParent<Player>();        
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (m_CoolDown <= Time.time - m_AttackInterval || m_CoolDown == 0)
        {
            //Shoot if button up
            if (Input.GetAxisRaw(player.m_PrimaryAttack) == 0 && wasDown)
            {
                shoot();
                wasDown = false;
            }
        }
    }

    void FixedUpdate()
    {
        Vector3 fwd = transform.TransformDirection(Vector3.forward);

        if (Physics.Raycast(transform.position, fwd, out hit, 5))
            Debug.Log(hit.collider.gameObject.name);
        
    }

    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_AttackInterval || m_CoolDown == 0)
        {
            //Temp Script
            /*
            GameObject balloon01;
            balloon01 = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            balloon01.GetComponent<Rigidbody>().AddForce(balloon01.transform.forward * m_ProjectileSpeed);
            m_CoolDown = Time.time;
            */
    
            if (m_timePressed < m_MaxSpeed)
            {
                if(m_timePressed < m_MinSpeed)
                {
                    m_timePressed = m_MinSpeed;
                }
                m_timePressed += Input.GetAxisRaw(player.m_PrimaryAttack) % Time.deltaTime;
            }

            if (m_timePressed >= m_MaxSpeed) 
            {
                m_timePressed = m_MaxSpeed;
                pierce = true;
            }
            //else
                //pierce = false;

            wasDown = true;
            Debug.Log(m_timePressed);

        }
    }

    public override void secondaryAttack()
    {

        if (m_SecondaryCoolDown <= Time.time - m_SecondaryAttackSpeed || m_SecondaryCoolDown == 0)
        {

            GameObject bigBalloon;
            bigBalloon = (GameObject)Instantiate(m_Projectile02, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            bigBalloon.GetComponent<Rigidbody>().AddForce(bigBalloon.transform.forward * m_ProjectileSpeed02);

            m_SecondaryCoolDown = Time.time;

        }
        
    }

    private void shoot()
    {
        GameObject balloon;
        balloon = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

        balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_ProjectileSpeed * m_timePressed);

        m_timePressed = 0;

        m_CoolDown = Time.time;
    }
}
