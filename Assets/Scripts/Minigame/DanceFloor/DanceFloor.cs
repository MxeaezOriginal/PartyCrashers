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

    private bool m_GetPointFX = false;
    private bool m_LosePointFX = false;

    private GameObject m_GetPointEffect;
    private GameObject m_LosepointEffect;

    private LightChangeDancefloor m_LightChangeDancefloor;
    private LightChangeDiscoball m_LightChangeDiscoball;

    private GameObject GettingPoint = null;
    private GameObject LosingPoint = null;
    //GameObject m_Discoball2;

    // Use this for initialization
    void Start () {
        m_LightChangeDancefloor = m_Light.GetComponent<LightChangeDancefloor>();
        m_LightChangeDiscoball = m_DiscoBall.GetComponent<LightChangeDiscoball>();

        m_GetPointEffect = m_LightChangeDiscoball.m_GetPointEffect;
        m_LosepointEffect = m_LightChangeDiscoball.m_LosepointEffect;
    }
	
	// Update is called once per frame
	void Update () {
        m_CurrentFloorColor = m_LightChangeDancefloor.CurrentColorInt;
        m_CurrentBallColor = m_LightChangeDiscoball.CurrentColorInt;
        m_PreviousFloorColor = m_LightChangeDancefloor.PreviousColorInt;
        m_PreviousBallColor = m_LightChangeDiscoball.PreviousColorInt;
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            if (m_Light.GetComponent<LightChangeDancefloor>().stop == false)
            {
                    Debug.Log("No point.");
                if (GettingPoint != null)
                {
                    Destroy(GettingPoint);
                }
                if (LosingPoint != null)
                {
                    Destroy(LosingPoint);
                }
            }
            if (m_Light.GetComponent<LightChangeDancefloor>().stop == true)
            {

                if (m_PreviousFloorColor == m_PreviousBallColor)
                {
                    // Getting Score.
                    Debug.Log("Getting Score!");

                    m_GetPoint = false;

                    if(m_GetPointFX == false)
                    {
                        m_GetPointFX = true;
                        GettingPoint = (GameObject)Instantiate(m_GetPointEffect, gameObject.transform.position, gameObject.transform.rotation);
                    }
                        m_LosePointFX = false;
                    if (LosingPoint != null)
                    {
                        Destroy(LosingPoint);
                    }
                    //Destroy(GettingPoint, 5f);
                    StartCoroutine(WaitForSec(1f));
                }
                else if(m_PreviousFloorColor == 7)
                {
                    // Lose Score.
                    Debug.Log("LOSE point!");
                    m_LosePoint = false;
                    m_GetPointFX = false;
                    if (m_LosePointFX == false)
                    {
                        m_LosePointFX = true;
                        LosingPoint = (GameObject)Instantiate(m_LosepointEffect, gameObject.transform.position, gameObject.transform.rotation);

                    }
                    if (GettingPoint != null)
                    {
                        Destroy(GettingPoint);
                    }
                    StartCoroutine(WaitForSec2(1f));
                }
                else
                {
                    m_GetPointFX = false;
                    m_LosePointFX = false;
                    if (GettingPoint != null)
                    {
                        Destroy(GettingPoint);
                    }
                    if (LosingPoint != null)
                    {
                        Destroy(LosingPoint);
                    }
                    Debug.Log("No point.");
                }
            }
        }
    }

    
    public void OnTriggerExit(Collider other)
    {
        m_GetPointFX = false;
        m_LosePointFX = false;
        if (GettingPoint != null)
        {
            Destroy(GettingPoint);
        }
        if (LosingPoint != null)
        {
            Destroy(LosingPoint);
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
