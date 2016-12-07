using UnityEngine;
using System.Collections;

public class WaterBombCombo : MonoBehaviour
{

    public float m_ExplosionRadius;
    public float m_Damage;

    public GameObject m_ExplosionEffect;

    void OnTriggerEnter(Collider other)
    {

        if(other.GetComponent<Damage>() != null)
        {

            GameObject explosion;
            explosion = (GameObject)Instantiate(m_ExplosionEffect, gameObject.transform.position, gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(m_ExplosionRadius, m_ExplosionRadius, m_ExplosionRadius);

        }

    }

    void explode()
    {/*
        EnemyAI enemyAI;

        Collider[] colliders = Physics.OverlapSphere(transform.position, m_ExplosionRadius);

        foreach (Collider hit in colliders)
        {
            if (hit.GetComponent<EnemyHealth>() != null)
            {
                // Disable the Nav Mesh Agent
                if (hit.GetComponent<NavMeshAgent>() != null) { hit.GetComponent<NavMeshAgent>().enabled = false; }
                // Disable Enemy AI script
                if (hit.GetComponent<EnemyAI>() != null) { enemyAI = hit.GetComponent<EnemyAI>(); }
                enemyAI.enabled = false;
                // Add a Rigidbody and set i
                ts mass to 0.5
                if (hit.gameObject.GetComponent<Rigidbody>() == null) { hit.gameObject.AddComponent<Rigidbody>(); }
                Rigidbody rb = hit.GetComponent<Rigidbody>();
                rb.mass = 0.5f;
                rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ | RigidbodyConstraints.FreezeRotationY;
                // Apply Explosion Force to the Rigid Body
                rb.AddExplosionForce(power, transform.position, radius, 3.0f);

                if (hit.GetComponent<NavMeshAgent>() != null) { hit.GetComponent<NavMeshAgent>().enabled = true; }
                enemyAI.enabled = true;
                hitgam
            }
        }*/
    }



}
