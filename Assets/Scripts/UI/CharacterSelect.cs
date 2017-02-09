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
    //public bool P1Locked, P2Locked, P3Locked, P4Locked;

    MenuManager menuManager;
    void Awake()
    {
        menuManager = GetComponent<MenuManager>();
        P1.characterSelectIcon = GameObject.Find("P1_CharacterSelectIcon/Image").GetComponent<Image>();
        P2.characterSelectIcon = GameObject.Find("P2_CharacterSelectIcon/Image").GetComponent<Image>();
        P3.characterSelectIcon = GameObject.Find("P3_CharacterSelectIcon/Image").GetComponent<Image>();
        P4.characterSelectIcon = GameObject.Find("P4_CharacterSelectIcon/Image").GetComponent<Image>();

        P1.cooldownCounter = -1; P2.cooldownCounter = -1; P3.cooldownCounter = -1; P4.cooldownCounter = -1;
    }

    void Update()
    {
        JoinGame();//P2-4 Join
        SelectCharacter();
        //LockingIn();

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
                }
            }
            if (menuManager.canvases[2].activeSelf && Input.GetKeyDown(KeyCode.Space))
            {
                StartGame();
            }
        }
    }
    //void LockingIn()
    //{
    //    if (GameManager.m_Instance.m_NumOfPlayers == 1
    //        && P1Locked)
    //    {
    //        print("START WITH 1 PLAYER");
    //    }
    //    if (GameManager.m_Instance.m_NumOfPlayers == 2
    //        && P1Locked && P2Locked)
    //    {
    //        print("START WITH 2 PLAYER");
    //    }
    //    if (GameManager.m_Instance.m_NumOfPlayers == 3
    //        && P1Locked && P2Locked && P3Locked)
    //    {
    //        print("START WITH 3 PLAYER");
    //    }
    //    if (GameManager.m_Instance.m_NumOfPlayers == 4
    //        && P1Locked && P2Locked && P3Locked && P4Locked)
    //    {
    //        print("START WITH 4 PLAYER");
    //    }
    //}
    void P1Selection()
    {
        if (menuManager.canvases[2].activeSelf)// && !P1Locked)  //If on "canvases[2]"
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
            if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller))// && !P1Locked) //LOCK-IN
            {
                StartGame();
            }
            //if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller))// && !P1Locked) //LOCK-IN
            //{
            //    P1Locked = true;
            //    print("Player 1 locked in!");
            //}
            //if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player1.m_Controller) && P1Locked)
            //{
            //    LockingIn();
            //}
        }
    }
    void P2Selection()
    {
        P2.characterSelectIcon.sprite = P2.characters[P2.index];
        if (menuManager.canvases[2].activeSelf)// && !P2Locked)  //If on "canvases[2]"
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller) < 0)    //Scroll Left
            {
                if (P2.cooldownCounter < Time.time - cooldown || P2.cooldownCounter == -1)
                {
                    P2.index--;

                    P2.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller) > 0)     //Scroll Right
            {
                if (P2.cooldownCounter < Time.time - cooldown || P2.cooldownCounter == -1)
                {
                    P2.index++;

                    P2.cooldownCounter = Time.time;
                }
            }
            //if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player2.m_Controller)) //LOCK-IN
            //{
            //    P2Locked = true;
            //    print("Player 2 locked in!");
            //}
        }
    }
    void P3Selection()
    {
        P3.characterSelectIcon.sprite = P3.characters[P3.index];
        if (menuManager.canvases[2].activeSelf)// && !P3Locked)  //If on "canvases[2]"
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller) < 0)    //Scroll Left
            {
                if (P3.cooldownCounter < Time.time - cooldown || P3.cooldownCounter == -1)
                {
                    P3.index--;

                    P3.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller) > 0)     //Scroll Right
            {
                if (P3.cooldownCounter < Time.time - cooldown || P3.cooldownCounter == -1)
                {
                    P3.index++;

                    P3.cooldownCounter = Time.time;
                }
            }
            //if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player3.m_Controller)) //LOCK-IN
            //{
            //    P3Locked = true;
            //    print("Player 3 locked in!");
            //}
        }
    }
    void P4Selection()
    {
        P4.characterSelectIcon.sprite = P4.characters[P4.index];
        if (menuManager.canvases[2].activeSelf)// && !P4Locked)  //If on "canvases[2]"
        {
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller) < 0)    //Scroll Left
            {
                if (P4.cooldownCounter < Time.time - cooldown || P4.cooldownCounter == -1)
                {
                    P4.index--;

                    P4.cooldownCounter = Time.time;
                }
            }
            if (Input.GetAxisRaw("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller) > 0)     //Scroll Right
            {
                if (P4.cooldownCounter < Time.time - cooldown || P4.cooldownCounter == -1)
                {
                    P4.index++;

                    P4.cooldownCounter = Time.time;
                }
            }
            //if (Input.GetButtonDown("Jump_" + GameManager.m_Instance.m_Player4.m_Controller)) //LOCK-IN
            //{
            //    P4Locked = true;
            //    print("Player 4 locked in!");
            //}
        }
    }
    void SelectCharacter()
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                //Set the .CharacterSelectIcon/Image to Sprite from array
                P1Selection();
                break;

            case 2:
                P1Selection();
                P2Selection();
                break;

            case 3:
                P1Selection();
                P2Selection();
                P3Selection();
                break;

            case 4:
                P1Selection();
                P2Selection();
                P3Selection();
                P4Selection();
                break;
        }
    }

    void StartGame()
    {
         SceneManager.LoadScene(GameManager.m_Instance.m_LevelToStart);
    }
}
