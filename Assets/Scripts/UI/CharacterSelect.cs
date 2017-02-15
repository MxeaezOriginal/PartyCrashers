using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.UI;

public class CharacterSelect : MonoBehaviour
{
    public enum PlayerOne
    {
        nullType,
        P1,
        P2,
        P3,
        P4,
        Keyboard
    }
    public enum PlayerTwo
    {
        nullType,
        P1,
        P2,
        P3,
        P4,
        Keyboard
    }
    public enum PlayerThree
    {
        nullType,
        P1,
        P2,
        P3,
        P4,
        Keyboard
    }
    public enum PlayerFour
    {
        nullType,
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
    //[HideInInspector]
    public PlayerOne firstPlayer;
    //[HideInInspector]
    public PlayerTwo secondPlayer;
    //[HideInInspector]
    public PlayerThree thirdPlayer;
    //[HideInInspector]
    public PlayerFour fourthPlayer;
    //[HideInInspector]
    public Character P1, P2, P3, P4;
    float cooldown = 0.3f;

    //[HideInInspector]
    public bool P1Join, P2Join, P3Join, P4Join, KeyboardJoin;
    //[HideInInspector]
    public bool P1Locked, P2Locked, P3Locked, P4Locked;
    //[HideInInspector]
    //public bool canBack, canLockIn, allowToLock;
    public bool canBack;

    public int playersLockedIn;
    public bool canStartGame;

    public GameObject[] readyText;
    public GameObject lockInText, lockInTextOutline;

    //Bools for preventing adding playersLockedIn with each "A" button
    public bool playerOneJoined, playerTwoJoined, playerThreeJoined, playerFourJoined;

    MenuManager menuManager;
    void Awake()
    {
        menuManager = GetComponent<MenuManager>();
        P1.characterSelectIcon = GameObject.Find("P1_CharacterSelectIcon/Image").GetComponent<Image>();
        P2.characterSelectIcon = GameObject.Find("P2_CharacterSelectIcon/Image").GetComponent<Image>();
        P3.characterSelectIcon = GameObject.Find("P3_CharacterSelectIcon/Image").GetComponent<Image>();
        P4.characterSelectIcon = GameObject.Find("P4_CharacterSelectIcon/Image").GetComponent<Image>();

        P1.cooldownCounter = -1; P2.cooldownCounter = -1; P3.cooldownCounter = -1; P4.cooldownCounter = -1;
        //canLockIn = true;
    }

    void Update()
    {
        PlayerIndexSorting();
        JoinGame();
        SelectCharacter();
        LockInPlayer();
        ShowLockedInImage();
        UnLockPlayer();
        BackToMainMenu();
        StartGame();

        if (P1Locked || P2Locked || P3Locked || P4Locked)
            canBack = false;
        else
            canBack = true;

        if (canStartGame)
        {
            lockInText.GetComponent<Text>().text = "'A'/ENTER START";
            lockInTextOutline.GetComponent<Text>().text = "'A'/ENTER START";
            if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller))
                SceneManager.LoadScene(GameManager.m_Instance.m_LevelToStart);
        }
        else
        {
            lockInText.GetComponent<Text>().text = "'A'/ENTER LOCKIN";
            lockInTextOutline.GetComponent<Text>().text = "'A'/ENTER LOCKIN";
        }
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

