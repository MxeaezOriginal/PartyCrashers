using UnityEngine;
using System.Collections;

public class WaterBombCombo : MonoBehaviour
{

    public string target;

    public float explosionRadius;
    public float damage;
    public float balloonDelay;
    public float effectDelay;

    public GameObject explosionObject;
    public GameObject effectObject;
    public GameObject objectSpawn;

    void OnTriggerEnter(Collider other)
    {

        if(other.tag == target)
        {

            GameObject explosion;
            explosion = (GameObject)Instantiate(explosionObject, objectSpawn.gameObject.transform.position, objectSpawn.gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(explosionRadius,explosionRadius,explosionRadius);

            GameObject effect;
            effect = (GameObject)Instantiate(effectObject, objectSpawn.gameObject.transform.position, objectSpawn.gameObject.transform.rotation);
            Destroy(effect, effectDelay);

            Destroy(this.gameObject,balloonDelay);


        }

    }

    


}
