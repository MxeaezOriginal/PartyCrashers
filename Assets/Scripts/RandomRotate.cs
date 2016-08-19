using UnityEngine;
using System.Collections;

public class RandomRotate : MonoBehaviour {

    public float rotationSpeed = 1;
    public float rotationMax = 700;

    public float offsetMax = 1;
    public float offsetMin = 0.1f;

    private float offset;
    private float gradualAngle = 100;
	
	void Update ()
    {

        offset = Random.Range(offsetMin,offsetMax);

        if (gradualAngle <= rotationMax)
        {
            gradualAngle += 1 * rotationSpeed;
        }

        this.transform.RotateAround(transform.position * offset, Vector3.forward, gradualAngle * Time.deltaTime);

	}
}
