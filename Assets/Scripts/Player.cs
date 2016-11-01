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
        P1 = 1,
        P2 = 2,
        P3 = 3,
        P4 = 4
    }

    // Player stats
    public string m_PlayerName;
    public PLAYER m_Player;
    public float m_AttackSpeed;
    public int m_Gold;
	public int m_Score;
    //public int m_Health;
    //public int m_MaxHealth;
    //public int m_Collect;
    public WEAPONTYPE m_WeaponID;
    public float m_CheckLocationCooldown;
    //To hold location every x seconds to respawn to
    public Vector3 m_Location;
    //To hold location when leave scene
    public Vector3 m_LastLocation;
    private Transform m_Weapon;
    private HeartSystem m_Heart;
    private CharacterController m_CharController;

    //Input
    public string m_PrimaryAttack = "Primary_";
    public string m_SecondaryAttack = "Secondary_";
    public string m_Interact = "Interact_";
    public string m_Silly = "Silly_";
    public string m_Stats = "Stats_";
    public string m_Pause = "Pause_";

    public bool m_UsingKeyboard;

    private bool m_UsingKeyboardSave;

    private string m_PrimaryAttackSave;
    private string m_SecondaryAttackSave;
    private string m_InteractSave;
    private string m_SillySave;
    private string m_StatsSave;
    private string m_PauseSave;
    public float delay = 2.0f;

    //float m_LastShotTime;
    //public float DamageInterval = 2f;

    // Cooldown tracker for grabbing current location
    private float m_CurrentCooldown;

    // Use this for initialization
    void Start()
    {
        m_Heart = GetComponent<HeartSystem>();
        m_CharController = GetComponent<CharacterController>();
        m_PrimaryAttackSave = m_PrimaryAttack;
        m_SecondaryAttackSave = m_SecondaryAttack;
        m_InteractSave = m_Interact;
        m_SillySave = m_Silly;
        m_StatsSave = m_Stats;
        m_PauseSave = m_Pause;

        m_UsingKeyboardSave = !m_UsingKeyboard;
        //Debug.Log(m_UsingKeyboardSave);
    }

    // Update is called once per frame
    void Update()
    {
        if (m_Heart.IsDead() || Input.GetKeyDown(KeyCode.Y))
        {
            respawn();
        }
        if (m_CharController.isGrounded)
        {
            if (m_CurrentCooldown <= Time.time - m_CheckLocationCooldown || m_CurrentCooldown == 0)
            {
                m_Location = transform.position;

                m_CurrentCooldown = Time.time;
            }
        }
        if (m_UsingKeyboard == false && m_UsingKeyboardSave == true)
        {
            m_PrimaryAttack = m_PrimaryAttackSave;
            m_SecondaryAttack = m_SecondaryAttackSave;
            m_Interact = m_InteractSave;
            m_Silly = m_SillySave;
            m_Stats = m_StatsSave;
            m_Pause = m_PauseSave;

            m_UsingKeyboardSave = false;
        }
        else if (m_UsingKeyboard == true && m_UsingKeyboardSave == false)
        {
            m_PrimaryAttack = "Primary_Keyboard";
            m_SecondaryAttack = "Secondary_Keyboard";
            m_Interact = "Interact_Keyboard";
            m_Silly = "Silly_Keyboard";
            m_Stats = "Stats_Keyboard";
            m_Pause = "Pause_Keyboard";

            m_UsingKeyboardSave = true;
        }
        updateWeapon();

        //Primary Attack
        if (Input.GetAxisRaw(m_PrimaryAttack) == 1)
        {
            attack(ATTACKTYPE.PRIMARY);
        }

        //Secondary Attack
        if (Input.GetAxisRaw(m_SecondaryAttack) == 1)
        {
            attack(ATTACKTYPE.SECONDARY);
        }

        //Interact
        if (Input.GetButtonDown(m_Interact))
        {

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

        if (Input.GetButtonDown(m_Stats))
        {
            GetComponent<Stats>().ToggleWindow();
        }
        //if (Input.GetButtonUp(m_Stats))
        //{
        //    GetComponent<Stats>().ToggleWindow();
        //}
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

    public void respawn()
    {
        transform.position = m_Location;

        m_Heart.curHealth = m_Heart.maxHealth;
        m_Heart.UpdateHearts();
        Debug.Log("Respawned");
    }

    public void damage(int damageAmount)
    {
        m_Heart.TakeDamage(damageAmount);
    }

    public void heal(int healAmount)
    {
        m_Heart.Heal(healAmount);
    }

    public void save()
    {
        switch (m_Player)
        {
            case PLAYER.P1:
                GameManager.m_Instance.m_Player1.name = m_PlayerName;
                GameManager.m_Instance.m_Player1.player = m_Player;
                GameManager.m_Instance.m_Player1.attackSpeed = m_AttackSpeed;
                m_Score = GameManager.m_Instance.m_Player1.score;
                GameManager.m_Instance.m_Player1.gold = m_Gold;
                //GameManager.m_Instance.m_Player1.health = m_Health;
                //GameManager.m_Instance.m_Player1.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player1.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player1.lastLocation = m_LastLocation;
                break;
            case PLAYER.P2:
                GameManager.m_Instance.m_Player2.name = m_PlayerName;
                GameManager.m_Instance.m_Player2.player = m_Player;
                GameManager.m_Instance.m_Player2.attackSpeed = m_AttackSpeed;
                m_Score = GameManager.m_Instance.m_Player2.score;
                GameManager.m_Instance.m_Player2.gold = m_Gold;
                //GameManager.m_Instance.m_Player2.health = m_Health;
                //GameManager.m_Instance.m_Player2.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player2.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player2.lastLocation = m_LastLocation;
                break;
            case PLAYER.P3:
                GameManager.m_Instance.m_Player3.name = m_PlayerName;
                GameManager.m_Instance.m_Player3.player = m_Player;
                GameManager.m_Instance.m_Player3.attackSpeed = m_AttackSpeed;
                m_Score = GameManager.m_Instance.m_Player3.score;
                GameManager.m_Instance.m_Player3.gold = m_Gold;
                //GameManager.m_Instance.m_Player3.health = m_Health;
                //GameManager.m_Instance.m_Player3.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player3.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player3.lastLocation = m_LastLocation;
                break;
            case PLAYER.P4:
                GameManager.m_Instance.m_Player4.name = m_PlayerName;
                GameManager.m_Instance.m_Player4.player = m_Player;
                GameManager.m_Instance.m_Player4.attackSpeed = m_AttackSpeed;
                m_Score = GameManager.m_Instance.m_Player4.score;
                GameManager.m_Instance.m_Player4.gold = m_Gold;
                //GameManager.m_Instance.m_Player4.health = m_Health;
                //GameManager.m_Instance.m_Player4.maxHealth = m_MaxHealth;
                GameManager.m_Instance.m_Player4.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player4.lastLocation = m_LastLocation;
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
                m_Score = GameManager.m_Instance.m_Player1.score;
                m_Gold = GameManager.m_Instance.m_Player1.gold;
                //m_Health = GameManager.m_Instance.m_Player1.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player1.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player1.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player1.lastLocation;
                break;
            case PLAYER.P2:
                m_PlayerName = GameManager.m_Instance.m_Player2.name;
                m_Player = GameManager.m_Instance.m_Player2.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player2.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player2.score;
                m_Gold = GameManager.m_Instance.m_Player2.gold;
                //m_Health = GameManager.m_Instance.m_Player2.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player2.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player2.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player2.lastLocation;
                break;
            case PLAYER.P3:
                m_PlayerName = GameManager.m_Instance.m_Player3.name;
                m_Player = GameManager.m_Instance.m_Player3.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player3.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player3.score;
                m_Gold = GameManager.m_Instance.m_Player3.gold;
                //m_Health = GameManager.m_Instance.m_Player3.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player3.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player3.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player3.lastLocation;
                break;
            case PLAYER.P4:
                m_PlayerName = GameManager.m_Instance.m_Player4.name;
                m_Player = GameManager.m_Instance.m_Player4.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player4.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player4.score;
                m_Gold = GameManager.m_Instance.m_Player4.gold;
                //m_Health = GameManager.m_Instance.m_Player4.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player4.maxHealth;
                m_WeaponID = GameManager.m_Instance.m_Player4.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player4.lastLocation;
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

        if (other.gameObject.CompareTag("Health"))
        {
            m_Heart.Heal(2);
        }

        if (other.gameObject.CompareTag("Range"))
        {
            m_Heart.TakeDamage(1);
            Destroy(other.gameObject);
        }
        if (other.gameObject.CompareTag("MeleeEnemy"))
        {
            /*m_Heart.lastDamage += Time.deltaTime;
            if (m_Heart.lastDamage >= 2)
            {
                m_Heart.TakeDamage(2);
                m_Heart.lastDamage = 0;
            }*/
            m_Heart.TakeDamage(1);
            m_Heart.UpdateHearts();

        }
        if (other.gameObject.CompareTag("AddHeart"))
        {
            m_Heart.AddHeart();
            m_Heart.Heal(2);
            m_Heart.UpdateHearts();
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("OneDamage"))
        {
            m_Heart.TakeDamage(1);
            m_Heart.UpdateHearts();
        }
        if (other.gameObject.CompareTag("TwoDamage"))
        {
            m_Heart.TakeDamage(2);
            m_Heart.UpdateHearts();
        }
        //if (other.gameObject.CompareTag("ChaserEnemy"))
        //{
        //    m_Heart.TakeDamage(1);
        //    m_Heart.UpdateHearts();
        //}
    }

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("MeleeEnemy"))
        {
            m_Heart.lastDamage += Time.deltaTime;
            if (m_Heart.lastDamage >= 2)
            {
                m_Heart.TakeDamage(1);
                m_Heart.UpdateHearts();
                m_Heart.lastDamage = 0;
            }
        }
    }

    /*public void OnTriggerStay(Collider other)
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
    }*/
}
