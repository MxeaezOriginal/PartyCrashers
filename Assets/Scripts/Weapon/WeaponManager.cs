using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class WeaponManager : MonoBehaviour
{

    public enum Weapon
    {
        GlowSword,
        WaterBalloonBow,
        FizzyPopGun
    }

    public GameObject m_CurrentWeapon;
    public string m_CurrentWeaponName;
    public Weapon m_WeaponOnGameStart = Weapon.GlowSword;
    public string m_PickupConcactinateString = "_Pickup";
    public float m_DelayBetweenSwaps = 1f;

    public GameObject[] m_WeaponPrefabs;
    public GameObject[] m_WeaponPrefabPickups;
    private Dictionary<string, GameObject> m_Weapons = new Dictionary<string, GameObject>();
    private GameObject m_WeaponParent;
    private GameObject m_WeaponStandingOn;
    private GameObject m_WeaponStandingOnPickup;
    public Transform m_WeaponsTransform;

    void Start()
    {
        //Fill up the weapons Dictionary with all the weapon prefabs and their names
        foreach (GameObject weapon in m_WeaponPrefabs)
        {
            m_Weapons.Add(weapon.gameObject.name, weapon);
        }

        m_CurrentWeaponName = m_WeaponOnGameStart.ToString();

        initialize();
    }

    public void initialize()
    {
        if (transform.FindChild("Model") != null) { findWeaponRecursive(transform.FindChild("Model")); Debug.Log("hi"); }
        else { Debug.LogError("Model not found under player"); }

        SetWeapon((WeaponManager.Weapon)System.Enum.Parse(typeof(WeaponManager.Weapon), m_CurrentWeaponName));
    }

    public void SetWeapon(Weapon weaponPrefabName)
    {
        if (m_WeaponsTransform.FindChild(weaponPrefabName.ToString()) != null)
        {
            GameObject child = m_WeaponsTransform.FindChild(weaponPrefabName.ToString()).gameObject;
            if (m_Weapons.ContainsKey(weaponPrefabName.ToString()))
            {
                if (m_CurrentWeapon != null)
                {
                    Destroy(m_CurrentWeapon);
                }
                InstantiateWeapon(m_Weapons[weaponPrefabName.ToString()], child);
            }
            else
            {
                Debug.LogError("Could not find key with that Weapon name under the m_Weapons dictionary");
            }
        }
        else
        {
            Debug.LogError("Could not find GameObject with that Weapon name under player");
        }
    }

    public void InstantiateWeapon(GameObject weapon, GameObject child)
    {
        DropCurrentWeapon();

        GameObject newWeapon = Instantiate(weapon, weapon.transform.position, weapon.transform.rotation) as GameObject;
        newWeapon.transform.parent = child.gameObject.transform;
        newWeapon.transform.localPosition = new Vector3(0, 0, 0);
        newWeapon.transform.localRotation = Quaternion.identity;
        newWeapon.transform.localScale = new Vector3(1, 1, 1);

        newWeapon.name = child.name;
        m_CurrentWeapon = newWeapon;
        m_CurrentWeaponName = m_CurrentWeapon.name;
    }

    public void InstantiateWeapon()
    {
        DropCurrentWeapon();

        GameObject newWeapon = Instantiate(m_WeaponStandingOn, m_WeaponStandingOn.transform.position, m_WeaponStandingOn.transform.rotation) as GameObject;
        newWeapon.transform.parent = m_WeaponParent.gameObject.transform;
        newWeapon.transform.localPosition = new Vector3(0, 0, 0);
        newWeapon.transform.localRotation = Quaternion.identity;
        newWeapon.transform.localScale = new Vector3(1, 1, 1);

        newWeapon.name = m_WeaponParent.name;
        m_CurrentWeapon = newWeapon;
        m_CurrentWeaponName = m_CurrentWeapon.name;

        Destroy(m_WeaponStandingOnPickup);
    }

    private void DropCurrentWeapon()
    {
        if (m_CurrentWeapon != null)
        {
            foreach (GameObject weaponPickup in m_WeaponPrefabPickups)
            {
                if (m_CurrentWeapon.gameObject.name + m_PickupConcactinateString == weaponPickup.gameObject.name)
                {
                    GameObject weaponToDrop = Instantiate(weaponPickup, m_CurrentWeapon.transform.position, Quaternion.identity) as GameObject;
                    StartCoroutine(SetWeaponPickupable(weaponToDrop, weaponPickup.name));
                    Destroy(m_CurrentWeapon);
                    break;
                }
            }
        }
    }

    public bool isStandingOnWeapon()
    {
        if (m_WeaponStandingOn != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    IEnumerator SetWeaponPickupable(GameObject droppedItem, string correctName)
    {
        yield return new WaitForSeconds(m_DelayBetweenSwaps);
        droppedItem.name = correctName;
    }
    void OnTriggerStay(Collider other)
    {
        //Loop through all weapon prefabs
        foreach (GameObject weapon in m_WeaponPrefabs)
        {
            //If the name of the prefab is equal to the name of the collided object with the pickup text added
            if (weapon.gameObject.name + m_PickupConcactinateString == other.gameObject.name)
            {
                //Loop through all the child GameObjects under the Weapon gameobject in Player
                foreach (Transform child in m_WeaponsTransform)
                {
                    //If it finds a child under Weapon GameObject with the same name as the prefab, this is the Object to instantiate the Weapon Prefab under
                    if (child.gameObject.name == weapon.gameObject.name)
                    {
                        //If the player already has a weapon equipped, destroy it before instatiating the new one
                        //InstantiateWeapon(weapon, child.gameObject);
                        m_WeaponParent = child.gameObject;
                        m_WeaponStandingOn = weapon;
                        m_WeaponStandingOnPickup = other.gameObject;
                        Debug.Log("Standing on " + weapon.name);
                        break;
                    }
                }
                break;
            }
        }
    }

    /*void OnTriggerEnter(Collider other)
    {
        //Loop through all weapon prefabs
        foreach (GameObject weapon in m_WeaponPrefabs)
        {
            //If the name of the prefab is equal to the name of the collided object with the pickup text added
            if (weapon.gameObject.name + m_PickupConcactinateString == other.gameObject.name)
            {
                //Loop through all the child GameObjects under the Weapon gameobject in Player
                foreach (Transform child in m_WeaponsObject)
                {
                    //If it finds a child under Weapon GameObject with the same name as the prefab, this is the Object to instantiate the Weapon Prefab under
                    if (child.gameObject.name == weapon.gameObject.name)
                    {
                        //If the player already has a weapon equipped, destroy it before instatiating the new one
                        //InstantiateWeapon(weapon, child.gameObject);
                        m_WeaponParent = child.gameObject;
                        m_WeaponStandingOn = weapon;
                        m_WeaponStandingOnPickup = other.gameObject;
                        Debug.Log("Standing on " + weapon.name);
                        break;
                    }
                }
                break;
            }
        }
    }*/
    public void OnTriggerExit(Collider other)
    {
        if (m_WeaponStandingOn != null)
        {
            Debug.Log("Now leaving " + m_WeaponStandingOn.name + " behind.. :'(");
            m_WeaponParent = null;
            m_WeaponStandingOn = null;
            m_WeaponStandingOnPickup = null;
        }
    }

    private void findWeaponRecursive(Transform root)
    {
        foreach (Transform child in root)
        {
            if(child.name.Equals("Weapon"))
            {
                m_WeaponsTransform = child;
                Debug.Log("Weapons Transform found under: " + child.name);
                break;
            }
            findWeaponRecursive(child);
            //Debug.LogError("Weapons Transform not found under player model");
        }
    }
}
