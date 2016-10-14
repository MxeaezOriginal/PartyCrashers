using UnityEngine;
using System.Collections;

public class FallingTrap : MonoBehaviour {

    public float FallingSpeed;

    private float mass = 1000;

    GameObject mTrap;
    
    void Start ()
    {
        mTrap = this.gameObject;
	}
	
	void Update ()
    {
	 
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            Debug.Log("Falling trap Activated.");

            Rigidbody rb = mTrap.GetComponent<Rigidbody>();
            rb.mass = mass;
            if(FallingSpeed >= 1000)
            {
                rb.collisionDetectionMode = CollisionDetectionMode.Continuous;
            }
            rb.AddForce(Physics.gravity * (FallingSpeed * 100));
            rb.useGravity = true;
        }
    }
}
