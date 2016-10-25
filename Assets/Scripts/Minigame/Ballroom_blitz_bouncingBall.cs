using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class Ballroom_blitz_bouncingBall : MonoBehaviour {

    public float constantSpeed = 3000f;


	
	// Update is called once per frame
	void Update ()
    {
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb.velocity.magnitude > constantSpeed)
        {
            //rb.velocity = constantSpeed * (rb.velocity.normalized);
           //rb.AddForce(transform.forward * constantSpeed);

        }

    }
}
