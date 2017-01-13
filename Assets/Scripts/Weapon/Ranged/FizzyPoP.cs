using UnityEngine;
using System.Collections;
using System;

public class FizzyPoP : Ranged
{

    [Header("Fizzy PoP Gun")]

    #region Floats
    [SerializeField]
    private float m_MaxSprayCharge = 5f;
    [SerializeField]
    private float m_HealShootSpeed = 0f;
    #endregion

    #region Bools
    private bool m_IsDown = false;
    private bool m_CanHeal = false;
    #endregion

    #region Components
    private Player Player;
    private GameObject FizzyCone;
    #endregion

    void Start()
    {
        FizzyCone = transform.FindChild("FizzyGunCone").gameObject;
        FizzyCone.SetActive(false);
        Player = GetComponentInParent<Player>();
    }

    void Update()
    {
        #region Primary Attack
        // Shoot if Button Down
        //if (Input.GetAxisRaw(Player.m_PrimaryAttack + Player.getControllerAsString()) == 1 && m_IsDown)
        //    ShootSpray();    
        //else
        //    FizzyCone.SetActive(false);
        //  1) Problem with line 33
        //  2) FizzyGun Transform.position on load is wrong.
        #endregion

        #region Secoindary Attack
        // Shoot if Button Down
        if (Input.GetAxisRaw(Player.m_SecondaryAttack + Player.getControllerAsString()) == 1 && m_CanHeal)
        {
            ShootHeal();
        }
        #endregion
    }


    public override void primaryAttack()
    {
        float timePressed = 0;

        // Check for CD timers
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            while (timePressed < m_MaxSprayCharge)
            {
                m_IsDown = true;
                timePressed += Input.GetAxisRaw(Player.m_PrimaryAttack + Player.getControllerAsString()) * Time.deltaTime;
            }
            m_IsDown = false;
        }

    }

    public override void secondaryAttack()
    {
        if (m_SecondaryCoolDown <= Time.time - m_Weapon2Cooldown || m_SecondaryCoolDown == 0)
        {
            m_CanHeal = true;
        }
    }

    private void ShootSpray()
    {
        FizzyCone.SetActive(true);
        // Create Timer for cone scale reduction
    }

    private void ShootHeal()
    {
        GameObject healShoot;
        healShoot = (GameObject)Instantiate(m_LeftTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
        assignDamage(healShoot);
        healShoot.GetComponent<Rigidbody>().AddForce(healShoot.transform.up * m_HealShootSpeed);   // Transform Forward is shooting backwards
        m_CanHeal = false;
    }

    private void assignDamage(GameObject bullet)
    {
        if (bullet.GetComponent<Damage>() != null)
        {
            bullet.GetComponent<Damage>().m_Damage = this.m_DamageOrHeal;
        }
        else
        {
            Debug.Log("Bullet doesn't have a Damage Component");
        }
    }
}