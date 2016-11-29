using UnityEngine;
using System.Collections;

public class FizzPopMaxPickup : MonoBehaviour {

    private HeartSystem m_HeartSystem;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider other)
    {
        //Other has a HeartSystem
        if (other.GetComponent<HeartSystem>() != null)
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();

            m_HeartSystem.AddHeart();
            m_HeartSystem.UpdateHearts();
        }
    }
}
