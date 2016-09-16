using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class PartyBar : MonoBehaviour {

    public bool m_Active;

    Image m_Bar;

    float m_TempTimer;

	// Use this for initialization
	void Start () {
        m_Bar = GetComponent<Image>();
	}
	
	// Update is called once per frame
	void Update () {
        if (m_Active)
        {
            if (m_TempTimer <= Time.time - .1f)
            {
                m_Bar.fillAmount -= 0.01f;
                m_TempTimer = Time.time;
            }
            if (m_Bar.fillAmount <= 0)
            {
                loadMinigame();
            }
        }
    }

    void loadMinigame()
    {
        int randomNumber = Random.Range(1, 3);

        GameManager.m_Instance.savePlayers();
        SceneManager.LoadScene("MinigameReward");
    }
}
