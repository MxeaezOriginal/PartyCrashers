using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    // Player stats
    public string m_PlayerName;
    public float m_AttackSpeed;
    public int m_Gold;
    public int m_Health;
    public WEAPONTYPE m_Weapon;

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
        if (Input.GetButtonDown(m_PrimaryAttack))
        {
            Debug.Log("Changed");
            updateWeapon();
        }
	}

    void updateWeapon()
    {
        Transform weapons = transform.FindChild("Weapon");
        Debug.Log(weapons.gameObject.name);
        foreach (Transform child in weapons)
        {
            if(child.gameObject.GetComponent<WeaponID>().m_WeaponType == m_Weapon)
            {
                child.gameObject.SetActive(true);
            }
            else
            {
                child.gameObject.SetActive(false);
            }
        }
    }

    void setWeapon(WEAPONTYPE newWeapon)
    {
        m_Weapon = newWeapon;
    }
}
