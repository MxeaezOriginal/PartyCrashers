using UnityEngine;
using System.Collections;

public class EnemyDamage : MonoBehaviour
{
    public int m_Damage;

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<HeartSystem>() != null)
        {
            HeartSystem playerHealth = other.gameObject.GetComponent<HeartSystem>();
            playerHealth.TakeDamage(m_Damage);
            playerHealth.UpdateHearts();
        }
    }
}
