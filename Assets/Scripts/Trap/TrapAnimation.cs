using UnityEngine;
using System.Collections;

public class TrapAnimation : MonoBehaviour {

    public Animator ani;
	// Use this for initialization
	void Start () {
        ani.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            ani.enabled = true;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            ani.enabled = false;
        }
    }
}
