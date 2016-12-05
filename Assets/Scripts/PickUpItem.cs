using UnityEngine;
using System.Collections;

public class PickUpItem : MonoBehaviour
{
    void OnTriggerStay(Collider other)
    {
        if (other.tag == ("Player"))
        {
            gameObject.SetActive(false);
        }
    }
}
