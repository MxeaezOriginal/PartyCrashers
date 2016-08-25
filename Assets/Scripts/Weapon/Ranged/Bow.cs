using UnityEngine;
using System.Collections;
using System;

public class Bow : Ranged {

	// Use this for initialization
	void Start () {
    }
	
	// Update is called once per frame
	void Update () {
    }

    public override void primaryAttack()
    {
        Debug.Log("Bow Primary Attack");

        if (m_CoolDown <= Time.time - m_AttackSpeed || m_CoolDown == 0)
        {
            GameObject bullet;
            bullet = (GameObject)Instantiate(m_Projectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * m_ProjectileSpeed);
            Destroy(bullet, 10f);

            m_CoolDown = Time.time;
        }
    }

    public override void secondaryAttack()
    {
        Debug.Log("Bow Secondary Attack");

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
