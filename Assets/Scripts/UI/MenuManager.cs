using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class MenuManager : MonoBehaviour
{

    [Header("Different Canvases")]
    //In Hir. assign following things
    public GameObject[] canvases;

    [Header("Different 'First Selected' Buttons")]
    public GameObject[] firstSelectedButtons;

    [Header("List of ALL Buttons")]
    public GameObject[] allButtons;

    [Header("Bools")]
    public bool waitedForADelay;
    public bool splashActive, mainMenuActive, playActive, settingsActive, creditsActive, exitPromptActive, exitActive;
    [Header("'Back' Button Available")]
    public bool canBack;
    Animator anim;
    EventSystem es;
    CharacterSelect characterSelect;

    void Awake()
    {
        anim = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Animator>();
        es = GameObject.Find("Main Menu Canvas/EventSystem").GetComponent<EventSystem>();
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
            StartCoroutine(Splash());
        else if (mainMenuActive)
            StartCoroutine(MainMenu());
        else if (playActive)
            StartCoroutine(Play());
        else if (settingsActive)
            StartCoroutine(Settings());
        else if (creditsActive)
            StartCoroutine(Credits());
        else if (exitPromptActive)
            StartCoroutine(ExitPrompt());

        //if (canBack && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller)) //PRESS FOR BACK BUTTON
        //    BackButton();

        StartCoroutine(SelectedAnimationWaitForEndOfFrame());
    }

    //Main Functions for setting all the bools

    IEnumerator Splash()
    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[0]); es.firstSelectedGameObject = firstSelectedButtons[0];

        //Setting Animator bools
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        //Setting ****Active bool to false to prevent multiple function runs
        splashActive = false;

        //Toggle on and off Canvases
        canvases[0].SetActive(true);
        canvases[1].SetActive(false);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);
        canvases[4].SetActive(false);
        canvases[5].SetActive(false);
    }
    IEnumerator MainMenu()
    {
        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[1]); es.firstSelectedGameObject = firstSelectedButtons[1];
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        mainMenuActive = false;
        canBack = false;

        canvases[0].SetActive(false);
        canvases[1].SetActive(true);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);
        canvases[4].SetActive(false);
        canvases[5].SetActive(false);
    }
    IEnumerator Play()
    {
        anim.SetBool("Play", true);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", false);

        playActive = false;
        canBack = true;

        canvases[0].SetActive(false);
        canvases[1].SetActive(false);
        canvases[3].SetActive(false);
        canvases[4].SetActive(false);
        canvases[5].SetActive(false);

        yield return new WaitForSeconds(1.5f);
        canvases[2].SetActive(true);
    }
    IEnumerator Settings()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", true);
        anim.SetBool("Credits", false);

        settingsActive = false;
        canBack = true;

        canvases[0].SetActive(false);
        canvases[1].SetActive(false);
        canvases[2].SetActive(false);
        canvases[4].SetActive(false);
        canvases[5].SetActive(false);

        yield return new WaitForSeconds(1.5f);
        canvases[3].SetActive(true);

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[2]); es.firstSelectedGameObject = firstSelectedButtons[2];
    }
    IEnumerator Credits()
    {
        anim.SetBool("Play", false);
        anim.SetBool("Settings", false);
        anim.SetBool("Credits", true);

        creditsActive = false;
        canBack = true;

        canvases[0].SetActive(false);
        canvases[1].SetActive(false);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);
        canvases[5].SetActive(false);

        yield return new WaitForSeconds(1.5f);
        canvases[4].SetActive(true);
    }
    IEnumerator ExitPrompt()
    {
        canvases[0].SetActive(false);
        canvases[1].SetActive(true);
        canvases[2].SetActive(false);
        canvases[3].SetActive(false);
        canvases[4].SetActive(false);
        canvases[5].SetActive(true);

        exitPromptActive = false;

        yield return null; es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(firstSelectedButtons[3]); es.firstSelectedGameObject = firstSelectedButtons[3];

        //Disabling buttons of MainMenu but don't hide
        foreach (Transform child in canvases[1].transform)
        {
            child.GetComponentInChildren<Button>().interactable = false;
        }
    }

    IEnumerator SelectedAnimationWaitForEndOfFrame()
    {
        yield return new WaitForEndOfFrame();
        //SelectedAnimation();
    }

    void SelectedAnimation()
    {
        if (es.currentSelectedGameObject == allButtons[0])
            allButtons[0].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[0].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[1])
            allButtons[1].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[1].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[2])
            allButtons[2].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[2].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[3])
            allButtons[3].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[3].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[4])
            allButtons[4].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[4].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[5])
            allButtons[5].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[5].GetComponent<Animator>().SetBool("Selected", false);

        if (es.currentSelectedGameObject == allButtons[6])
            allButtons[6].GetComponent<Animator>().SetBool("Selected", true);
        else
            allButtons[6].GetComponent<Animator>().SetBool("Selected", false);
    }

    //Functions assigned to buttons in main menu - SETTING ****Active bool to true;
    public void SplashButton()
    {
        mainMenuActive = true;
        StandaloneInputModule inputModule = es.gameObject.GetComponent<StandaloneInputModule>();
        if (GameManager.m_Instance.m_NumOfPlayers <= 4)
        {
            //P2-4 Join
            if (canvases[0].activeSelf && Input.GetButtonDown("Jump_P1"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P1);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P1";
                inputModule.horizontalAxis = "Horizontal_P1";
                inputModule.verticalAxis = "Vertical_P1";
                characterSelect.P1Join = true;
                characterSelect.canLockIn_P1 = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P1;
            }
            if (canvases[0].activeSelf && Input.GetButtonDown("Jump_P2"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P2);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P2";
                inputModule.horizontalAxis = "Horizontal_P2";
                inputModule.verticalAxis = "Vertical_P2";
                characterSelect.P2Join = true;
                characterSelect.canLockIn_P2 = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P2;
            }
            if (canvases[0].activeSelf && Input.GetButtonDown("Jump_P3"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P3);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P3";
                inputModule.horizontalAxis = "Horizontal_P3";
                inputModule.verticalAxis = "Vertical_P3";
                characterSelect.P3Join = true;
                characterSelect.canLockIn_P3 = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P3;
            }
            if (canvases[0].activeSelf && Input.GetButtonDown("Jump_P4"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.P4);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Jump_P4";
                inputModule.horizontalAxis = "Horizontal_P4";
                inputModule.verticalAxis = "Vertical_P4";
                characterSelect.P4Join = true;
                characterSelect.canLockIn_P4 = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.P4;
            }

            if (canvases[0].activeSelf && Input.GetButtonDown("Submit_Keyboard"))
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                characterSelect.AssignController(Player.Controller.Keyboard);
                Debug.Log("Player " + players + " has Joined!");
                inputModule.submitButton = "Submit_Keyboard";
                inputModule.horizontalAxis = "HorizontalRotation_Keyboard";
                inputModule.verticalAxis = "VerticalRotation_Keyboard";
                characterSelect.KeyboardJoin = true;
                characterSelect.canLockIn_Keyboard = true;
                characterSelect.firstPlayer = CharacterSelect.PlayerOne.Keyboard;
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
        canvases[5].SetActive(false);
        canvases[1].SetActive(false);
    }
    public void ExitPromptNo()
    {
        exitPromptActive = false;
        canvases[5].SetActive(false);

        //Enabling buttons of MainMenu but don't hide
        foreach (Transform child in canvases[1].transform)
        {
            child.GetComponentInChildren<Button>().interactable = true;
        }
        firstSelectedButtons[1].GetComponent<Button>().Select();

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
