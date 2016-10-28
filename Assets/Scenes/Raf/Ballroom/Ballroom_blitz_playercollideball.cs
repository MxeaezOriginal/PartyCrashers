using UnityEngine;
using System.Collections;

public class Ballroom_blitz_playercollideball : MonoBehaviour
{
    
    [HideInInspector]
    public bool isAlive;  // Using this for score counting.
    
    void Start()
    {
        isAlive = true;
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Minigame Projectile")
        {
            Debug.Log("Dead");
            Player player = gameObject.GetComponent<Player>();
            player.respawn();
            //
            isAlive = false;                //
        }
        
    }

    IEnumerator Respawn(float setTime)
    {
        yield return new WaitForSeconds(setTime);
        Debug.Log("Alive");
    }
}
