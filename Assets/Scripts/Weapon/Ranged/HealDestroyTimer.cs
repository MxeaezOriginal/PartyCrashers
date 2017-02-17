using UnityEngine;
using System.Collections;

public class HealDestroyTimer : MonoBehaviour {

    private Rigidbody rb;
    [SerializeField]
    private float m_HealDestroyTimer;
    [SerializeField]
    private GameObject m_DestroyHealVFX;

    void Start ()
    {
        rb = GetComponent<Rigidbody>();
	}
	
	void Update ()
    {    
        if (rb.velocity == Vector3.zero)
        {            
            StopCoroutine(DestroyHeal());
            StartCoroutine(DestroyHeal());
        }        
    }
   

    private IEnumerator DestroyHeal()
    {
        if (m_DestroyHealVFX != null)
        {
            GameObject DestroyVFX;
            DestroyVFX = (GameObject)Instantiate(m_DestroyHealVFX, transform.position, transform.rotation);
            //Destroy(DestroyVFX, m_HealDestroyTimer);
        }

        yield return new WaitForSeconds(m_HealDestroyTimer);
        Destroy(this.gameObject);
    }
}
