using UnityEngine;
using System.Collections;

public class RecycleBullet : MonoBehaviour
{
    [SerializeField]
    private float bulletLifeTimer;

    private Bow bow;

    public void Start()
    {
        bow = GetComponentInParent<Bow>();
        //bow = GameObject.Find("WaterBalloonBow").GetComponent<Bow>();
        StartCoroutine(DeactivateCallback());
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag != "Coins")
            DestroyBullet();
    }

    private IEnumerator DeactivateCallback()
    {
        yield return new WaitForSeconds(bulletLifeTimer);
        DestroyBullet();
    }

    private void DestroyBullet()
    {
        Destroy(gameObject);
    }
}
