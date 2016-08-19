using UnityEngine;
using System.Collections;

public class SpinTransform : MonoBehaviour
{
    public Vector3 spin = Vector3.zero;
    public Rigidbody rbody;

    public Vector3 torque;

    void Start()
    {

    }

    void Update()
    {
        rbody.AddTorque(torque, ForceMode.Acceleration);

        if( spin == Vector3.zero )
            return;

        this.transform.Rotate( spin * Time.deltaTime );
    }
}
