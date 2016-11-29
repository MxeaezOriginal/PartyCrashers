using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    public Rigidbody rb;

    Vector3 KnockBackDirection;
    Vector3 KnockBack;
    public float KnockBackSpeed = 1f;

    PlayerController playerController;

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

    public enum Controller
    {
        P1,
        P2,
        P3,
        P4,
        Keyboard
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
    //public WEAPONTYPE m_WeaponID;
    public float m_CheckLocationCooldown;
    //To hold location every x seconds to respawn to
    public Vector3 m_Location;
    //To hold location when leave scene
    public Vector3 m_LastLocation;
    private Transform m_Weapon;
    private HeartSystem m_Heart;
    private CharacterController m_CharController;
    private WeaponManager m_WeaponManager;

    //Input
    public string m_PrimaryAttack = "Primary_";
    public string m_SecondaryAttack = "Secondary_";
    public string m_Interact = "Interact_";
    public string m_Silly = "Silly_";
    public string m_Stats = "Stats_";
    public string m_Pause = "Pause_";

    public float delay = 2.0f;
    public float dotdelay = 2.0f;
    public Controller m_Controller;

    //float m_LastShotTime;
    //public float DamageInterval = 2f;

    // Cooldown tracker for grabbing current location
    private float m_CurrentCooldown;

    // Use this for initialization
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        m_Heart = GetComponent<HeartSystem>();
        m_CharController = GetComponent<CharacterController>();
        m_WeaponManager = GetComponent<WeaponManager>();
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

        //Primary Attack
        if (Input.GetAxisRaw(m_PrimaryAttack + m_Controller.ToString()) == 1)
        {
            attack(ATTACKTYPE.PRIMARY);
        }

        //Secondary Attack
        if (Input.GetAxisRaw(m_SecondaryAttack + m_Controller.ToString()) == 1)
        {
            attack(ATTACKTYPE.SECONDARY);
        }

        //Interact
        if (Input.GetButtonDown(m_Interact + m_Controller.ToString()))
        {

        }

        //Pause
        if (Input.GetButtonDown(m_Pause + m_Controller.ToString()))
        {
            /*if (m_WeaponID == WEAPONTYPE.SWORD)
            {
                setWeapon(WEAPONTYPE.BOW);
            }
            else
            {
                setWeapon(WEAPONTYPE.SWORD);
            }*/
        }

        if (Input.GetButtonDown(m_Stats + m_Controller.ToString()))
        {
            GetComponent<Stats>().ToggleWindow();
        }
        //if (Input.GetButtonUp(m_Stats))
        //{
        //    GetComponent<Stats>().ToggleWindow();
        //}
    }

    void attack(ATTACKTYPE a)
    {
        //If Current weapon is not assigned
        if (m_WeaponManager.m_CurrentWeapon != null)
        {
            //If current weapon has no component that inherits from Weapon
            if (m_WeaponManager.m_CurrentWeapon.GetComponent<Weapon>() != null)
            {
                //Use primary attack
                if (a == ATTACKTYPE.PRIMARY)
                {
                    m_WeaponManager.m_CurrentWeapon.GetComponent<Weapon>().primaryAttack();
                }
                //Use secondary attack
                else if (a == ATTACKTYPE.SECONDARY)
                {
                    m_WeaponManager.m_CurrentWeapon.GetComponent<Weapon>().secondaryAttack();
                }
            }
            else
            {
                Debug.Log("Error: Current Weapon has no component that inherits from Weapon");
            }
        }
        else
        {
            Debug.Log("Error: Current Weapon is NULL");
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

    public string getControllerAsString()
    {
        return m_Controller.ToString();
    }

    public Controller getController()
    {
        return m_Controller;
    }

    public void setController(Controller controller)
    {
        m_Controller = controller;
    }

    public void save()
    {
        switch (m_Player)
        {
            case PLAYER.P1:
                GameManager.m_Instance.m_Player1.name = m_PlayerName;
                GameManager.m_Instance.m_Player1.player = m_Player;
                GameManager.m_Instance.m_Player1.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player1.score = m_Score;
                GameManager.m_Instance.m_Player1.gold = m_Gold;
                //GameManager.m_Instance.m_Player1.health = m_Health;
                //GameManager.m_Instance.m_Player1.maxHealth = m_MaxHealth;
                //GameManager.m_Instance.m_Player1.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player1.lastLocation = m_LastLocation;
                GameManager.m_Instance.m_Player1.m_Controller = m_Controller;
                break;
            case PLAYER.P2:
                GameManager.m_Instance.m_Player2.name = m_PlayerName;
                GameManager.m_Instance.m_Player2.player = m_Player;
                GameManager.m_Instance.m_Player2.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player2.score = m_Score;
                GameManager.m_Instance.m_Player2.gold = m_Gold;
                //GameManager.m_Instance.m_Player2.health = m_Health;
                //GameManager.m_Instance.m_Player2.maxHealth = m_MaxHealth;
                //GameManager.m_Instance.m_Player2.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player2.lastLocation = m_LastLocation;
                GameManager.m_Instance.m_Player2.m_Controller = m_Controller;
                break;
            case PLAYER.P3:
                GameManager.m_Instance.m_Player3.name = m_PlayerName;
                GameManager.m_Instance.m_Player3.player = m_Player;
                GameManager.m_Instance.m_Player3.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player3.score = m_Score;
                GameManager.m_Instance.m_Player3.gold = m_Gold;
                //GameManager.m_Instance.m_Player3.health = m_Health;
                //GameManager.m_Instance.m_Player3.maxHealth = m_MaxHealth;
                //GameManager.m_Instance.m_Player3.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player3.lastLocation = m_LastLocation;
                GameManager.m_Instance.m_Player3.m_Controller = m_Controller;
                break;
            case PLAYER.P4:
                GameManager.m_Instance.m_Player4.name = m_PlayerName;
                GameManager.m_Instance.m_Player4.player = m_Player;
                GameManager.m_Instance.m_Player4.attackSpeed = m_AttackSpeed;
                GameManager.m_Instance.m_Player4.score = m_Score;
                GameManager.m_Instance.m_Player4.gold = m_Gold;
                //GameManager.m_Instance.m_Player4.health = m_Health;
                //GameManager.m_Instance.m_Player4.maxHealth = m_MaxHealth;
                //GameManager.m_Instance.m_Player4.weaponID = m_WeaponID;
                GameManager.m_Instance.m_Player4.lastLocation = m_LastLocation;
                GameManager.m_Instance.m_Player4.m_Controller = m_Controller;
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
                //m_WeaponID = GameManager.m_Instance.m_Player1.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player1.lastLocation;
                m_Controller = GameManager.m_Instance.m_Player1.m_Controller;
                break;
            case PLAYER.P2:
                m_PlayerName = GameManager.m_Instance.m_Player2.name;
                m_Player = GameManager.m_Instance.m_Player2.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player2.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player2.score;
                m_Gold = GameManager.m_Instance.m_Player2.gold;
                //m_Health = GameManager.m_Instance.m_Player2.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player2.maxHealth;
                //m_WeaponID = GameManager.m_Instance.m_Player2.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player2.lastLocation;
                m_Controller = GameManager.m_Instance.m_Player2.m_Controller;
                break;
            case PLAYER.P3:
                m_PlayerName = GameManager.m_Instance.m_Player3.name;
                m_Player = GameManager.m_Instance.m_Player3.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player3.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player3.score;
                m_Gold = GameManager.m_Instance.m_Player3.gold;
                //m_Health = GameManager.m_Instance.m_Player3.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player3.maxHealth;
                //m_WeaponID = GameManager.m_Instance.m_Player3.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player3.lastLocation;
                m_Controller = GameManager.m_Instance.m_Player3.m_Controller;
                break;
            case PLAYER.P4:
                m_PlayerName = GameManager.m_Instance.m_Player4.name;
                m_Player = GameManager.m_Instance.m_Player4.player;
                m_AttackSpeed = GameManager.m_Instance.m_Player4.attackSpeed;
                m_Score = GameManager.m_Instance.m_Player4.score;
                m_Gold = GameManager.m_Instance.m_Player4.gold;
                //m_Health = GameManager.m_Instance.m_Player4.health;
                //m_MaxHealth = GameManager.m_Instance.m_Player4.maxHealth;
                //m_WeaponID = GameManager.m_Instance.m_Player4.weaponID;
                m_LastLocation = GameManager.m_Instance.m_Player4.lastLocation;
                m_Controller = GameManager.m_Instance.m_Player4.m_Controller;
                break;
        }
    }

    void OnTriggerEnter(Collider other)
    {

        //if (other.gameObject.CompareTag("Health"))
        //{
        //    m_Heart.Heal(2);
        //}

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
        //if (other.gameObject.CompareTag("AddHeart"))
        //{
        //    m_Heart.AddHeart();
        //    m_Heart.Heal(2);
        //    m_Heart.UpdateHearts();
        //}
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
        if (other.gameObject.CompareTag("MeleeEnemy"))
        {
            rb.AddForce(transform.forward * 500);
        }
    }

    //void OnCollisionStay(Collision other)
    //{
    //    if (other.gameObject.CompareTag("MeleeEnemy"))
    //    {
    //        //m_Heart.lastDamage += Time.deltaTime;
    //        //if (m_Heart.lastDamage >= 2)
    //        //{
    //            KnockBackDirection = transform.position - other.transform.position;
    //            KnockBack = transform.position + KnockBackDirection;
    //            transform.position = Vector3.Lerp(transform.position, KnockBack, KnockBackSpeed);
    //            //m_Heart.TakeDamage(1);
    //            //m_Heart.UpdateHearts();
    //            //m_Heart.lastDamage = 0;
    //        //}
    //    }
    //}

    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("DotTrap"))
        {
            dotdelay -= Time.deltaTime;
            if(dotdelay <= 0)
            {
                m_Heart.TakeDamage(1);
                m_Heart.UpdateHearts();
                dotdelay = 2.0f;
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
