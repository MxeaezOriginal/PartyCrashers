using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class EndCanvas : MonoBehaviour
{
    public bool activated;
    Canvas endCanvas;
    Button backToMainMenuButton;

    EventSystem ES;
    StandaloneInputModule SIM;

    void Awake()
    {
        endCanvas = GameObject.Find("End Canvas").GetComponent<Canvas>();
        backToMainMenuButton = transform.GetChild(1).GetComponent<Button>();

        ES = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        SIM = GameObject.Find("EventSystem").GetComponent<StandaloneInputModule>();
    }

    void Update()
    {
        if(!activated)
        {
            endCanvas.enabled = false;
            foreach (GameObject player in GameManager.m_Instance.m_Players)
            {
                player.GetComponent<PlayerController>().m_CantMove = false;
            }
        }
        else
        {
            endCanvas.enabled = true;
            foreach (GameObject player in GameManager.m_Instance.m_Players)
            {
                player.GetComponent<PlayerController>().m_CantMove = true;
            }


            SIM.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
            SIM.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
            SIM.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);

            ES.enabled = false;
            ES.enabled = true;
            ES.SetSelectedGameObject(backToMainMenuButton.gameObject);
        }
    }

    public void BackToMainMenu()
    {
        print("EXIT TO MAIN MENU");
    }
}
