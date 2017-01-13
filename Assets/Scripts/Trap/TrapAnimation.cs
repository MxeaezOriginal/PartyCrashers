using UnityEngine;
using System.Collections;

public class TrapAnimation : MonoBehaviour {

    public Animator ani;
    public GameObject m_effect;
	// Use this for initialization
	void Start () {
        ani.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player" && ani.enabled == false)
        {
            ani.enabled = true;
            if (m_effect != null)
            {
                GameObject effect;
                effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
                Destroy(effect, 3f);
            }
        }


    }
}
