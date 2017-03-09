using UnityEngine;
using System.Collections;
using System;

public class FizzyPoP : Ranged
{

    [Header("Fizzy PoP Gun")]

    #region Floats
    [SerializeField]
    private float m_SprayTimer = 5f;
    [SerializeField]
    private float m_FallOffTimer = 2f;
    [SerializeField]
    private float m_AngleModifier = .5f;
    [SerializeField]
    private float m_FireHealthVFXTimer;
    [SerializeField]
    private float m_ProjectileSpeed02;
    #endregion

    #region Bools
    private bool m_IsDown = false;
    private bool m_CanHeal = false;

    #endregion

    #region Components
    private Player Player;
    private GameObject FizzyCone;
    [SerializeField]
    private GameObject ShootSprayVFX;
    [SerializeField]
    private GameObject FallOffSprayVFX;
    [SerializeField]
    private GameObject VFXFirePoint;
    #endregion

    void Start()
    {
        FizzyCone = transform.FindChild("FizzyGunCone").gameObject;
        FizzyCone.transform.SetParent(m_FirePoint[1].transform);
        FizzyCone.GetComponent<Damage>().m_Damage = m_Damage;
        FizzyCone.SetActive(false);
        Player = GetComponentInParent<Player>();
    }

    void Update()
    {
        #region Primary Attack
        // Shoot if Button Down
        if (m_IsDown)
            ShootSpray();
        #endregion

        #region Secondary Attack
        // Shoot if Button Down
        if (m_CanHeal)
        {
            ShootHeal();
            Debug.Log("Is Shooting Spray");
        }
        #endregion

    }


    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            m_IsDown = true;
            m_CoolDown = Time.time;
        }
    }

    public override void secondaryAttack()
    {
        if (m_SecondaryCoolDown <= Time.time - m_Weapon2Cooldown || m_SecondaryCoolDown == 0)
        {
            m_CanHeal = true;
            m_SecondaryCoolDown = Time.time;
        }
    }

    private void ShootSpray()
    {
        FizzyCone.SetActive(true);
        StopCoroutine(ShootSprayTimer());
        StartCoroutine(ShootSprayTimer());
        m_IsDown = false;

        #region Fizzy Shoot VFX
        bool ShootSprayVFXBool = false;
             
        if (ShootSprayVFX != null)
        {
            if (!ShootSprayVFXBool)
            {
                GameObject ShootSprayGO;
                ShootSprayGO = (GameObject)Instantiate(ShootSprayVFX, m_FirePoint[1].transform.position, transform.rotation);
                ShootSprayGO.transform.parent = m_FirePoint[1].transform.parent.transform.parent;
                ShootSprayGO.transform.Rotate(new Vector3(-90, 0, 0));
                ShootSprayGO.transform.localScale = new Vector3(1, 1, 1);
                ShootSprayVFXBool = true;
                Destroy(ShootSprayGO, (m_SprayTimer - 1f));

                StopCoroutine(FallOffTimer());
                StartCoroutine(FallOffTimer());                
            }
        }
        #endregion
    }

    private void ShootHeal()
    {
        GameObject healPrefab;
        healPrefab = (GameObject)Instantiate(m_LeftTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
        healPrefab.GetComponent<Rigidbody>().AddForce(healPrefab.transform.forward * m_ProjectileSpeed02);
        m_CanHeal = false;
    }

    private IEnumerator ShootSprayTimer()
    {
        yield return new WaitForSeconds(m_SprayTimer);
        FizzyCone.SetActive(false);
    }

    private IEnumerator FallOffTimer()
    {
        bool ShootSprayFallOffVFXBool = false;
        yield return new WaitForSeconds(m_SprayTimer - 1.5f);
        if (FallOffSprayVFX != null)
        {
            if (!ShootSprayFallOffVFXBool)
            {
                GameObject FallOffSpray;
                FallOffSpray = (GameObject)Instantiate(FallOffSprayVFX, m_FirePoint[1].transform.position, transform.rotation);
                FallOffSpray.transform.parent = m_FirePoint[1].transform.parent.transform.parent;
                FallOffSpray.transform.Rotate(new Vector3(-90, -90, 0));
                FallOffSpray.transform.localScale = new Vector3(1, 1, 1);
                ShootSprayFallOffVFXBool = true;
                Destroy(FallOffSpray, (m_FallOffTimer + 2));
            }
        }
    }

    private void assignDamage(GameObject bullet)
    {
        if (bullet.GetComponent<Damage>() != null)
        {
            bullet.GetComponent<Damage>().m_Damage = m_Damage;
        }
        else
        {
            Debug.Log("Bullet doesn't have a Damage Component");
        }
    }
}