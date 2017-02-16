using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpUiPopUp : MonoBehaviour
{


    Quaternion frozenRotation;

    void Start()
    {
        frozenRotation = transform.rotation;
    }

    void Update()
    {
        transform.rotation = frozenRotation;
    }
}
