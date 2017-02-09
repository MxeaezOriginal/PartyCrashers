using UnityEngine;
using System.Collections;

public class DestroyOnCollision : MonoBehaviour
{
    [SerializeField]
    private float LifeTimer;
    private Collider col;

    // Use this for initialization
    void Start()
    {
        StartCoroutine(DeactivateCallback());
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<WeaponID>() == null) 
        {
            DestroyBullet();
        }
    }

    private IEnumerator DeactivateCallback()
    {
        yield return new WaitForSeconds(LifeTimer);
        DestroyBullet();
    }

    private void DestroyBullet()
    {
        Destroy(gameObject);
    }
}
