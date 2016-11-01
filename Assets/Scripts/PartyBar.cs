using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class PartyBar : MonoBehaviour {

    public int m_Max = 100;
    public int m_Current = 0;

    public bool m_Active;

    Image m_Bar;

    float m_TempTimer;

	// Use this for initialization
	void Start () {
        m_Bar = GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update () {

        //set bar equal to percentage
        m_Bar.fillAmount = (float)m_Current / m_Max;

        if (m_Active)
        {
        
            /*
            if (m_TempTimer <= Time.time - .1f)
            {
                m_Current += 1;
                m_TempTimer = Time.time;
            }
            */
            //if bar hits 0 load minigame
            if (m_Current >= m_Max)
            {
                loadMinigame();
            }
        }
    }

    void loadMinigame()
    {
        //int randomNumber = Random.Range(1, 3);

        foreach (GameObject p in GameManager.m_Instance.m_Players)
        {
            Player player = p.GetComponent<Player>();
            switch(player.m_Player)
            {
                case Player.PLAYER.P1:
                    player.m_LastLocation = p.transform.position;
                    break;
                case Player.PLAYER.P2:
                    player.m_LastLocation = p.transform.position;
                    break;
                case Player.PLAYER.P3:
                    player.m_LastLocation = p.transform.position;
                    break;
                case Player.PLAYER.P4:
                    player.m_LastLocation = p.transform.position;
                    break;
            }
        }
        GameManager.m_Instance.savePlayers();
        SceneManager.LoadScene(2); //ballroom blitz
    }
}
