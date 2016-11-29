using UnityEngine;
using System.Collections;

public class FizzPopPickup : MonoBehaviour {

    public int m_HealValue = 0;
    private HeartSystem m_HeartSystem;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.GetComponent<HeartSystem>() != null)
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();
            m_HeartSystem.Heal(m_HealValue);
            m_HeartSystem.UpdateHearts();
        }
    }
}
