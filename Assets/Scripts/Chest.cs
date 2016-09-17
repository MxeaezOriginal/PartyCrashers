using UnityEngine;
using System.Collections;

public class Chest : MonoBehaviour {

    public GameObject[] prefab;
    private GameObject ins;
    public bool isOpen;
    public bool alreadyOpen = false;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () 
    {
        if (isOpen == true && alreadyOpen == false && Input.GetButtonDown("Interact_P1"))
        {
            for (int i = 0; i < prefab.Length; i++)
            {
                GetComponent<Animation>().Play();
                Instantiate(prefab[i], gameObject.transform.position, gameObject.transform.rotation);
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
