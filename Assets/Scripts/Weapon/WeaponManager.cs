using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class WeaponManager : MonoBehaviour
{

    public GameObject m_CurrentWeapon;
    public string m_WeaponOnGameStart = "GlowSword";
    public string m_PickupConcactinateString = "_Pickup";
    public float m_DelayBetweenSwaps = 1f;

    public GameObject[] m_WeaponPrefabs;
    public GameObject[] m_WeaponPrefabPickups;
    private Dictionary<string, GameObject> m_Weapons = new Dictionary<string, GameObject>();

    void Start()
    {
        //Fill up the weapons Dictionary with all the weapon prefabs and their names
        foreach (GameObject weapon in m_WeaponPrefabs)
        {
            m_Weapons.Add(weapon.gameObject.name, weapon);
        }

        SetWeapon(m_WeaponOnGameStart);
    }

    public void SetWeapon(string weaponPrefabName)
    {
        if (transform.FindChild("Model/Weapon/" + weaponPrefabName) != null)
        {
            GameObject child = transform.FindChild("Model/Weapon/" + weaponPrefabName).gameObject;
            if (m_Weapons.ContainsKey(weaponPrefabName))
            {
                if (m_CurrentWeapon != null)
                {
                    Destroy(m_CurrentWeapon);
                }
                InstantiateWeapon(m_Weapons[weaponPrefabName], child);
            }
            else
            {
                Debug.Log("Error: Could not find key with that Weapon name under the m_Weapons dictionary");
            }
        }
        else
        {
            Debug.Log("Error: Could not find GameObject with that Weapon name under player");
        }
    }

    private void InstantiateWeapon(GameObject weapon, GameObject parent)
    {
        DropCurrentWeapon();

        GameObject newWeapon = Instantiate(weapon, weapon.transform.position, weapon.transform.rotation) as GameObject;
        newWeapon.transform.parent = parent.gameObject.transform;
        newWeapon.transform.localPosition = new Vector3(0, 0, 0);
        newWeapon.transform.localRotation = Quaternion.identity;
        newWeapon.transform.localScale = new Vector3(1, 1, 1);

        newWeapon.name = weapon.name;
        m_CurrentWeapon = newWeapon;
    }

    private void DropCurrentWeapon()
    {
        if(m_CurrentWeapon != null)
        {
            foreach(GameObject weaponPickup in m_WeaponPrefabPickups)
            {
                if(m_CurrentWeapon.gameObject.name + m_PickupConcactinateString == weaponPickup.gameObject.name)
                {
                    GameObject weaponToDrop = Instantiate(weaponPickup, m_CurrentWeapon.transform.position, Quaternion.identity) as GameObject;
                    StartCoroutine(SetWeaponPickupable(weaponToDrop, weaponPickup.name));
                    Destroy(m_CurrentWeapon);
                    break;
                }
            }
        }
    }

    IEnumerator SetWeaponPickupable(GameObject droppedItem, string correctName)
    {
        yield return new WaitForSeconds(m_DelayBetweenSwaps);
        droppedItem.name = correctName;
    }

    void OnTriggerEnter(Collider other)
    {
        //Loop through all weapon prefabs
        foreach(GameObject weapon in m_WeaponPrefabs)
        {
            //If the name of the prefab is equal to the name of the collided object with the pickup text added
            if (weapon.gameObject.name + m_PickupConcactinateString == other.gameObject.name)
            {
                Debug.Log("Legend");
                //Loop through all the child GameObjects under the Weapon gameobject in Player
                Transform weapons = transform.FindChild("Weapon");
                foreach (Transform child in weapons)
                {
                    //If it finds a child under Weapon GameObject with the same name as the prefab, this is the Object to instantiate the Weapon Prefab under
                    if (child.gameObject.name == weapon.gameObject.name)
                    {
                        //If the player already has a weapon equipped, destroy it before instatiating the new one
                        InstantiateWeapon(weapon, child.gameObject);
                        Destroy(other.gameObject);
                        break;
                    }
                }
                break;
            }
        }
    }
}
