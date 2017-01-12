using UnityEngine;
using System.Collections;

public class DotTrap : MonoBehaviour {

    public int m_DotValue;
    public float m_CoolDown = 0;
    float m_Timer = 0;
    private HeartSystem m_HeartSystem;
    public GameObject m_effect;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    //public void OnTriggerEnter(Collider other)
    //{
    //    if(other.tag == "Player")
    //    {
    //        GameObject effect;
    //        effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
    //        Destroy(effect, 3f);
    //    }
    //}

    public void OnTriggerStay(Collider other)
    {
        if(other.GetComponent<HeartSystem>() != null)
        {
            if (m_effect != null)
            {
                GameObject effect;
                effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
                Destroy(effect, 3f);
            }
            m_HeartSystem = other.GetComponent<HeartSystem>();
            if (other.tag == "Player")
            {
                m_Timer += Time.deltaTime;
                if (m_Timer >= m_CoolDown)
                {
                    m_HeartSystem.TakeDamage(m_DotValue);
                    m_Timer = 0;
                }

                m_HeartSystem.UpdateHearts();
            }
        }
    }
}
