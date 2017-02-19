using UnityEngine;
using System.Collections;

public class Chest : MonoBehaviour {

    public GameObject[] prefab;
    private GameObject ins;
    public bool isOpen;
    public bool alreadyOpen = false;
    public GameObject m_effect;
    // Use this for initialization
    void Start () {

	}
	
	// Update is called once per frame
	void Update () 
    {
        if (isOpen == true && alreadyOpen == false && (Input.GetButtonDown("Interact_P1")||Input.GetButtonDown("Interact_Keyboard")) )
        {
            if (m_effect != null)
            {
                GameObject effect;
                effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);                
                Destroy(effect, 3f);
            }
            for (int i = 0; i < prefab.Length; i++)
            {
                //GetComponent<Animation>().Play();               //After get animation for chest, uncomment it
                GameObject weapon;
                weapon = (GameObject)Instantiate(prefab[i], gameObject.transform.position, gameObject.transform.rotation);
                weapon.name = prefab[i].name;
                alreadyOpen = true;
            }
            
        }
	}

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            isOpen = true;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            isOpen = false;
        }
    }

}
