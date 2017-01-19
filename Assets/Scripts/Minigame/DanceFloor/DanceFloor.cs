using UnityEngine;
using System.Collections;

public class DanceFloor : MonoBehaviour {

    public GameObject m_Light;
    //public GameObject m_DiscoBall;
    public int m_CurrentFloorColor;
    public int m_CurrentBallColor;
    //LightChangeDiscoball m_Discoball;
    //GameObject m_Discoball;

    // Use this for initialization
    void Start () {
        //m_Discoball = GameObject.Find("DiscoBall").GetComponent<LightChangeDiscoball>();

    }
	
	// Update is called once per frame
	void Update () {
        m_CurrentFloorColor = m_Light.GetComponent<LightChangeDancefloor>().CurrentColorInt;
        // m_CurrentBallColor = GetComponent<LightChangeDiscoball>().CurrentColorInt;
        //m_CurrentBallColor = m_Discoball.GetComponent<LightChangeDancefloor>().CurrentColorInt;
        //if (m_Light.GetComponent<LightChangeDancefloor>().stop == true)
        //{
        //    if(m_CurrentFloorColor == m_CurrentBallColor)
        //    {
        //        Debug.Log("Getting Score!");
        //    }
        //    else
        //    {
        //        Debug.Log("Nothing.");
        //    }
        //}

    }

    public void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            //if (m_effect != null)
            //{
            //    GameObject effect;
            //    effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
            //    Destroy(effect, 3f);
            //}
            Debug.Log("A player is standing on the tile.");
        }

    }
}
