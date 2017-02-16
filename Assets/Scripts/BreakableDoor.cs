using UnityEngine;
using System.Collections;

public class BreakableDoor : MonoBehaviour {

    public float explosionRadius;
    public GameObject explosionObject;
    public GameObject particleLocation;

    public void OnTriggerStay(Collider other)
    {
        if (other.tag == "Projectile")
        {
            GameObject explosion;
            explosion = (GameObject)Instantiate(explosionObject, particleLocation.gameObject.transform.position, particleLocation.gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(explosionRadius, explosionRadius, explosionRadius);
            Destroy(gameObject);
        }

        if (other.tag == "Physical")
        {
            GameObject explosion;
            explosion = (GameObject)Instantiate(explosionObject, particleLocation.gameObject.transform.position, particleLocation.gameObject.transform.rotation);
            explosion.transform.localScale = new Vector3(explosionRadius, explosionRadius, explosionRadius);
            Destroy(gameObject);
        }
    }

}
