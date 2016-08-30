using UnityEngine;
using System.Collections;

public class SpawnEnemy : MonoBehaviour
{

    public GameObject enemyPrefab;
    public float timer;
    public float range;
    public float spawnTime = 5.0f;
    public float activedRange = 10f;
    bool setActive;
    void Start()
    {
        timer = spawnTime;
        setActive = false;
    }

    // Update is called once per frame
    void Update()
    {
        timer -= Time.deltaTime;
        range = Vector3.Distance(GameObject.FindWithTag("Player").transform.position, transform.position);
        if (timer <= 0 && range <= activedRange)
        {
            //setActive = true;
            Instantiate(enemyPrefab, gameObject.transform.position, gameObject.transform.rotation);
            timer = spawnTime;
        }
        else //if (timer > spawnTime || range > activedRange)
        {
            //setActive = false;
        }
        //else if (setActive == true)
        //{

        //}
    }
}
