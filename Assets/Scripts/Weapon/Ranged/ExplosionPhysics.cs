using UnityEngine;
using System.Collections;

public class ExplosionPhysics : MonoBehaviour {

    
    public float radius = 0f;
    public float power = 0f;
   
    void OnTriggerEnter(Collider other)
    {
     

        if (other.tag == "Enemy")
        {
                       
        Vector3 explosionPos = transform.position;
        Collider[] colliders = Physics.OverlapSphere(explosionPos, radius);
        foreach(Collider hit in colliders)
        {
            Rigidbody rb = hit.GetComponent<Rigidbody>();
            if(!rb)
            {
                rb.AddExplosionForce(power, explosionPos, radius, 10.0f);
            }

        }
        }
    }
}
