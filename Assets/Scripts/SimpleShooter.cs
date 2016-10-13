using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class SimpleShooter : MonoBehaviour
{

    public GameObject shooterMesh;
    public GameObject firepoint;
    public GameObject projectile;

    public float projectileSpeed;
    public float delay;

    void Start()
    {

        Fire();

    }

    void Fire()
    {

        GameObject bullet;
        bullet = (GameObject)Instantiate(projectile, firepoint.transform.position, firepoint.transform.rotation);
        StartCoroutine("Delay");

        bullet.GetComponent<Rigidbody>().AddForce(bullet.transform.forward * projectileSpeed,ForceMode.Impulse);
    }

    public IEnumerator BetweenFire()
    {

        yield return new WaitForSeconds(delay);

        Fire();

    }


}
