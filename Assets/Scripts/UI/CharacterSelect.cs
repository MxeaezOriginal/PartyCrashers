using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.UI;

public class CharacterSelect : MonoBehaviour
{
    public enum PlayerOne
    {
        P1,
        P2,
        P3,
        P4,
        Keyboard
    }

    [System.Serializable]
    public struct Character
    {
        public Sprite[] characters;
        public Image characterSelectIcon;
        public int index;
        public float cooldownCounter;
    }
    public Character P1, P2, P3, P4;
    [Header("Bools & CD on character switch")]
    public PlayerOne firstPlayer;
    public float cooldown = 0.3f;
    public bool P1Join, P2Join, P3Join, P4Join, KeyboardJoin;
    public bool P1Locked, P2Locked, P3Locked, P4Locked;

    public float timeLeftOG = 0.01f;
    public float timeLeft;
    public bool canBack;
    public bool delayBetweenUnlockAndBack;

    public GameObject[] lockedText;

    MenuManager menuManager;
    void Awake()
    {
        menuManager = GetComponent<MenuManager>();
        P1.characterSelectIcon = GameObject.Find("P1_CharacterSelectIcon/Image").GetComponent<Image>();
        P2.characterSelectIcon = GameObject.Find("P2_CharacterSelectIcon/Image").GetComponent<Image>();
        P3.characterSelectIcon = GameObject.Find("P3_CharacterSelectIcon/Image").GetComponent<Image>();
        P4.characterSelectIcon = GameObject.Find("P4_CharacterSelectIcon/Image").GetComponent<Image>();

        P1.cooldownCounter = -1; P2.cooldownCounter = -1; P3.cooldownCounter = -1; P4.cooldownCounter = -1;
        timeLeft = timeLeftOG;
    }

