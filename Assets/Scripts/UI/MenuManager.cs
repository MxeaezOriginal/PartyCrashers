using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MenuManager : MonoBehaviour
{

    [Header("Different Canvases")]
    //In Hir. assign following things
    public GameObject mainMenuCanvas; //MainMenu Canvas
    public GameObject playCanvas; //Play Canvas
    public GameObject settingsCanvas; //Setting Canvas
    public GameObject creditsCanvas; //Credits Canvas
    public GameObject exitPromptCanvas; //Exit Prompt Canvas
    public GameObject exitCanvas; //Exit Canvas

    public bool mainMenuActive, playActive, settingsActive, creditsActive, exitPrompt, exitActive;

    Animator anim;
    
    void Awake()
    {
        anim = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Animator>();
    }

    void Start()
    {
        mainMenuActive = true;
    }

    void Update()
    {
        if (mainMenuActive)
            MainMenu();
        if (playActive)
            Play();
        if (settingsActive)
            Settings();
        if (creditsActive)
            Credits();
        if (exitPrompt)
            ExitPrompt();
        if (exitActive)
            Exit();
    }

    //Main Functions for setting all the bools
    void MainMenu()
    {
        //Setting Animator bools
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", false);

        //Setting ****Active bool to false to prevent multiple function runs
        mainMenuActive = false;

        StartCoroutine(WaitBeforeDisplayingCanvas());

        //Toggle on and off Canvases
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);
    }
    void Play()
    {
        anim.SetBool("Play", true);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", false);

        playActive = false;
        StartCoroutine(WaitBeforeDisplayingCanvas());

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(true);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);
    }
    void Settings()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", true);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", false);

        settingsActive = false;
        StartCoroutine(WaitBeforeDisplayingCanvas());

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(true);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);
    }
    void Credits()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", true);
        anim.SetBool("Exit", false);

        creditsActive = false;
        StartCoroutine(WaitBeforeDisplayingCanvas());

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(true);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);
    }
    void ExitPrompt()
    {
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(true);
        exitCanvas.SetActive(false);


        //Disabling buttons of MainMenu
        foreach (Transform child in mainMenuCanvas.transform)
        {
            child.GetComponentInChildren<Button>().interactable = false;
        }
    }
    void Exit()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", true);

        exitActive = false;
        StartCoroutine(WaitBeforeDisplayingCanvas());

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(true);
    }

    IEnumerator WaitBeforeDisplayingCanvas()
    {
        yield return new WaitForSeconds(0.25f);
    }

    //Functions assigned to buttons in main menu - SETTING ****Active bool to true;
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
        exitPrompt = true;
    }
    public void ExitButton()
    {
        exitActive = true;
    }
    public void BackButton()
    {
        mainMenuActive = true;
    }
}
