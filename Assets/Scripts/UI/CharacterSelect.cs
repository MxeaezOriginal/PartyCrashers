using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CharacterSelect : MonoBehaviour
{
    //P1
    public Sprite[] P1_characters;
    public Image P1_characterSelectIcon;
    public int P1_index;
    //P2
    public Sprite[] P2_characters;
    public Image P2_characterSelectIcon;
    public int P2_index;

    MenuManager menuManager;
    void Awake()
    {
        menuManager = GetComponent<MenuManager>();
        P1_characterSelectIcon = GameObject.Find("P1_CharacterSelectIcon/Image").GetComponent<Image>();
        P2_characterSelectIcon = GameObject.Find("P2_CharacterSelectIcon/Image").GetComponent<Image>();
    }

    void Update()
    {
        JoinGame();//P2-4 Join
        SelectCharacter();

        if (P1_index > 3)
            P1_index = 0;
        if (P1_index < 0)
            P1_index = 3;
        if (P2_index > 3)
            P2_index = 0;
        if (P2_index < 0)
            P2_index = 3;
    }
    void JoinGame()
    {
        //P2-4 Join
        if (menuManager.playCanvas.activeSelf && Input.GetButtonDown("A_P2") && GameManager.m_Instance.m_NumOfPlayers == 1)
        {
            Debug.Log("Player 2 has Joined!");
            GameManager.m_Instance.m_NumOfPlayers++;
        }
        if (menuManager.playCanvas.activeSelf && Input.GetButtonDown("A_P3") && GameManager.m_Instance.m_NumOfPlayers == 2)
        {
            Debug.Log("Player 3 has Joined!");
            GameManager.m_Instance.m_NumOfPlayers++;
        }
        if (menuManager.playCanvas.activeSelf && Input.GetButtonDown("A_P4") && GameManager.m_Instance.m_NumOfPlayers == 3)
        {
            Debug.Log("Player 4 has Joined!");
            GameManager.m_Instance.m_NumOfPlayers++;
        }
    }

     void SelectCharacter()
    {
        GameManager gm = GameObject.Find("GameManager").GetComponent<GameManager>();

        //P1 Selection
        switch (gm.m_NumOfPlayers)
        {
            case 1:
                //Set the _CharacterSelectIcon/Image to Sprite from array
                P1_characterSelectIcon.sprite = P1_characters[P1_index];
                if (menuManager.playCanvas.activeSelf)  //If on "PlayCanvas"
                {
                    print("Player(s): 1");
                    if (Input.GetButtonDown("Stats_P1"))    //Scroll Left
                    {
                        P1_index--;
                    }
                    if (Input.GetButtonDown("Jump_P1"))     //Scroll Right
                    {
                        P1_index++;
                    }
                }
                break;

            case 2:
                //P1
                P1_characterSelectIcon.sprite = P1_characters[P1_index];
                if (menuManager.playCanvas.activeSelf)  //If on "PlayCanvas"
                {
                    if (Input.GetButtonDown("Stats_P1"))    //Scroll Left
                    {
                        P1_index--;
                    }
                    if (Input.GetButtonDown("Jump_P1"))     //Scroll Right
                    {
                        P1_index++;
                    }
                }
                //P2
                P2_characterSelectIcon.sprite = P1_characters[P2_index];
                if (menuManager.playCanvas.activeSelf)  //If on "PlayCanvas"
                {
                    if (Input.GetButtonDown("Stats_P2"))    //Scroll Left
                    {
                        P2_index--;
                    }
                    if (Input.GetButtonDown("Jump_P1"))     //Scroll Right
                    {
                        P2_index++;
                    }
                }
                break;

        }
    }
}
