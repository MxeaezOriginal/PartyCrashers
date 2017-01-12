using UnityEngine;
using System.Collections;

public class AdvancedBossAi : MonoBehaviour {

    enum states
    {
        idle,
        rocket,
        hurt,
        dead,
        count
    }

    private bool m_Invincible;
    states state;

	// Use this for initialization
	void Start () {
        state = states.idle;
        m_Invincible = false;
	}
	
	// Update is called once per frame
	void Update () {
	    //Switch states
        switch (state){
            case states.idle: Idle();break;
        }
	}

    void Idle()
    {

    }

    void Hurt()
    {

    }

    void OnCollisionEnter(Collision col)
    {

    }
}
