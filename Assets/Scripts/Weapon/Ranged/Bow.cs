using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

    private float m_timePressed = 0;
    private float m_lastPressed = 0;

    public float m_speed = 2;
    public float m_speedMultiplier = 1.5f;

    public bool m_fire = false;

    public Player player;
    public GameObject playerObject;

    // Use this for initialization
    void Start () {

        player = GetComponentInParent<Player>();
    }
	
	// Update is called once per frame
	void Update () {
    }

    public override void primaryAttack()
    {

        if (m_CoolDown <= Time.time - m_AttackSpeed || m_CoolDown == 0)
        {

            GameObject bigBalloon;
            bigBalloon = (GameObject)Instantiate(m_Projectile02, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            bigBalloon.GetComponent<Rigidbody>().AddForce(bigBalloon.transform.forward * m_ProjectileSpeed02);

            m_CoolDown = Time.time;

            //Temp Script
            /*
            GameObject balloon01;
            balloon01 = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            balloon01.GetComponent<Rigidbody>().AddForce(balloon01.transform.forward * m_ProjectileSpeed);
            m_CoolDown = Time.time;
            */

            /*
            //The New Script
            m_lastPressed = m_timePressed;
            
            if (m_timePressed <= m_MaxSpeed)
            {
                m_timePressed += Input.GetAxis(player.m_PrimaryAttack) * Time.deltaTime;
            }

            if (m_lastPressed != m_timePressed)
            {
                m_fire = true;
            }

            Debug.Log(m_timePressed);

            if (m_fire)
            {
                {

                    GameObject balloon;
                    balloon = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

                    balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_ProjectileSpeed * m_timePressed);

                    m_timePressed = 0;

                    m_CoolDown = Time.time;

                    m_fire = false;

                }

        }
        //New Script End
        */
        }
    }

    public override void secondaryAttack()
    {

       GameObject bigBalloon;
        bigBalloon = (GameObject)Instantiate(m_Projectile02, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

        bigBalloon.GetComponent<Rigidbody>().AddForce(bigBalloon.transform.forward * m_ProjectileSpeed02);

        m_CoolDown = Time.time;
        
    }
}
