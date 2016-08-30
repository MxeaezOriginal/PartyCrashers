using UnityEngine;
using System.Collections;

public class EnemyDeath : MonoBehaviour
{

    public int m_EnemyHealth = 100;
    public GameObject coin;

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "Range")
        {
            if (m_EnemyHealth > 0)
            {
                m_EnemyHealth = m_EnemyHealth - 10;
            }
            else
            {
                gameObject.active = false;

                Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);
            }
        }
    }

    void OnTriggerStay(Collider other)
    {
        if (other.tag == ("Melee"))
        {
            if (m_EnemyHealth > 0)
            {
                m_EnemyHealth = m_EnemyHealth - 10;
            }
            else
            {
                gameObject.active = false;

                Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);
            }
        }
    }
}
