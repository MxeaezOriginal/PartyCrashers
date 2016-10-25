using UnityEngine;
using System.Collections;

public class Ballroom_blitz_playercollideball : MonoBehaviour
{

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Minigame Projectile")
        {
            Debug.Log("Dead");
            StartCoroutine(Respawn(5));
        }

    }

    IEnumerator Respawn(float settime)
    {

        yield return new WaitForSeconds(settime);
        Debug.Log("Alive"); ;
    }
}
