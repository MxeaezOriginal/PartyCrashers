using UnityEngine;
using System.Collections;

public class WaterBombCombo : MonoBehaviour
{

    public string target;

    public float explosionRadius;

    public float damage;

    public GameObject explosionObject;
    public GameObject explosionSpawn;

    void OnTriggerEnter(Collider other)
    {

        if(other.tag == target)
        {

            GameObject explosion;
            explosion = (GameObject)Instantiate(explosionObject, explosionSpawn.gameObject.transform.position, explosionSpawn.gameObject.transform.rotation);




        }

    }

    


}
