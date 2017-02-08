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


        if (Input.GetButtonDown("Pause_P1"))
        {
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
        if (canvases[0].activeSelf)
        {
            pauseActive = true;
            inputModule.submitButton = "Jump_P1";
            inputModule.horizontalAxis = "Horizontal_P1";
            inputModule.verticalAxis = "Vertical_P1";
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
            optionsActive = true;
            inputModule.submitButton = "Jump_P1";
            inputModule.horizontalAxis = "Horizontal_P1";
            inputModule.verticalAxis = "Vertical_P1";
            Time.timeScale = 0;
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