    void Update()
    {
        PlayerIndexSorting();
        JoinGame();
        SelectCharacter();
        LockInPlayer();
        UnLockPlayer();
        BackToMainMenu();

        if (delayBetweenUnlockAndBack)
        {
            timeLeft -= Time.deltaTime;
            if (timeLeft < 0)
                canBack = true;
        }

        //LOCKED TEXT !!!!TEMP.
        if (P1Locked)
            lockedText[0].SetActive(true);
        else
            lockedText[0].SetActive(false);

        if (P2Locked)
            lockedText[1].SetActive(true);
        else
            lockedText[1].SetActive(false);
    }
    void PlayerIndexSorting()
    {
        if (P1.index > 3)
            P1.index = 0;
        if (P1.index < 0)
            P1.index = 3;
        //////////////////
        if (P2.index > 3)
            P2.index = 0;
        if (P2.index < 0)
            P2.index = 3;
        //////////////////
        if (P3.index > 3)
            P3.index = 0;
        if (P3.index < 0)
            P3.index = 3;
        //////////////////
        if (P4.index > 3)
            P4.index = 0;
        if (P4.index < 0)
            P4.index = 3;
    }
    public void AssignController(Player.Controller controller)
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                GameManager.m_Instance.m_Player1.m_Controller = controller;
                break;
            case 2:
                GameManager.m_Instance.m_Player2.m_Controller = controller;
                break;
            case 3:
                GameManager.m_Instance.m_Player3.m_Controller = controller;
                break;
            case 4:
                GameManager.m_Instance.m_Player4.m_Controller = controller;
                break;
        }
    }

    void Reset()
    {
        canBack = false;
        delayBetweenUnlockAndBack = false;
        timeLeft = timeLeftOG;
    }
    void JoinGame()
    {
        if (GameManager.m_Instance.m_NumOfPlayers <= 4)
        {

            if(menuManager.canvases[2].activeSelf && !P2Join)
            {
                if(Input.GetKeyDown("Jump_P1") || Input.GetKeyDown("Jump_P2") || Input.GetKeyDown("Jump_P3") || Input.GetKeyDown("Jump_P4"))
                {
                    switch (GameManager.m_Instance.m_NumOfPlayers)
                    {
                        case 1:
                            P1Join = true;
                            break;
                        case 2:
                            P2Join = true;
                            break;
                        case 3:
                            P3Join = true;
                            break;
                        case 4:
                            P4Join = true;
                            break;
                    }
                }
            }


            ////P2-4 Join
            //if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P1"))
            //{
            //    if (!P1Join)
            //    {
            //        int players = ++GameManager.m_Instance.m_NumOfPlayers;
            //        AssignController(Player.Controller.P1);
            //        Debug.Log("Player " + players + " has Joined!");
            //        P1Join = true;
            //    }
            //}
            //if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P2"))
            //{
            //    if (!P2Join)
            //    {
            //        int players = ++GameManager.m_Instance.m_NumOfPlayers;
            //        AssignController(Player.Controller.P2);
            //        Debug.Log("Player " + players + " has Joined!");
            //        P2Join = true;
            //    }
            //}
            //if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P3"))
            //{
            //    if (!P3Join)
            //    {
            //        int players = ++GameManager.m_Instance.m_NumOfPlayers;
            //        AssignController(Player.Controller.P3);
            //        Debug.Log("Player " + players + " has Joined!");
            //        P3Join = true;
            //    }
            //}
            //if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P4"))
            //{
            //    if (!P4Join)
            //    {
            //        int players = ++GameManager.m_Instance.m_NumOfPlayers;
            //        AssignController(Player.Controller.P4);
            //        Debug.Log("Player " + players + " has Joined!");
            //        P4Join = true;
            //    }
            //}
            //if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Submit_Keyboard"))
            //{
            //    if (!KeyboardJoin)
            //    {
            //        int players = ++GameManager.m_Instance.m_NumOfPlayers;
            //        AssignController(Player.Controller.Keyboard);
            //        Debug.Log("Player " + players + " has Joined!");
            //        KeyboardJoin = true;
            //    }
            //}
            ////if (menuManager.canvases[2].activeSelf && Input.GetKeyDown(KeyCode.Space))
            ////{
            ////    StartGame();
            ////}
        }
    }
    void LockInPlayer()
    {
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller) && P1Join)
        {
            P1Locked = true;
            Reset();
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller) && P2Join)
        {
            P2Locked = true;
            Reset();
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller) && P3Join)
        {
            P3Locked = true;
            Reset();
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller) && P4Join)
        {
            P4Locked = true;
            Reset();
        }
    }

    void BackToMainMenu()
    {
        //ONLY P1
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && P1Join && !P1Locked && canBack)
        {
            menuManager.mainMenuActive = true;
            GameManager.m_Instance.m_NumOfPlayers = 1;
            Reset();
        }
    }
    void UnLockPlayer()
    {
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && P1Locked)
        {
            delayBetweenUnlockAndBack = true;
            P1Locked = false;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && P2Locked)
        {
            delayBetweenUnlockAndBack = true;
            P2Locked = false;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && P3Locked)
        {
            delayBetweenUnlockAndBack = true;
            P3Locked = false;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && P4Locked)
        {
            delayBetweenUnlockAndBack = true;
            P4Locked = false;
        }


    }

    void P1Selection()
    {
        if (menuManager.canvases[2].activeSelf && !P1Locked)
        {
            P1.characterSelectIcon.sprite = P1.characters[P1.index];
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller) < 0)    //Scroll Left
            {
                if (P1.cooldownCounter < Time.time - cooldown || P1.cooldownCounter == -1)
                {
                    P1.index--;

                    P1.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller) > 0)     //Scroll Right
            {
                if (P1.cooldownCounter < Time.time - cooldown || P1.cooldownCounter == -1)
                {
                    P1.index++;

                    P1.cooldownCounter = Time.time;
                }
            }
        }
    }
    void P2Selection()
    {
        P2.characterSelectIcon.sprite = P2.characters[P2.index];
        if (menuManager.canvases[2].activeSelf && !P2Locked)
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller) < 0)
            {
                if (P2.cooldownCounter < Time.time - cooldown || P2.cooldownCounter == -1)
                {
                    P2.index--;

                    P2.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller) > 0)
            {
                if (P2.cooldownCounter < Time.time - cooldown || P2.cooldownCounter == -1)
                {
                    P2.index++;

                    P2.cooldownCounter = Time.time;
                }
            }
        }
    }
    void P3Selection()
    {
        P3.characterSelectIcon.sprite = P3.characters[P3.index];
        if (menuManager.canvases[2].activeSelf && !P3Locked)
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller) < 0)
            {
                if (P3.cooldownCounter < Time.time - cooldown || P3.cooldownCounter == -1)
                {
                    P3.index--;

                    P3.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller) > 0)
            {
                if (P3.cooldownCounter < Time.time - cooldown || P3.cooldownCounter == -1)
                {
                    P3.index++;

                    P3.cooldownCounter = Time.time;
                }
            }
        }
    }
    void P4Selection()
    {
        P4.characterSelectIcon.sprite = P4.characters[P4.index];
        if (menuManager.canvases[2].activeSelf && !P4Locked)
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller) < 0)
            {
                if (P4.cooldownCounter < Time.time - cooldown || P4.cooldownCounter == -1)
                {
                    P4.index--;

                    P4.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller) > 0)
            {
                if (P4.cooldownCounter < Time.time - cooldown || P4.cooldownCounter == -1)
                {
                    P4.index++;

                    P4.cooldownCounter = Time.time;
                }
            }
        }
    }
    void SelectCharacter()
    {
        P1Selection();
        P2Selection();
        P3Selection();
        P4Selection();
    }

    void StartGame()
    {
        SceneManager.LoadScene(GameManager.m_Instance.m_LevelToStart);
    }
}
