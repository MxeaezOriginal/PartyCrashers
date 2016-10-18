using UnityEngine;
using System.Collections;

public class Mosh_Royale_MinigameMaster : MonoBehaviour {

    public GameObject moshpitEnemy;
    public GameObject enemySpawnpoint;
    private float difficultyTimer;//seconds passed
    private float incrementAmmount;

	// Use this for initialization
	void Start () 
    {
        difficultyTimer = 0;
        GameObject enemyTest;
        enemyTest = (GameObject)Instantiate( moshpitEnemy, enemySpawnpoint.gameObject.transform.position, enemySpawnpoint.gameObject.transform.rotation );
         
	
	}
	
	// Update is called once per frame
	void Update () 
    {
	
	}
}
