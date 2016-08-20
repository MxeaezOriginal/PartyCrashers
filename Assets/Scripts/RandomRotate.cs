using UnityEngine;
using System.Collections;

public class RandomRotate : MonoBehaviour {

    public float rotationSpeed;
    public float distanceSpeed;
    public float offset;

    private Vector3 appliedVector;

    private Vector3 radiusPoint;

    void Start()
    {

        appliedVector = Vector3.forward * distanceSpeed;

    }

	void Update ()
    {
        spinForward();

    }

    void spinForward()
    {

        radiusPoint = Vector3.ClampMagnitude(radiusPoint, offset);

        this.transform.RotateAround(radiusPoint, Vector3.forward, rotationSpeed * Time.deltaTime);
        this.transform.Translate(appliedVector);

    }
}
