using UnityEngine;
using System.Collections;

public class KillVolumeMinigame : MonoBehaviour {

    public float m_StunTime;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Player p = other.gameObject.GetComponent<Player>();
            p.respawn();
        }
    }
}
