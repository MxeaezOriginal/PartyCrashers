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
    [Header("'Back' Button Available")]
    public bool canBack;
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
        characterSelect = GetComponent<CharacterSelect>();
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
        {
            StartCoroutine(Splash());
        }
        if (mainMenuActive)
        {
            StartCoroutine(MainMenu());
        }
        if (playActive)
        {
            StartCoroutine(Play());
        }
        if (settingsActive)
        {
            StartCoroutine(Settings());
        }
        if (creditsActive)
        {
            StartCoroutine(Credits());
        }
        if (exitPromptActive)
        {
            StartCoroutine(ExitPrompt());
        }

        if (canBack)
        {
            //if (!characterSelect.P1Locked)
            //{
                if (Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller)) //PRESS FOR BACK BUTTON
                {
                    BackButton();
                }
            //}
            //else
            //{
            //    if (Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller))
            //    {
            //        print("Player 1 Canceled Lock In");
            //        characterSelect.P1Locked = false;
            //    }
            //}

            //if (characterSelect.P2Locked)
            //{
                //if (Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player2.m_Controller))
                //{
                //    print("Player 2 Canceled Lock In");
                //    //characterSelect.P2Locked = false;
                //}
            //}
        }
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
        canBack = false;

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
        canBack = true;

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
        canBack = true;

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
        canBack = true;

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
        StandaloneInputModule inputModule = es.gameObject.GetComponent<StandaloneInputModule>();
        if (GameManager.m_Instance.m_NumOfPlayers <= 4)
        {
            //P2-4 Join
            if (splashCanvas.activeSelf && Input.GetButtonDown("Jump_P1"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P1);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P1";
                inputModule.horizontalAxis = "Horizontal_P1";
                inputModule.verticalAxis = "Vertical_P1";
                characterSelect.P1Join = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P1;
            }
            if (splashCanvas.activeSelf && Input.GetButtonDown("Jump_P2"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P2);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P2";
                inputModule.horizontalAxis = "Horizontal_P2";
                inputModule.verticalAxis = "Vertical_P2";
                characterSelect.P2Join = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P2;
            }
            if (splashCanvas.activeSelf && Input.GetButtonDown("Jump_P3"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P3);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P3";
                inputModule.horizontalAxis = "Horizontal_P3";
                inputModule.verticalAxis = "Vertical_P3";
                characterSelect.P3Join = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P3;
            }
            if (splashCanvas.activeSelf && Input.GetButtonDown("Jump_P4"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P4);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P4";
                inputModule.horizontalAxis = "Horizontal_P4";
                inputModule.verticalAxis = "Vertical_P4";
                characterSelect.P4Join = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P4;
            }
            if (splashCanvas.activeSelf && Input.GetButtonDown("Submit_Keyboard"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.Keyboard);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Submit_Keyboard";
                inputModule.horizontalAxis = "HorizontalRotation_Keyboard";
                inputModule.verticalAxis = "VerticalRotation_Keyboard";
                characterSelect.KeyboardJoin = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P4;
            }
        }
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
        GameManager.m_Instance.m_NumOfPlayers = 1;

        switch (characterSelect.firstPlayer)
        {
            case CharacterSelect.PlayerOne.P1:
                characterSelect.P2Join = false;
                characterSelect.P3Join = false;
                characterSelect.P4Join = false;
                characterSelect.KeyboardJoin = false;
                break;
            case CharacterSelect.PlayerOne.P2:
                characterSelect.P1Join = false;
                characterSelect.P3Join = false;
                characterSelect.P4Join = false;
                characterSelect.KeyboardJoin = false;
                break;
            case CharacterSelect.PlayerOne.P3:
                characterSelect.P1Join = false;
                characterSelect.P2Join = false;
                characterSelect.P4Join = false;
                characterSelect.KeyboardJoin = false;
                break;
            case CharacterSelect.PlayerOne.P4:
                characterSelect.P1Join = false;
                characterSelect.P2Join = false;
                characterSelect.P3Join = false;
                characterSelect.KeyboardJoin = false;
                break;
            case CharacterSelect.PlayerOne.Keyboard:
                characterSelect.P1Join = false;
                characterSelect.P2Join = false;
                characterSelect.P3Join = false;
                characterSelect.P4Join = false;
                break;
        }

        //Set characterSelectIcon to default\
        characterSelect.P1.characterSelectIcon.sprite = null;
        characterSelect.P2.characterSelectIcon.sprite = null;
        characterSelect.P3.characterSelectIcon.sprite = null;
        characterSelect.P4.characterSelectIcon.sprite = null;
    }
}
