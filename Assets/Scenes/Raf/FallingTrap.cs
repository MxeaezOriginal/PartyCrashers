using UnityEngine;
using System.Collections;

public class FallingTrap : MonoBehaviour {

    public float FallingSpeed;
    public float DestructionDelay;

    private float mMass;
    private bool mActivated;

    GameObject mTrap;
    
    void Start ()
    {
        mTrap = this.gameObject;
        mMass = 1000;
        mActivated = false;
	}
	
	void Update ()
    {
        DestroyAfterActivation();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {

            //Debug.Log("Falling trap Activated.");

            Rigidbody rb = mTrap.GetComponent<Rigidbody>();
            rb.mass = mMass;
            if(FallingSpeed >= 1000)
            {
                rb.collisionDetectionMode = CollisionDetectionMode.Continuous;
            }
            rb.AddForce(Physics.gravity * (FallingSpeed * 100));
            rb.useGravity = true;
            mActivated = true;
        }
    }

    void DestroyAfterActivation()
    {
        if(mActivated)
        {
            Destroy(mTrap, DestructionDelay);
        }
    }
}
