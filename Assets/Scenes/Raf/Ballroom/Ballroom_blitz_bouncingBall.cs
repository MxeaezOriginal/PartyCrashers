using UnityEngine;
using System.Collections;

// [RequireComponent (typeof (Rigidbody))]  Not Doing the work
public class Ballroom_blitz_bouncingBall : MonoBehaviour {

//    private Ballroomblitzgamemaster gM;
//    private GameObject bBall;
    private Rigidbody rb;
    public int initSpeed;


    void Start()
    {
//      bBall = this.gameObject;
      Rigidbody rb = GetComponent<Rigidbody>();

//      initialSpeed = 1;
//      initialSpeed = gM.fireSpeed;
    }

	// Update is called once per frame
	void Update ()
    {
        Vector3 speed = transform.forward;
        speed *= initSpeed;
      //  rb.velocity = speed.normalzied *  speed;


//        if(bBall)
//        {
          
//        }
     
       
        


        //if (rb.velocity.magnitude > constantSpeed)
        //{
        //rb.velocity = constantSpeed * (rb.velocity.normalized);
        //rb.AddForce(transform.forward * constantSpeed);

        //}

    }
}
