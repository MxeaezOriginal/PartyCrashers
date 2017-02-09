using UnityEngine;
using System.Collections;

public class WaterBombCombo : MonoBehaviour
{

    public float m_ExplosionRadius;
    private float m_Damage;

    //sound
    public GameObject SFXPlayer;
    public AudioClip[] SFX;
    private AudioClip SFXtoPlay;
    //sound end

    public GameObject m_ExplosionEffect;

    void OnTriggerEnter(Collider other)
    {

        if(other.GetComponent<Damage>() != null)
        {
            m_Damage = other.GetComponent<Damage>().m_Damage;
            GameObject explosion;
            explosion = (GameObject)Instantiate(m_ExplosionEffect, gameObject.transform.position, gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(m_ExplosionRadius, m_ExplosionRadius, m_ExplosionRadius);

            explode();
            Destroy(gameObject);
            Destroy(explosion, 5f);
        }

    }

    void explode()
    {
        //sound
            //SFXtoPlay = SFX[Random.Range(0, SFX.Length)];
            //
            //if (SFXPlayer != null)
            //{
            //    AudioSource source = SFXPlayer.GetComponent<AudioSource>();
            //    source.clip = SFXtoPlay;
            //}
            //GameObject SFXtest = Instantiate(SFXPlayer, transform.position, transform.rotation) as GameObject;
        //sound end

        Collider[] colliders = Physics.OverlapSphere(transform.position, m_ExplosionRadius);

        foreach (Collider hit in colliders)
        {
            if (hit.GetComponent<EnemyHealth>() != null)
            {
                hit.GetComponent<EnemyHealth>().Damage(m_Damage);
            }
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, m_ExplosionRadius);
    }


}
