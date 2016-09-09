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

    public enum PLAYER
    {
        P1,
        P2,
        P3,
        P4
    }

    // Player stats
    public string m_PlayerName;
    public PLAYER m_Player;
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
        //m_HealthText.text = "Health: " + m_Health.ToString();

        updateWeapon();
       /* if (Input.GetMouseButtonDown(0))
        {
            attack(ATTACKTYPE.PRIMARY);
        }
        if (Input.GetMouseButtonDown(1))
        {
            attack(ATTACKTYPE.SECONDARY);
        }*/

        //Primary Attack
        if (Input.GetButtonDown(m_PrimaryAttack))
        {
            attack(ATTACKTYPE.PRIMARY);
        }

        //Secondary Attack
        if (Input.GetButtonDown(m_SecondaryAttack))
        {
            attack(ATTACKTYPE.SECONDARY);
        }

        //Pause
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

        if(Input.GetButtonDown(m_Interact))
        {

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

    public void save()
    {
        switch (m_Player)
        {
            case PLAYER.P1:
                GameManager.m_Instance.m_Player1.name = m_PlayerName;
                GameManager.m_Instance.m_Player1.player = m_Player;
                GameManager.m_Instance.m_Player1.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player1.gold = m_Gold;
                GameManager.m_Instance.m_Player1.health = m_Health;
                GameManager.m_Instance.m_Player1.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player1.weaponID = m_WeaponID;
                break;
            case PLAYER.P2:
                GameManager.m_Instance.m_Player2.name = m_PlayerName;
                GameManager.m_Instance.m_Player2.player = m_Player;
                GameManager.m_Instance.m_Player2.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player2.gold = m_Gold;
                GameManager.m_Instance.m_Player2.health = m_Health;
                GameManager.m_Instance.m_Player2.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player2.weaponID = m_WeaponID;
                break;
            case PLAYER.P3:
                GameManager.m_Instance.m_Player3.name = m_PlayerName;
                GameManager.m_Instance.m_Player3.player = m_Player;
                GameManager.m_Instance.m_Player3.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player3.gold = m_Gold;
                GameManager.m_Instance.m_Player3.health = m_Health;
                GameManager.m_Instance.m_Player3.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player3.weaponID = m_WeaponID;
                break;
            case PLAYER.P4:
                GameManager.m_Instance.m_Player4.name = m_PlayerName;
                GameManager.m_Instance.m_Player4.player = m_Player;
                GameManager.m_Instance.m_Player4.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player4.gold = m_Gold;
                GameManager.m_Instance.m_Player4.health = m_Health;
                GameManager.m_Instance.m_Player4.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player4.weaponID = m_WeaponID;
                break;
        }
    }

    public void load()
    {
        switch (m_Player)
        {
            case PLAYER.P1:
                m_PlayerName = GameManager.m_Instance.m_Player1.name;
                m_Player = GameManager.m_Instance.m_Player1.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player1.attackSpeed;
                m_Gold = GameManager.m_Instance.m_Player1.gold;
                m_Health = GameManager.m_Instance.m_Player1.health;
                m_MaxHealth = GameManager.m_Instance.m_Player1.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player1.weaponID;
                break;
            case PLAYER.P2:
                m_PlayerName = GameManager.m_Instance.m_Player2.name;
                m_Player = GameManager.m_Instance.m_Player2.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player2.attackSpeed;
                m_Gold = GameManager.m_Instance.m_Player2.gold;
                m_Health = GameManager.m_Instance.m_Player2.health;
                m_MaxHealth = GameManager.m_Instance.m_Player2.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player2.weaponID;
                break;
            case PLAYER.P3:
                m_PlayerName = GameManager.m_Instance.m_Player3.name;
                m_Player = GameManager.m_Instance.m_Player3.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player3.attackSpeed;
                m_Gold = GameManager.m_Instance.m_Player3.gold;
                m_Health = GameManager.m_Instance.m_Player3.health;
                m_MaxHealth = GameManager.m_Instance.m_Player3.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player3.weaponID;
                break;
            case PLAYER.P4:
                m_PlayerName = GameManager.m_Instance.m_Player4.name;
                m_Player = GameManager.m_Instance.m_Player4.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player4.attackSpeed;
                m_Gold = GameManager.m_Instance.m_Player4.gold;
                m_Health = GameManager.m_Instance.m_Player4.health;
                m_MaxHealth = GameManager.m_Instance.m_Player4.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player4.weaponID;
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
        Health health = other.GetComponent<Health>();

        if (other.tag == "Health")
        {
            if (m_Health <= 90)
            {
                m_Health = m_Health + health.Health_value;
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