    void JoinGame()
    {
        if (GameManager.m_Instance.m_NumOfPlayers <= 4)
        {
            //P2-4 Join
            if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P1"))
            {
                if (!P1Join)
                {
                    int players = ++GameManager.m_Instance.m_NumOfPlayers;
                    AssignController(Player.Controller.P1);
                    Debug.Log("Player " + players + " has Joined!");
                    P1Join = true;

                    if (firstPlayer != PlayerOne.P1)
                    {
                        if (secondPlayer == PlayerTwo.nullType)
                        {
                            secondPlayer = PlayerTwo.P1;
                        }
                        else if (thirdPlayer == PlayerThree.nullType)
                        {
                            thirdPlayer = PlayerThree.P1;
                        }
                        else if (fourthPlayer == PlayerFour.nullType)
                        {
                            fourthPlayer = PlayerFour.P1;
                        }
                    }

                }
            }
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P2"))
        {
            if (!P2Join)
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                AssignController(Player.Controller.P2);
                Debug.Log("Player " + players + " has Joined!");
                P2Join = true;

                if (firstPlayer != PlayerOne.P2)
                {
                    if (secondPlayer == PlayerTwo.nullType)
                    {
                        secondPlayer = PlayerTwo.P2;
                    }
                    else if (thirdPlayer == PlayerThree.nullType)
                    {
                        thirdPlayer = PlayerThree.P2;
                    }
                    else if (fourthPlayer == PlayerFour.nullType)
                    {
                        fourthPlayer = PlayerFour.P2;
                    }
                }

            }
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P3"))
        {
            if (!P3Join)
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                AssignController(Player.Controller.P3);
                Debug.Log("Player " + players + " has Joined!");
                P3Join = true;

                if (firstPlayer != PlayerOne.P3)
                {
                    if (secondPlayer == PlayerTwo.nullType)
                    {
                        secondPlayer = PlayerTwo.P3;
                    }
                    else if (thirdPlayer == PlayerThree.nullType)
                    {
                        thirdPlayer = PlayerThree.P3;
                    }
                    else if (fourthPlayer == PlayerFour.nullType)
                    {
                        fourthPlayer = PlayerFour.P3;
                    }
                }
            }
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P4"))
        {
            if (!P4Join)
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                AssignController(Player.Controller.P4);
                Debug.Log("Player " + players + " has Joined!");
                P4Join = true;

                if (firstPlayer != PlayerOne.P4)
                {
                    if (secondPlayer == PlayerTwo.nullType)
                    {
                        secondPlayer = PlayerTwo.P4;
                    }
                    else if (thirdPlayer == PlayerThree.nullType)
                    {
                        thirdPlayer = PlayerThree.P4;
                    }
                    else if (fourthPlayer == PlayerFour.nullType)
                    {
                        fourthPlayer = PlayerFour.P4;
                    }
                }
            }
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Submit_Keyboard"))
        {
            if (!KeyboardJoin)
            {
                int players = ++GameManager.m_Instance.m_NumOfPlayers;
                AssignController(Player.Controller.Keyboard);
                Debug.Log("Player " + players + " has Joined!");
                KeyboardJoin = true;

                if (firstPlayer != PlayerOne.Keyboard)
                {
                    if (secondPlayer == PlayerTwo.nullType)
                    {
                        secondPlayer = PlayerTwo.Keyboard;
                    }
                    else if (thirdPlayer == PlayerThree.nullType)
                    {
                        thirdPlayer = PlayerThree.Keyboard;
                    }
                    else if (fourthPlayer == PlayerFour.nullType)
                    {
                        fourthPlayer = PlayerFour.Keyboard;
                    }
                }
            }
        }
    }
    void LockInPlayer()
    {
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P1"))/* && canLockIn)*/
        {
            if (firstPlayer == PlayerOne.P1 && !playerOneJoined)
            {
                P1Locked = true;
                playerOneJoined = true;
                playersLockedIn++;
            }
            if (secondPlayer == PlayerTwo.P1 && !playerTwoJoined)
            {
                P2Locked = true;
                playerTwoJoined = true;
                playersLockedIn++;
            }
            if (thirdPlayer == PlayerThree.P1 && !playerThreeJoined)
            {
                P3Locked = true;
                playerThreeJoined = true;
                playersLockedIn++;
            }
            if (fourthPlayer == PlayerFour.P1 && !playerFourJoined)
            {
                P4Locked = true;
                playerFourJoined = true;
                playersLockedIn++;
            }
            //allowToLock = true;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P2"))/* && canLockIn && !playerTwoJoined)*/
        {
            if (firstPlayer == PlayerOne.P2 && !playerOneJoined)
            {
                P1Locked = true;
                playerOneJoined = true;
                playersLockedIn++;
            }
            if (secondPlayer == PlayerTwo.P2 && !playerTwoJoined)
            {
                P2Locked = true;
                playerTwoJoined = true;
                playersLockedIn++;
            }
            if (thirdPlayer == PlayerThree.P2 && !playerThreeJoined)
            {
                P3Locked = true;
                playerThreeJoined = true;
                playersLockedIn++;
            }
            if (fourthPlayer == PlayerFour.P2 && !playerFourJoined)
            {
                P4Locked = true;
                playerFourJoined = true;
                playersLockedIn++;
            }

            //allowToLock = true;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P3"))/* && canLockIn && !playerThreeJoined)*/
        {
            if (firstPlayer == PlayerOne.P3 && !playerOneJoined)
            {
                P1Locked = true;
                playerOneJoined = true;
                playersLockedIn++;
            }
            if (secondPlayer == PlayerTwo.P3 && !playerTwoJoined)
            {
                P2Locked = true;
                playerTwoJoined = true;
                playersLockedIn++;
            }
            if (thirdPlayer == PlayerThree.P3 && !playerThreeJoined)
            {
                P3Locked = true;
                playerThreeJoined = true;
                playersLockedIn++;
            }
            if (fourthPlayer == PlayerFour.P3 && !playerFourJoined)
            {
                P4Locked = true;
                playerFourJoined = true;
                playersLockedIn++;
            }
            //allowToLock = true;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_P4"))/* && canLockIn && !playerFourJoined)*/
        {
            if (firstPlayer == PlayerOne.P4 && !playerOneJoined)
            {
                P1Locked = true;
                playerOneJoined = true;
                playersLockedIn++;
            }
            if (secondPlayer == PlayerTwo.P4 && !playerTwoJoined)
            {
                P2Locked = true;
                playerTwoJoined = true;
                playersLockedIn++;
            }
            if (thirdPlayer == PlayerThree.P4 && !playerThreeJoined)
            {
                P3Locked = true;
                playerThreeJoined = true;
                playersLockedIn++;
            }
            if (fourthPlayer == PlayerFour.P4 && !playerFourJoined)
            {
                P4Locked = true;
                playerFourJoined = true;
                playersLockedIn++;
            }
            //allowToLock = true;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Jump_Keyboard"))
        {
            if (firstPlayer == PlayerOne.Keyboard && !playerOneJoined)
            {
                P1Locked = true;
                playerOneJoined = true;
                playersLockedIn++;
            }
            if (secondPlayer == PlayerTwo.Keyboard && !playerTwoJoined)
            {
                P2Locked = true;
                playerTwoJoined = true;
                playersLockedIn++;
            }
            if (thirdPlayer == PlayerThree.Keyboard && !playerThreeJoined)
            {
                P3Locked = true;
                playerThreeJoined = true;
                playersLockedIn++;
            }
            if (fourthPlayer == PlayerFour.Keyboard && !playerFourJoined)
            {
                P4Locked = true;
                playerFourJoined = true;
                playersLockedIn++;
            }
        }
    }

    void ShowLockedInImage()
    {
        if (P1Locked)
            readyText[0].SetActive(true);
        else
            readyText[0].SetActive(false);

        if (P2Locked)
            readyText[1].SetActive(true);
        else
            readyText[1].SetActive(false);

        if (P3Locked)
            readyText[2].SetActive(true);
        else
            readyText[2].SetActive(false);

        if (P4Locked)
            readyText[3].SetActive(true);
        else
            readyText[3].SetActive(false);
    }

    void BackToMainMenu()
    {
        //ONLY P1
        if (menuManager.canvases[2].activeSelf)
        {
            if (GameManager.m_Instance.m_Player1.m_Controller != Player.Controller.Keyboard)
            {
                if (Input.GetButtonDown("Back_" + GameManager.m_Instance.m_Player1.m_Controller) && canBack)
                {
                    menuManager.mainMenuActive = true;
                    GameManager.m_Instance.m_NumOfPlayers = 1;
                    playersLockedIn = 0;

                    switch (firstPlayer)
                    {
                        case PlayerOne.P1:
                            P2Join = false;
                            P3Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P2:
                            P1Join = false;
                            P3Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P3:
                            P1Join = false;
                            P2Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P4:
                            P1Join = false;
                            P2Join = false;
                            P3Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.Keyboard:
                            P1Join = false;
                            P2Join = false;
                            P3Join = false;
                            P4Join = false;
                            break;
                    }

                    //Set characterSelectIcon to default\
                    P1.characterSelectIcon.sprite = null;
                    P2.characterSelectIcon.sprite = null;
                    P3.characterSelectIcon.sprite = null;
                    P4.characterSelectIcon.sprite = null;


                    secondPlayer = PlayerTwo.nullType;
                    thirdPlayer = PlayerThree.nullType;
                    fourthPlayer = PlayerFour.nullType;
                }
            }
            else
            {
                if (Input.GetButtonDown("Back_Keyboard") && canBack)
                {
                    menuManager.mainMenuActive = true;
                    GameManager.m_Instance.m_NumOfPlayers = 1;
                    playersLockedIn = 0;

                    switch (firstPlayer)
                    {
                        case PlayerOne.P1:
                            P2Join = false;
                            P3Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P2:
                            P1Join = false;
                            P3Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P3:
                            P1Join = false;
                            P2Join = false;
                            P4Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.P4:
                            P1Join = false;
                            P2Join = false;
                            P3Join = false;
                            KeyboardJoin = false;
                            break;
                        case PlayerOne.Keyboard:
                            P1Join = false;
                            P2Join = false;
                            P3Join = false;
                            P4Join = false;
                            break;
                    }

                    //Set characterSelectIcon to default\
                    P1.characterSelectIcon.sprite = null;
                    P2.characterSelectIcon.sprite = null;
                    P3.characterSelectIcon.sprite = null;
                    P4.characterSelectIcon.sprite = null;


                    secondPlayer = PlayerTwo.nullType;
                    thirdPlayer = PlayerThree.nullType;
                    fourthPlayer = PlayerFour.nullType;
                }
            }
        }
    }

    void UnLockPlayer()
    {
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_P1"))
        {
            if (firstPlayer == PlayerOne.P1 && P1Locked)
            {
                P1Locked = false;
                playerOneJoined = false;
            }
            if (secondPlayer == PlayerTwo.P1 && P2Locked)
            {
                P2Locked = false;
                playerTwoJoined = false;
            }
            if (thirdPlayer == PlayerThree.P1 && P3Locked)
            {
                P3Locked = false;
                playerThreeJoined = false;
            }
            if (fourthPlayer == PlayerFour.P1 && P4Locked)
            {
                P4Locked = false;
                playerFourJoined = false;
            }

            playersLockedIn--;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_P2"))
        {
            if (firstPlayer == PlayerOne.P2 && P1Locked)
            {
                P1Locked = false;
                playerOneJoined = false;
            }
            if (secondPlayer == PlayerTwo.P2 && P2Locked)
            {
                P2Locked = false;
                playerTwoJoined = false;
            }
            if (thirdPlayer == PlayerThree.P2 && P3Locked)
            {
                P3Locked = false;
                playerThreeJoined = false;
            }
            if (fourthPlayer == PlayerFour.P2 && P4Locked)
            {
                P4Locked = false;
                playerFourJoined = false;
            }

            playersLockedIn--;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_P3"))
        {
            if (firstPlayer == PlayerOne.P1 && P1Locked)
            {
                P1Locked = false;
                playerOneJoined = false;
            }
            if (secondPlayer == PlayerTwo.P3 && P2Locked)
            {
                P2Locked = false;
                playerTwoJoined = false;
            }
            if (thirdPlayer == PlayerThree.P3 && P3Locked)
            {
                P3Locked = false;
                playerThreeJoined = false;
            }
            if (fourthPlayer == PlayerFour.P3 && P4Locked)
            {
                P4Locked = false;
                playerFourJoined = false;
            }

            playersLockedIn--;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_P4"))
        {
            if (firstPlayer == PlayerOne.P4 && P1Locked)
            {
                P1Locked = false;
                playerOneJoined = false;
            }
            if (secondPlayer == PlayerTwo.P4 && P2Locked)
            {
                P2Locked = false;
                playerTwoJoined = false;
            }
            if (thirdPlayer == PlayerThree.P4 && P3Locked)
            {
                P3Locked = false;
                playerThreeJoined = false;
            }
            if (fourthPlayer == PlayerFour.P4 && P4Locked)
            {
                P4Locked = false;
                playerFourJoined = false;
            }

            playersLockedIn--;
        }
        if (menuManager.canvases[2].activeSelf && Input.GetButtonDown("Back_Keyboard"))
        {
            if (firstPlayer == PlayerOne.Keyboard && P1Locked)
            {
                P1Locked = false;
                playerOneJoined = false;
            }
            if (secondPlayer == PlayerTwo.Keyboard && P2Locked)
            {
                P2Locked = false;
                playerTwoJoined = false;
            }
            if (thirdPlayer == PlayerThree.Keyboard && P3Locked)
            {
                P3Locked = false;
                playerThreeJoined = false;
            }
            if (fourthPlayer == PlayerFour.Keyboard && P4Locked)
            {
                P4Locked = false;
                playerFourJoined = false;
            }

            playersLockedIn--;
        }

    }

    void P1Selection()
    {
        if (menuManager.canvases[2].activeSelf && !P1Locked && firstPlayer != PlayerOne.nullType)
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
        if (menuManager.canvases[2].activeSelf && !P2Locked && secondPlayer != PlayerTwo.nullType)
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
        if (menuManager.canvases[2].activeSelf && !P3Locked && thirdPlayer != PlayerThree.nullType)
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
        if (menuManager.canvases[2].activeSelf && !P4Locked && fourthPlayer != PlayerFour.nullType)
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
        if (menuManager.canvases[2].activeSelf && playersLockedIn == GameManager.m_Instance.m_NumOfPlayers)
            StartCoroutine(DelayForCanStartGameBool());
        else
            canStartGame = false;
    }

    IEnumerator DelayForCanStartGameBool()
    {
        yield return new WaitForSeconds(0.1f);
        canStartGame = true;
    }
}