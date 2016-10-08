using UnityEngine;
using System.Collections;

public class ProjectileCollision : MonoBehaviour {

    [Header("Target")]
    public bool hitTarget;
    public GameObject target;

    [Header("Effects")]
    public GameObject effectPoint;
    [Space]
    public bool onStart;
    public GameObject startEffect;
    [Space]
    public bool onAlways;
    public GameObject alwaysEffect;
    [Space]
    public bool onDestroy;
    public GameObject destroyEffect;

    void Start()
    {
        if (onStart)
        {
            GameObject.Instantiate(startEffect, effectPoint.transform.position, effectPoint.transform.rotation);
        }
        
    }

    void FixedUpdate()
    {
        if (onAlways)
        {
            GameObject.Instantiate(alwaysEffect, effectPoint.transform.position, effectPoint.transform.rotation);
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (hitTarget && col.gameObject)
        {
           if (onDestroy)
           {
                GameObject.Instantiate(destroyEffect, effectPoint.transform.position, effectPoint.transform.rotation);
           }

           Destroy(this.gameObject);
            
        }
    }
}
