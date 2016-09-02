using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Player : MonoBehaviour
{

    private enum ATTACKTYPE
    {
        PRIMARY,
        SECONDARY
    }

    // Player stats
    public string m_PlayerName;
    public float m_AttackSpeed;
    public int m_Gold;
    public int m_Health;
    public int m_MaxHealth = 100;
    public int m_Collect;
    public WEAPONTYPE m_WeaponID;
    private Transform m_Weapon;

    //Input
    public string m_PrimaryAttack = "Primary_";
    public string m_SecondaryAttack = "Secondary_";
    public string m_Interact = "Interact_";
    public string m_Silly = "Silly_";
    public string m_Stats = "Stats_";
    public string m_Pause = "Pause_";

    public Text m_HealthText;
    public Text m_Score;

    // Use this for initialization
    void Start()
    {
        m_Health = m_MaxHealth;
        //m_collect = 0;

    }

    // Update is called once per frame
    void Update()
    {
        m_HealthText.text = "Health: " + m_Health.ToString();

        updateWeapon();
        if (Input.GetMouseButtonDown(0))
        {
            attack(ATTACKTYPE.PRIMARY);
        }
        if (Input.GetMouseButtonDown(1))
        {
            attack(ATTACKTYPE.SECONDARY);
        }
        if (Input.GetButtonDown(m_Pause))
        {
            if (m_WeaponID == WEAPONTYPE.SWORD)
            {
                setWeapon(WEAPONTYPE.BOW);
            }
            else
            {
                setWeapon(WEAPONTYPE.SWORD);
            }
        }
    }

    void updateWeapon()
    {
        Transform weapons = transform.FindChild("Weapon");
        foreach (Transform child in weapons)
        {
            if (child.gameObject.GetComponent<WeaponID>().m_WeaponType == m_WeaponID)
            {
                child.gameObject.SetActive(true);
                m_Weapon = child;
            }
            else
            {
                child.gameObject.SetActive(false);
            }
        }
    }

    void setWeapon(WEAPONTYPE newWeapon)
    {
        m_WeaponID = newWeapon;
    }

    void attack(ATTACKTYPE a)
    {
        switch (m_WeaponID)
        {
            case WEAPONTYPE.SWORD:
                if (a == ATTACKTYPE.PRIMARY)
                {
                    m_Weapon.gameObject.GetComponent<Sword>().primaryAttack();
                }
                else if (a == ATTACKTYPE.SECONDARY)
                {
                    m_Weapon.gameObject.GetComponent<Sword>().secondaryAttack();
                }
                break;
            case WEAPONTYPE.BOW:
                if (a == ATTACKTYPE.PRIMARY)
                {
                    m_Weapon.gameObject.GetComponent<Bow>().primaryAttack();
                }
                else if (a == ATTACKTYPE.SECONDARY)
                {
                    m_Weapon.gameObject.GetComponent<Bow>().secondaryAttack();
                }
                break;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("bow"))
        {
            Destroy(other.gameObject);
            setWeapon(WEAPONTYPE.BOW);
        }
        if (other.gameObject.CompareTag("sword"))
        {
            Destroy(other.gameObject);
            setWeapon(WEAPONTYPE.SWORD);
        }
    }

    public void OnCollisionEnter(Collision coll)
    {

        if (coll.gameObject.tag == "Enemy")
        {

            m_Health = m_Health - 1;

            //CheckWinCondition();
            //}
        }

        else
        {

        }
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.tag == "Health")
        {
            if (m_Health <= 90)
            {
                m_Health = m_Health + 10;
            }
            else if (m_Health > 90 && m_Health < m_MaxHealth)
            {
                m_Health = m_MaxHealth;
            }
            else // FizzPop
            {

            }
            other.gameObject.SetActive(false);
        }
        //else if (other.tag == "Coins")
        //{
        //    m_Score
        //}
    }
}
