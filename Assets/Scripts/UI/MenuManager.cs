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
    public bool waitedForADelay;
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
            StartCoroutine(Play());
        if (settingsActive)
            StartCoroutine(Settings());
        if (creditsActive)
            StartCoroutine(Credits());
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

        //Toggle on and off Canvases
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);
    }
    IEnumerator Play()
    {
        anim.SetBool("Play", true);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", false);

        playActive = false;

        mainMenuCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        playCanvas.SetActive(true);
    }
    IEnumerator Settings()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", true);
        anim.SetBool("Credits", false);
        anim.SetBool("Exit", false);

        settingsActive = false;

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        settingsCanvas.SetActive(true);
    }
    IEnumerator Credits()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", true);
        anim.SetBool("Exit", false);

        creditsActive = false;

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(false);

        yield return new WaitForSeconds(1.5f);
        creditsCanvas.SetActive(true);
    }
    void ExitPrompt()
    {
        mainMenuCanvas.SetActive(true);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(true);
        exitCanvas.SetActive(false);


        //Disabling buttons of MainMenu but don't hide
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

        mainMenuCanvas.SetActive(false);
        playCanvas.SetActive(false);
        settingsCanvas.SetActive(false);
        creditsCanvas.SetActive(false);
        exitPromptCanvas.SetActive(false);
        exitCanvas.SetActive(true);
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
    public void ExitPromptYes()
    {
        exitActive = true;

        exitPrompt = false;
        exitPromptCanvas.SetActive(false);
        mainMenuCanvas.SetActive(false);
    }
    public void ExitPromptNo()
    {
        exitPrompt = false;
        exitPromptCanvas.SetActive(false);

        //Enabling buttons of MainMenu but don't hide
        foreach (Transform child in mainMenuCanvas.transform)
        {
            child.GetComponentInChildren<Button>().interactable = true;
        }
    }
    public void BackButton()
    {
        mainMenuActive = true;
    }

    private void PlayerSelect()
    {
        if (playCanvas.activeSelf && Input.GetButtonDown("A_P2") || GameManager.m_Instance.m_NumOfPlayers == 1) 
        {

        }
        if (playCanvas.activeSelf && Input.GetButtonDown("A_P3") || GameManager.m_Instance.m_NumOfPlayers == 2)
        {

        }
        if (playCanvas.activeSelf && Input.GetButtonDown("A_P4") || GameManager.m_Instance.m_NumOfPlayers == 3)
        {

        }
    }
}
