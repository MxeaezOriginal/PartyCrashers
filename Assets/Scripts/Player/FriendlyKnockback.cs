using UnityEngine;
using System.Collections;

public class FriendlyKnockback : MonoBehaviour {

    public float m_Knockback = 25f;

    void OnTriggerStay(Collider collider)
    {
        if(collider.GetComponent<PlayerController>() != null)
        {
            if(GameManager.m_Instance.m_GameState == GameManager.GameState.Minigame)
            {
                PlayerController otherPlayerController = collider.GetComponent<PlayerController>();

                Vector3 direction = (otherPlayerController.transform.position - transform.position).normalized;

                if(otherPlayerController != transform.GetComponentInParent<PlayerController>())
                    otherPlayerController.m_Velocity = direction * m_Knockback;
            }
        }
    }

}
