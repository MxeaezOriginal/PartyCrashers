using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

    public float m_Pressed = 0;
    public Player player;

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

            m_Pressed = Input.GetAxis(player.m_PrimaryAttack);

            Debug.Log(m_Pressed);

            /*
            GameObject balloon;
            balloon = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_ProjectileSpeed02);

            m_CoolDown = Time.time;
            */
        }
    }

    public override void secondaryAttack()
    {

        Debug.Log("BOW");

        if (m_CoolDown <= Time.time - m_AttackSpeed || m_CoolDown == 0)
        {
            for (int i = 0; i < m_FirePoint.Length; i++)
            {

                GameObject bullet;
                bullet = (GameObject)Instantiate(m_Projectile, m_FirePoint[i].gameObject.transform.position, m_FirePoint[i].gameObject.transform.rotation);

                bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * m_ProjectileSpeed);
                //Destroy(bullet, 10f);
            }
        }
    }
}
