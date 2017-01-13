using UnityEngine;
using System.Collections;

public class FizzPopMaxPickup : MonoBehaviour {

    public Rigidbody rb;
    private HeartSystem m_HeartSystem;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerStay(Collider other)
    {
        //Other has a HeartSystem
        if (other.GetComponent<HeartSystem>() != null && (Input.GetButtonDown("Interact_P1") || Input.GetButtonDown("Interact_Keyboard")))
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();
            m_HeartSystem.AddHeart();
            m_HeartSystem.UpdateHearts();
            gameObject.SetActive(false);
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if(other.gameObject.CompareTag("Player"))
        {
            rb.AddForce(transform.forward * 500);
        }
    }
}
