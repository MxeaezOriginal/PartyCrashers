using UnityEngine;
using System.Collections;

public class Damage : MonoBehaviour
{

    public float m_Damage;
    private Transform m_WeaponTransform;

    void Start()
    {
        m_WeaponTransform = transform;
		for(int i = 0; i < 10; ++i)
		{
            if(m_WeaponTransform.GetComponent<Weapon>() != null)
            {
                m_Damage = m_WeaponTransform.GetComponent<Weapon>().m_Damage;
                Debug.Log(m_Damage + " set from weapon " + m_WeaponTransform.name);
                break;
            }
            else
            {
                if (m_WeaponTransform.parent != null)
                {
                    m_WeaponTransform = m_WeaponTransform.parent;
                }
            }
		}
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.GetComponent<EnemyHealth>() != null)
        {
            EnemyHealth enemyHealth = other.gameObject.GetComponent<EnemyHealth>();
            enemyHealth.Damage(m_Damage);
        }
    }
}
