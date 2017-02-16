using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;


public class PauseGame : MonoBehaviour
{

    EventSystem es;

    [Header("Different 'First Selected' Buttons")]
    public GameObject[] firstSelectedButtons;

    [Header("Different Canvases")]
    public GameObject[] canvases;

    [Header("Bools")]
    public bool pauseActive, optionsActive, controlsActive, quitActive;

    [Header("List of ALL Buttons")]
    public GameObject[] allButtons;

    public bool openedP1, openedP2, openedP3, openedP4, openedKeyboard;

    void Awake()
    {

        es = GameObject.Find("Pause Menu/EventSystem").GetComponent<EventSystem>();

    }
    // Update is called once per frame
    void Update()
    {
        if (pauseActive)
            StartCoroutine(Pause());
        else if (optionsActive)
            StartCoroutine(Options());
        else if (controlsActive)
            StartCoroutine(Controls());
        else if (quitActive)
            StartCoroutine(Quit());


        if (Input.GetButtonDown("Pause_" + GameManager.m_Instance.m_Player1.m_Controller))
        {
            openedP1 = true;
            PauseMenu();
        }
        else if(Input.GetButtonDown("Pause_" + GameManager.m_Instance.m_Player2.m_Controller))
        {
            openedP2 = true;
            PauseMenu();
        }

        else if (Input.GetButtonDown("Pause_" + GameManager.m_Instance.m_Player3.m_Controller))
        {
            openedP3 = true;
            PauseMenu();
        }

        else if (Input.GetButtonDown("Pause_" + GameManager.m_Instance.m_Player4.m_Controller))
        {
            openedP4 = true;
            PauseMenu();
        }

        else if (Input.GetKeyDown(KeyCode.Escape))
            {
            openedKeyboard = true;
            PauseMenu();
        }

        {
            if (Time.timeScale == 0) return;
        }
    }
    IEnumerator Pause()

    {
        pauseActive = false;
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[0]); es.firstSelectedGameObject = firstSelectedButtons[0];

        canvases[0].SetActive(true);
        canvases[1].SetActive(false);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);

    }



    IEnumerator Options()

    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[1]); es.firstSelectedGameObject = firstSelectedButtons[1];
        optionsActive = false;
        canvases[0].SetActive(false);
        canvases[1].SetActive(true);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);

    }



    IEnumerator Controls()

    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[2]); es.firstSelectedGameObject = firstSelectedButtons[2];
        controlsActive = false;
        canvases[0].SetActive(false);
        canvases[1].SetActive(false);
        canvases[2].SetActive(true);
        canvases[3].SetActive(false);

    }



    IEnumerator Quit()

    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[3]); es.firstSelectedGameObject = firstSelectedButtons[3];
        quitActive = false;
        canvases[0].SetActive(false);
        canvases[1].SetActive(false);
        canvases[2].SetActive(false);
        canvases[3].SetActive(true);

    }

    public void PauseMenu()
    {
        canvases[0].SetActive(true);
        StandaloneInputModule inputModule = es.gameObject.GetComponent<StandaloneInputModule>();

        if (openedP1)
        {
            pauseActive = true;
            inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player1.m_Controller;
            inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller;
            inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player1.m_Controller;
            //ADD CANCEL BUTTOn
            Time.timeScale = 0;
        }
        if (openedP2)
        {
            pauseActive = true;
            inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player2.m_Controller;
            inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller;
            inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player2.m_Controller;
            //ADD CANCEL BUTTOn
            Time.timeScale = 0;
        }

        if (openedP3)
        {
            pauseActive = true;
            inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player3.m_Controller;
            inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller;
            inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player3.m_Controller;
            //ADD CANCEL BUTTOn
            Time.timeScale = 0;
        }

        if (openedP4)
        {
            pauseActive = true;
            inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player4.m_Controller;
            inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller;
            inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player4.m_Controller;
            //ADD CANCEL BUTTOn
            Time.timeScale = 0;
        }

        if (openedKeyboard)
        {
            pauseActive = true;
            //Input.GetButtonDown("Back_Keyboard") _ INPUT
            inputModule.submitButton = "Submit_Keyboard";
            inputModule.horizontalAxis = "HorizontalRotation_Keyboard";
            inputModule.verticalAxis = "VerticalRotation_Keyboard";
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        }

    }

    public void OptionsMenu()
    {
        canvases[1].SetActive(true);

        StandaloneInputModule inputModule = es.gameObject.GetComponent<StandaloneInputModule>();
        if (canvases[1].activeSelf)
        {
            if (openedP1)
            {
                optionsActive = true;
                inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player1.m_Controller;
                inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller;
                inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player1.m_Controller;
                //ADD CANCEL BUTTOn
                Time.timeScale = 0;
            }
            if (openedP2)
            {
                optionsActive = true;
                inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player2.m_Controller;
                inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller;
                inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player2.m_Controller;
                //ADD CANCEL BUTTOn
                Time.timeScale = 0;
            }

            if (openedP3)
            {
                optionsActive = true;
                inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player3.m_Controller;
                inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller;
                inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player3.m_Controller;
                //ADD CANCEL BUTTOn
                Time.timeScale = 0;
            }

            if (openedP4)
            {
                optionsActive = true;
                inputModule.submitButton = "Jump_" + GameManager.m_Instance.m_Player4.m_Controller;
                inputModule.horizontalAxis = "Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller;
                inputModule.verticalAxis = "Vertical_" + GameManager.m_Instance.m_Player4.m_Controller;
                //ADD CANCEL BUTTOn
                Time.timeScale = 0;
            }

            if (openedKeyboard)
            {
                optionsActive = true;
                //Input.GetButtonDown("Back_Keyboard") _ INPUT
                inputModule.submitButton = "Submit_Keyboard";
                inputModule.horizontalAxis = "HorizontalRotation_Keyboard";
                inputModule.verticalAxis = "VerticalRotation_Keyboard";
                Time.timeScale = 0;
            }
        }
    }

    public void ResumeButton()
    {
        canvases[0].SetActive(false);
        Time.timeScale = 1;
    }
    public void OptionsButton()
    {
        optionsActive = true;
    }
    public void ControlsButton()
    {
        controlsActive = true;
    }
    public void QuitButton()
    {
        quitActive = true;

    }
    public void YesButton()
    {
        SceneManager.LoadScene("MainMenu");
    }
    public void NoButton()
    {
        PauseMenu();
    }


}



