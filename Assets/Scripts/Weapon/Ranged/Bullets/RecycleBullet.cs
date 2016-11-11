using UnityEngine;
using System.Collections;

public class RecycleBullet : Bow
{
    [SerializeField]
    private float bulletLifeTimer;

   

    public void Start()
    {
        StartCoroutine(DeactivateCallback());
    }

    private void OnTriggerEnter(Collider other)
    {
        if(!pierce)
        {
            if (other.tag != "Coins")
                OffBullet();
        }

    }

    private IEnumerator DeactivateCallback()
    {
        yield return new WaitForSeconds(bulletLifeTimer);
        OffBullet();
    }

    private void OffBullet()
    {
        // Desactivate this game object, need to create bullets pool
        // gameObject.SetActive(false); // Deactivated until pool is ready

        // Temporary Meassure
        Destroy(gameObject);
    }
}
