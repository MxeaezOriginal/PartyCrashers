using UnityEngine;
using System.Collections;

public class PickUpItem : MonoBehaviour
{

    public Vector3 spin;

    void Update()
    {
        transform.Rotate(spin * Time.deltaTime);
    }

    void OnTriggerStay(Collider other)
    {
        if (other.tag == ("Player"))
        {
            gameObject.active = false;
        }
    }
}
