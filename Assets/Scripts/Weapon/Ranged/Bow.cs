using UnityEngine;
using System.Collections;
using System;
using UnityEngine.UI;

public class Bow : Ranged
{
    [Header("WaterBalloon Bow")]
    #region Floats
    [SerializeField]
    private float m_BulletSpeed;
    [SerializeField]
    private float m_BombSpeed;
    [SerializeField]
    private float m_BulletSpeedMultiplier;

    [Header("Laser")]
    public float m_LaserDmgMultiplier;
    [SerializeField]
    private float m_LaserTimer;
    public float m_LaserWidth;
    public float m_LaserLenght;
    #endregion
    #region Bools
    private bool m_CanFirePrimary = false;
    private bool m_CanFireSecondary = false;
    #endregion
    #region Components
    private Player Player;
    private GameObject Laser;
    #endregion
    [Header("FX")]
    #region VFX
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

    [Header("Test Components")]
    #region Test
    public float m_MaxChargeTimer;       
    #endregion

    void start()
    {
        Player = GetComponent<Player>();
        Laser = transform.FindChild("laser").gameObject;

        m_ChargingVFX.gameObject.SetActive(false);
        m_ChargedVFX.gameObject.SetActive(false);
    }

    private void Update()
    {
        //ChargeVFX();

        #region Primary Attack
        if (m_CanFirePrimary)
            ShootPrimary();
        #endregion

        #region Secondary Attack
        if (m_CanFireSecondary)
            ShootSecondary();
        #endregion
    }

    public override void primaryAttack()
    {
        if(m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            float chargeTimer = 0f;
            chargeTimer += Time.deltaTime;
            
 // This needs work  


            if (chargeTimer < (m_MaxChargeTimer * .5))
            {
                m_CanFirePrimary = true;
                m_CoolDown = Time.time;
            }
            else if (chargeTimer >= (m_MaxChargeTimer * .5) && chargeTimer < m_MaxChargeTimer)
            {
                m_BulletSpeed *= m_BulletSpeedMultiplier;
                m_CanFirePrimary = true;
                m_CoolDown = Time.time;
            }
            else
            {
                chargeTimer = m_MaxChargeTimer;
                Debug.Log("BOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOM");
                //StopCoroutine(ShootLaser());
                //StartCoroutine(ShootLaser());
                m_CoolDown = Time.time;
            }       
            chargeTimer = 0f;
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

    private IEnumerator ShootLaser()
    {
        Laser.transform.position = transform.position;
        Laser.transform.rotation = transform.rotation;
        Laser.GetComponent<LineRenderer>().enabled = true;
        Laser.transform.parent = null;
       
        #region LaserVFX
        if (m_LaserBeamVFX != null)
        {
            GameObject laserMF;
            laserMF = (GameObject)Instantiate(m_LaserBeamVFX, transform.position, transform.rotation);
            Destroy(laserMF, m_LaserTimer);
        }
        #endregion

        yield return new WaitForSeconds(m_LaserTimer);
        Laser.GetComponent<LineRenderer>().enabled = false;
    }

    private void AssignDamage(GameObject bullet, int multiplier)
    {
        if (bullet.GetComponent<Damage>() != null)
            bullet.GetComponent<Damage>().m_Damage = m_Damage * multiplier;
        else
            Debug.Log("Bullet doesn't have a Damage Component.");
    }

    private void ChargeVFX()
    {
        //if (m_TimePressed > 0 && m_TimePressed < m_MaxCharge)
        //{
        //    if (chargingVFX != null)
        //    {
        //        chargingVFX.gameObject.SetActive(true);
        //    }
        //}
        //else if (m_TimePressed >= m_MaxCharge)
        //{
        //    if (chargingVFX != null && chargedVFX != null)
        //    {
        //        chargingVFX.gameObject.SetActive(false);
        //        chargedVFX.gameObject.SetActive(true);
        //    }
        //}
        //else
        //{
        //    if (chargingVFX != null && chargedVFX != null)
        //    {
        //        chargingVFX.gameObject.SetActive(false);
        //        chargedVFX.gameObject.SetActive(false);
        //    }
        //}
    }

}