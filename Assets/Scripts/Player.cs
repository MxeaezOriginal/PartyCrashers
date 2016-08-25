using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

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
    public WEAPONTYPE m_WeaponID;
    private Transform m_Weapon;

    //Input
    public string m_PrimaryAttack = "Primary_";
    public string m_SecondaryAttack = "Secondary_";
    public string m_Interact = "Interact_";
    public string m_Silly = "Silly_";
    public string m_Stats = "Stats_";
    public string m_Pause = "Pause_";

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        updateWeapon();
        if (Input.GetMouseButtonDown(0))
        {
            attack(ATTACKTYPE.PRIMARY);
        }
        if (Input.GetMouseButtonDown(1))
        {
            attack(ATTACKTYPE.SECONDARY);
        }
        if(Input.GetButtonDown(m_Pause))
        {
            if(m_WeaponID == WEAPONTYPE.SWORD)
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
            if(child.gameObject.GetComponent<WeaponID>().m_WeaponType == m_WeaponID)
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
                else if(a == ATTACKTYPE.SECONDARY)
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
}
