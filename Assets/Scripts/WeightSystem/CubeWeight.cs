using UnityEngine;
using System.Collections;

public class CubeWeight : MonoBehaviour {

    public float m_speed;
    public int m_maxNum;
    public int m_recentNum;
    private Rigidbody rb;
    private bool[] is_touched = new bool[4] { false, false, false, false };
    protected GameObject[] m_player;

    //SFX
    public AudioSource audioSource;
    public AudioClip MoveSFX;
    //SFX
    // Use this for initialization
    void Start () {
        m_player = GameManager.m_Instance.m_Players;
        rb = GetComponent<Rigidbody>();
        //rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;
        rb.isKinematic = true;
        //sfx start
        audioSource.clip = MoveSFX;
        //sfx end
    }
	
	// Update is called once per frame
	void Update ()
    {
        for (int i=0;i<m_player.Length;i++)
        {
            if (is_touched[i] == true)
            {
                if(m_recentNum >= (m_maxNum * 2))
                {
                    rb.isKinematic = false;
                    if(!rb.isKinematic)
                    {
                        rb.AddForce((transform.position - m_player[i].transform.position) * m_speed);
                        //SFX Start
                        if(!audioSource.isPlaying)
                        {
                            audioSource.Play();
                        }
                        //SFX END
                            

                    }
                }            
                
                else
                {
                    rb.isKinematic = true;
                  
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
