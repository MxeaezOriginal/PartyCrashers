using UnityEngine;
using System.Collections;

public class WaterBombCombo : MonoBehaviour
{

    public string target;

    public float explosionRadius;
    public float damage;
    public float balloonDelay;

    public GameObject explosionObject;
    public GameObject explosionSpawn;

    void OnTriggerEnter(Collider other)
    {

        if(other.tag == target)
        {

            GameObject explosion;
            explosion = (GameObject)Instantiate(explosionObject, explosionSpawn.gameObject.transform.position, explosionSpawn.gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(explosionRadius,explosionRadius,explosionRadius);

            Destroy(this.gameObject,balloonDelay);


        }

    }

    


}
