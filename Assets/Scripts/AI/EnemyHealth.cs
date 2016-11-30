using UnityEngine;
using System.Collections;

public class EnemyHealth : MonoBehaviour {

    public float m_EnemyHealth = 100f;

    public void Kill()
    {
        //death stuff for enemy
        Destroy(gameObject);
    }

    public float GetEnemyHealth()
    {
        return m_EnemyHealth;
    }

    public void Damage(float health)
    {
        m_EnemyHealth -= health;
        if(m_EnemyHealth <= 0)
        {
            Kill();
        }
    }

}
