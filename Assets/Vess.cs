using UnityEngine;
using System.Collections;

public class Vess : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            Destroy(gameObject);
            Debug.Log("Hit Player");
        }
        if (collision.gameObject.tag == "Wall")
        {
            Destroy(gameObject);
            Debug.Log("Hit Wall");
        }
        //if (collision.gameObject.tag == "Physical")
        //{
        //    Destroy(gameObject);
        //    Debug.Log("Hit Sword");
        //}
        //if (collision.gameObject.tag == "Projectile")
        //{
        //    Destroy(gameObject);
        //    Debug.Log("Hit Projectile");
        //}
        //------------ Sword -----------------
        //if (collision.gameObject.tag == "Sword")
        //{
        //    Destroy(gameObject);
        //}
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<StateEffect>() != null)
        {
            Destroy(gameObject);
            Debug.Log("Hit Weapon");
        }
    }
}
