using UnityEngine;
using System.Collections;

public class BallroomPlayerDeaths : MonoBehaviour {

    public float respawnTimer;
    private GameObject[] players;

    
    private bool isAlive;

    void Start()
    {
        isAlive = true;
        players = GameObject.FindGameObjectsWithTag("Player");   
    }

    IEnumerator Update()
    {
        foreach (GameObject p in players)
        {
            if (!p.active)
            {
                yield return new WaitForSeconds(3);
                p.SetActive(true);
            }
        }
    }
}

/*
 * Finish WaterBallon bomb Damage
 * Finish Ballroom Respawner 
 */