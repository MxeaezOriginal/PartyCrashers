using UnityEngine;
using System.Collections;
using System;
using UnityEngine.UI;

public class Bow : Ranged
{
    [Header("WaterBalloon Bow")]
    #region Ints
    [SerializeField]
    private int m_MaxBullets;
    private int m_bulletsLeft;
    #endregion
    #region Floats
    [SerializeField]
    private float m_BulletSpeed;
    [SerializeField]
    private float BulletRegenTimer = 1.0f;
    [SerializeField]
    private float m_BombSpeed;
    private float timer;
    #endregion
    #region Bools
    private bool m_CanFirePrimary = false;
    private bool m_CanFireSecondary = false;
    #endregion
    #region Components
    private Player Player;
    private GameObject Laser;
    #endregion
    #region VFX
    [Header("FX")]
    [SerializeField]
    private GameObject m_PrimaryFlashVFX;
    [SerializeField]
    private GameObject m_SecondaryFlashVFX;
    [SerializeField]
    private GameObject m_ChargingVFX;
    [SerializeField]
    private GameObject m_ChargedVFX;
    [SerializeField]
    private GameObject m_LaserBeamVFX;
    #endregion
    #region SFX
    private AudioManager SFXManager;
    private GameObject SFXPlayer;
    private AudioClip[] SFXlowcharge;
    private AudioClip[] SFXmedcharge;
    private AudioClip[] SFXhighcharge;
    private AudioClip SFXtoPlay;
    #endregion

    #region Test
    //[Header("Test Components")]
    #endregion

    void start()
    {
        Player = GetComponent<Player>();
        Laser = transform.FindChild("laser").gameObject;

        m_ChargingVFX.gameObject.SetActive(false);
        m_ChargedVFX.gameObject.SetActive(false);

        //Test 
        //m_bulletsLeft = m_MaxBullets;
    }

    private void Update()
    {
        //ChargeVFX();
        Debug.Log(m_bulletsLeft);
       
        #region Primary Attack
        Bullets();
        if (m_CanFirePrimary)
            ShootPrimary();
        #endregion

        #region Secondary Attack
        if (m_CanFireSecondary)
            ShootSecondary();
        #endregion
    }

    private void Bullets()
    {
        timer += Time.deltaTime;

        if (m_bulletsLeft < m_MaxBullets)
        {
            if(timer >= BulletRegenTimer)
            {
                timer = 0.0f;
                m_bulletsLeft ++;
            }
        }
    }

    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            if (m_bulletsLeft != 0)
            {
                m_CanFirePrimary = true;
                m_bulletsLeft--;
            }
         
            m_CoolDown = Time.time;
        }
    }

    public override void secondaryAttack()
    {
        if(m_SecondaryCoolDown <= Time.time - m_Weapon2Cooldown || m_SecondaryCoolDown == 0)
        {
            m_CanFireSecondary = true;
            m_SecondaryCoolDown = Time.time;
        }
    }

    private void ShootPrimary()
    {
        GameObject bullet;
        bullet = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
        bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * m_BulletSpeed);
        AssignDamage(bullet, 1);
        m_CanFirePrimary = false;
    }

    private void ShootSecondary()
    {
        GameObject bomb;
        bomb = (GameObject)Instantiate(m_LeftTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);                
        bomb.GetComponent<Rigidbody>().AddForce(bomb.transform.forward * m_BombSpeed);                
        m_CanFireSecondary = false;        
    }

    private void AssignDamage(GameObject bullet, int multiplier)
    {
        if (bullet.GetComponent<Damage>() != null)
            bullet.GetComponent<Damage>().m_Damage = m_Damage * multiplier;
        else
            Debug.Log("Bullet doesn't have a Damage Component.");
    }

    //private void ChargeVFX()
    //{
    //    if (m_ChargingVFX != null && m_ChargedVFX != null)
    //    {
    //        if (m_ChargeTimer > 0 && m_ChargeTimer < m_MaxChargeTimer)
    //            m_ChargingVFX.gameObject.SetActive(true);
    //        else if (m_ChargeTimer >= m_MaxChargeTimer)
    //        {
    //            m_ChargingVFX.gameObject.SetActive(false);
    //            m_ChargedVFX.gameObject.SetActive(true);
    //        }
    //        else
    //        {
    //            m_ChargingVFX.gameObject.SetActive(false);
    //            m_ChargedVFX.gameObject.SetActive(false);
    //        }
    //    }
    //}

}    // End