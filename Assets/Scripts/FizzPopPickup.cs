using UnityEngine;
using System.Collections;

public class FizzPopPickup : MonoBehaviour {

    public float speed;
    public Rigidbody rb;
    public int m_HealValue = 0;
    public bool is_touched = false;
    private HeartSystem m_HeartSystem;
    public Player m_player;
    Vector3 Dir;
    // Use this for initialization
    void Start () {
        rb = GetComponent<Rigidbody>();
        m_player = GetComponent<Player>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (is_touched == true)
        {
            rb.AddForce((transform.position - m_player.transform.position) * speed);
        }
    }

    void OnTriggerStay(Collider other)
    {
        if(other.GetComponent<HeartSystem>() != null && (Input.GetButtonDown("Interact_P1") || Input.GetButtonDown("Interact_Keyboard")))
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();
            m_HeartSystem.Heal(m_HealValue);
            m_HeartSystem.UpdateHearts();
            gameObject.SetActive(false);
        }
    }

    void OnTriggerExit(Collider other)
    { 
        if(other.GetComponent<HeartSystem>() != null)
        {
            is_touched = false;
        }
            
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            is_touched = true;
        }

    }
}
