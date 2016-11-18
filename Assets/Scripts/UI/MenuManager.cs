using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class MenuManager : MonoBehaviour
{

    [Header("Different Canvases")]
    //In Hir. assign following things
    public GameObject splashCanvas; //Splash Canvas
    public GameObject mainMenuCanvas; //MainMenu Canvas
    public GameObject playCanvas; //Play Canvas
    public GameObject settingsCanvas; //Setting Canvas
    public GameObject creditsCanvas; //Credits Canvas
    public GameObject exitPromptCanvas; //Exit Prompt Canvas
    public GameObject exitCanvas; //Exit Canvas

    [Header("Different 'First Selected' Buttons")]
    public GameObject splashButton;
    public GameObject mainMenuButton;
    public GameObject playButton;
    public GameObject settingsButton;
    public GameObject creditsButton;
    public GameObject exitPromptButton;

    [Header("Bools")]
    public bool waitedForADelay;
    public bool splashActive, mainMenuActive, playActive, settingsActive, creditsActive, exitPromptActive, exitActive;
    Animator anim;
    EventSystem es;
    CharacterSelect characterSelect;

    UnityEngine.UI.Button btn;

    bool testPressed;
    void Awake()
    {
        //splashCanvas = GameObject.Find("Main Menu/Splash Canvas");
        //mainMenuCanvas = GameObject.Find("Main Menu/MainMenu Canvas");
        //playCanvas = GameObject.Find("Main Menu/Play Canvas");
        //settingsCanvas = GameObject.Find("Main Menu/Settings Canvas");
        //creditsCanvas = GameObject.Find("Main Menu/Credits Canvas");
        //exitPromptCanvas = GameObject.Find("Main Menu/Exit Prompt Canvas");
        //exitCanvas = GameObject.Find("Main Menu/Exit Canvas");

        anim = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Animator>();
        es = GameObject.Find("Main Menu/EventSystem").GetComponent<EventSystem>();

    }

    void Start()
    {
        splashActive = true;
        //Cursor.visible = false;
        //InvokeRepeating("test", 0.2f, 0.8f);
    }

    void Update()
    {

        if (splashActive)
            StartCoroutine(Splash());
        if (mainMenuActive)
            StartCoroutine(MainMenu());
        if (playActive)
            StartCoroutine(Play());
        if (settingsActive)
            StartCoroutine(Settings());
        if (creditsActive)
            StartCoroutine(Credits());
        if (exitPromptActive)
            StartCoroutine(ExitPrompt());
    }

    void test()
    {
        if (es.currentSelectedGameObject.GetComponent<Text>().enabled)
        {
            es.currentSelectedGameObject.GetComponent<Text>().enabled = false;
        }
        else
        {
            es.currentSelectedGameObject.GetComponent<Text>().enabled = true;
        }
    }

    //Main Functions for setting all the bools

    IEnumerator Splash()
    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(splashButton); es.firstSelectedGameObject = splashButton;

        //Setting Animator bools
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        //Setting ****Active bool to false to prevent multiple function runs
        splashActive = false;

        //Toggle on and off Canvases
        splashCanvas.SetActive(true);
        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
    }
    IEnumerator MainMenu()
    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(mainMenuButton); es.firstSelectedGameObject = mainMenuButton;

        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        mainMenuActive = false;

        splashCanvas.SetActive(false);
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
    }
    IEnumerator Play()
    {

        anim.SetBool("Play", true);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        playActive = false;

        splashCanvas.SetActive(false);
        mainMenuCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        playCanvas.SetActive(true);

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(playButton); es.firstSelectedGameObject = playButton;
    }
    IEnumerator Settings()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", true);
        anim.SetBool("Credits", false);

        settingsActive = false;

        splashCanvas.SetActive(false);
        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        settingsCanvas.SetActive(true);

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(settingsButton); es.firstSelectedGameObject = settingsButton;
    }
    IEnumerator Credits()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", true);

        creditsActive = false;

        splashCanvas.SetActive(false);
        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        creditsCanvas.SetActive(true);

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(creditsButton); es.firstSelectedGameObject = creditsButton;
    }
    IEnumerator ExitPrompt()
    {
        splashCanvas.SetActive(false);
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(true);

        exitPromptActive = false;

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(exitPromptButton); es.firstSelectedGameObject = exitPromptButton;

        //Disabling buttons of MainMenu but don't hide
        foreach (Transform child in mainMenuCanvas.transform)
        {
            child.GetComponentInChildren<Button>().interactable = false;
        }
    }

    //Functions assigned to buttons in main menu - SETTING ****Active bool to true;
    public void SplashButton()
    {
        mainMenuActive = true;
    }

    public void PlayButton()
    {
        playActive = true;
    }
    public void SettingsButton()
    {
        settingsActive = true;
    }
    public void CreditsButton()
    {
        creditsActive = true;
    }
    public void ExitPromptButton()
    {
        exitPromptActive = true;
    }
    public void ExitPromptYes()
    {
        exitActive = true;

        exitPromptActive = false;
        exitPromptCanvas.SetActive(false);
        mainMenuCanvas.SetActive(false);
    }
    public void ExitPromptNo()
    {
        exitPromptActive = false;
        exitPromptCanvas.SetActive(false);

        //Enabling buttons of MainMenu but don't hide
        foreach (Transform child in mainMenuCanvas.transform)
        {
            child.GetComponentInChildren<Button>().interactable = true;
        }
        mainMenuButton.GetComponent<Button>().Select();

    }
    public void BackButton()
    {
        mainMenuActive = true;
    }
}
