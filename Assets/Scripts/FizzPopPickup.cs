using UnityEngine;
using System.Collections;

public class FizzPopPickup : MonoBehaviour {

    public float speed;
    public Rigidbody rb;
    public int m_HealValue = 0;
    private bool[] is_touched = new bool[4] { false, false, false, false };
    private HeartSystem m_HeartSystem;
    protected GameObject[] m_player;
    // Use this for initialization
    void Start () {
        m_player = GameManager.m_Instance.m_Players;
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        for(int i = 0; i <m_player.Length;i++)
        {
            if (is_touched[i] == true)
            {
                rb.AddForce((transform.position - m_player[i].transform.position) * speed);
            }
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
        for (int i = 0; i < m_player.Length; i++)
        {
            if (other.GetComponent<Player>() != null)
            {
                if (other.GetComponent<Player>().m_Player == m_player[i].GetComponent<Player>().m_Player)
                {
                    is_touched[i] = false;
                }
            }

        }
    }

    void OnTriggerEnter(Collider other)
    {
        for (int i = 0; i < m_player.Length; i++)
        {
            if (other.GetComponent<Player>() != null)
            {
                if (other.GetComponent<Player>().m_Player == m_player[i].GetComponent<Player>().m_Player)
                {
                    is_touched[i] = true;
                }
            }
        }
    }

}
