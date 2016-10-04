using UnityEngine;
using System.Collections;
using System;

public class RaveGun : Ranged {

    private int firepointRandom;
    private GameObject setFirepoint;

	// Use this for initialization
	void Start () {
    
    }
	
	// Update is called once per frame
	void Update () {
    }

    public override void primaryAttack()
    {
        Debug.Log("Rave Blast");

        if (m_CoolDown <= Time.time - m_AttackSpeed || m_CoolDown == 0)
        {
            firepointRandom = UnityEngine.Random.Range(0, m_FirePoint.Length);
            setFirepoint = m_FirePoint[firepointRandom];

            GameObject bullet;
            bullet = (GameObject)Instantiate(m_Projectile, setFirepoint.gameObject.transform.position, setFirepoint.gameObject.transform.rotation);

            bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * m_ProjectileSpeed);

            m_CoolDown = Time.time;
        }
    }

    public override void secondaryAttack()
    {
        Debug.Log("Rave Gun Secondary Attack");

        if (m_CoolDown <= Time.time - m_AttackSpeed || m_CoolDown == 0)
        {
            for (int i = 0; i < m_FirePoint.Length; i++)
            {
                firepointRandom = UnityEngine.Random.Range(0, m_FirePoint.Length);
                setFirepoint = m_FirePoint[firepointRandom];

                GameObject bullet;
                bullet = (GameObject)Instantiate(m_Projectile, setFirepoint.gameObject.transform.position, setFirepoint.gameObject.transform.rotation);

                bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * m_ProjectileSpeed);

            }
        }
    }
}
