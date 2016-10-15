using UnityEngine;
using System.Collections;

public class BreakableDoor : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void OnCollisionEnter(Collision coll)
    {

        if (coll.gameObject.tag == "Projectile")
        {
            Destroy(gameObject);
        }
        else if (coll.gameObject.tag == "Melee")
        {
            Destroy(gameObject);
        }

    }
}
