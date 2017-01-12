using UnityEngine;
using System.Collections;

public class Vess : MonoBehaviour
{
    public GameObject m_explosion;
    
    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            Destroy(gameObject);
            //Debug.Log("Hit Player");
        }
        if (collision.gameObject.tag == "Wall")
        {
            Destroy(gameObject);
            //Debug.Log("Hit Wall");
        }
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<StateEffect>() != null)
        {
            GameObject explosion;
            explosion = (GameObject)Instantiate(m_explosion, gameObject.transform.position, gameObject.transform.rotation);
            //StartCoroutine(Test());
            Destroy(gameObject);
            Destroy(explosion, 4f);
            //Debug.Log("Hit Weapon");
        }
    }
}
