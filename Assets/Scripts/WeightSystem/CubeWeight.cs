using UnityEngine;
using System.Collections;

public class CubeWeight : MonoBehaviour {

    private bool m_IsColliding;
    public float m_speed;
    public int m_maxNum;
    public int m_recentNum;
    private Rigidbody rb;
    private bool[] is_touched = new bool[4] { false, false, false, false };
    protected GameObject[] m_player;
    // Use this for initialization
    void Start () {
        m_player = GameManager.m_Instance.m_Players;
        rb = GetComponent<Rigidbody>();
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;
    }
	
	// Update is called once per frame
	void Update ()
    {

        for (int i=0;i<m_player.Length;i++)
        {
            if (m_recentNum >= m_maxNum * 2)
            {
                if(is_touched[i] == true)
                {
                    rb.AddForce((transform.position - m_player[i].transform.position) * m_speed);
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
                    Debug.Log("Touched");
                    is_touched[i] = true;
                    m_recentNum++;
                }
            }
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
                    m_recentNum--;
                }
            }
        }
    }
}
