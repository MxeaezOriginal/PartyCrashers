using UnityEngine;
using System.Collections;

public class FizzyGunDestroyHealTimer : MonoBehaviour
{

    private Rigidbody rb;
    [SerializeField]
    private float m_HealDestroyTimer;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {

        if (rb.velocity == Vector3.zero)
        {
            StopCoroutine(DestroyHeal());
            StartCoroutine(DestroyHeal());
        }
    }

    private IEnumerator DestroyHeal()
    {
        yield return new WaitForSeconds(m_HealDestroyTimer);
        Destroy(this.gameObject);
    }
}
