using UnityEngine;
using System.Collections;

public class KickMeTrap : MonoBehaviour {

    public string[] m_EnemiesToAffect;

    public float chasingtime = 5.0f;
	// Use this for initialization
	void Start () {
	}

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            //EnemyAI.Instance.getDistance(50);
        }
    }

    //public void OnTriggerExit(Collider other)
    //{
    //    if (other.tag == "Player")
    //    {
    //        timer += Time.deltaTime;

    //        if (timer > chasingtime)
    //        {
    //            EnemyAI.Instance.getDistance(10);
    //        }
    //    }
    //}

}
