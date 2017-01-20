using UnityEngine;
using System.Collections;

public class DanceFloor : MonoBehaviour {

    public GameObject m_Light;
    public GameObject m_DiscoBall;
    public int m_CurrentFloorColor;
    public int m_CurrentBallColor;
    public int m_PreviousFloorColor;
    public int m_PreviousBallColor;
    private bool m_GetPoint = true;
    private bool m_LosePoint = true;
    //GameObject m_Discoball2;

    // Use this for initialization
    void Start () {
    }
	
	// Update is called once per frame
	void Update () {
        m_CurrentFloorColor = m_Light.GetComponent<LightChangeDancefloor>().CurrentColorInt;
        m_CurrentBallColor = m_DiscoBall.GetComponent<LightChangeDiscoball>().CurrentColorInt;
        m_PreviousFloorColor = m_Light.GetComponent<LightChangeDancefloor>().PreviousColorInt;
        m_PreviousBallColor = m_DiscoBall.GetComponent<LightChangeDiscoball>().PreviousColorInt;
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            // Particle System
            //if (m_effect != null)
            //{
            //    GameObject effect;
            //    effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
            //    Destroy(effect, 3f);
            //}
            if (m_Light.GetComponent<LightChangeDancefloor>().stop == false)
            {
                //if (m_CurrentFloorColor == m_CurrentBallColor)
                //{
                //    if (m_GetPoint)
                //    {
                //        // Getting Score.
                //        Debug.Log("Getting Score!");
                //        m_GetPoint = false;

                //        StartCoroutine(WaitForSec(1f));
                //    }
                //}
                //else if (m_CurrentFloorColor == 7)
                //{
                //    // Lose Score.
                //    Debug.Log("LOSE point!");
                //    m_LosePoint = false;

                //    StartCoroutine(WaitForSec2(1f));
                //}
                //else
                //{
                    Debug.Log("No point.");
                //}
            }
            if (m_Light.GetComponent<LightChangeDancefloor>().stop == true)
            {
                if (m_PreviousFloorColor == m_PreviousBallColor)
                {
                    // Getting Score.
                    Debug.Log("Getting Score!");
                    m_GetPoint = false;

                    StartCoroutine(WaitForSec(1f));
                }
                else if(m_PreviousFloorColor == 7)
                {
                    // Lose Score.
                    Debug.Log("LOSE point!");
                    m_LosePoint = false;

                    StartCoroutine(WaitForSec2(1f));
                }
                else
                {
                    Debug.Log("No point.");
                }
            }
        }

    }

    IEnumerator WaitForSec(float s)
    {
        yield return new WaitForSeconds(s);
        m_GetPoint = true;
    }

    IEnumerator WaitForSec2(float s)
    {
        yield return new WaitForSeconds(s);
        m_LosePoint = true;
    }
}

// How to change Tiles' color:
// Reference: https://www.youtube.com/watch?v=kN7Rx3uPBuU
