using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Counters : MonoBehaviour {

	public Text[] scoreCounter;
	public Text[] goldCounter;

	void Start() 
	{
		//Score
		scoreCounter[0] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/P1 Score").GetComponent<Text>();
		scoreCounter[1] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/P2 Score").GetComponent<Text>();
		scoreCounter[2] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/P3 Score").GetComponent<Text>();
		scoreCounter[3] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/P4 Score").GetComponent<Text>();

		//Gold
		goldCounter[0] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/P1 Gold").GetComponent<Text>();
		goldCounter[1] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/P2 Gold").GetComponent<Text>();
		goldCounter[2] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/P3 Gold").GetComponent<Text>();
		goldCounter[3] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/P4 Gold").GetComponent<Text>();
	}

	void Update() 
	{
        //P1
		scoreCounter[0].text = "" + GameManager.m_Instance.m_Player1.score;
		goldCounter[0].text = "" + GameManager.m_Instance.m_Player1.gold;
        //P2
        scoreCounter[1].text = "" + GameManager.m_Instance.m_Player2.score;
        goldCounter[1].text = "" + GameManager.m_Instance.m_Player2.gold;
        //P3
        scoreCounter[2].text = "" + GameManager.m_Instance.m_Player3.score;
        goldCounter[2].text = "" + GameManager.m_Instance.m_Player3.gold;
        //P4
        scoreCounter[3].text = "" + GameManager.m_Instance.m_Player4.score;
        goldCounter[3].text = "" + GameManager.m_Instance.m_Player4.gold;

        if(Input.GetKeyDown(KeyCode.K))
        {
            GameManager.m_Instance.m_Player1.gold += 1000;
        }
    }
}
