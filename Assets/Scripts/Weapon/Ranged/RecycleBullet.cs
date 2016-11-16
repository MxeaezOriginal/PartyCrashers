using UnityEngine;
using System.Collections;

public class RecycleBullet : MonoBehaviour
{
    [SerializeField]
    private float bulletLifeTimer;

    private Bow bow;

    public void Start()
    {       
        bow = GameObject.Find("WaterBalloonBow").GetComponent<Bow>();
        StartCoroutine(DeactivateCallback());
    }

    private void OnTriggerEnter(Collider other)
    {
         if (!bow.pierce)
        {
            if (other.tag != "Coins")
                DestroyBullet();
        }
        if(bow.pierce)
        {
          if (other.tag != "MeleeEnemy"  && other.tag != "Coins")
                DestroyBullet();
        }        
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
