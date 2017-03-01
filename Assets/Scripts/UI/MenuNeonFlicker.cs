using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MenuNeonFlicker : MonoBehaviour
{
    public Image[] neonFrame = new Image[4];
    public Text[] playerNumber = new Text[4];
    public Text[] characterName = new Text[4];

    public float timeDelay = 2.0f;
    float timestamp;

    bool isOn;
    Color32 on = new Color32(255, 255, 255, 255);
    Color32 flicker = new Color32(245, 245, 245, 255);
    Color32 off = new Color32(40, 40, 40, 255);

    float firstDelay = 0.1f;
    float seondDelay = 0.1f;
    float thirdDelay = 0.1f;

    bool test;

    CharacterSelect CS;

    void Awake()
    {
        neonFrame[0] = GameObject.Find("Character Select Plate P1/Neon Frame").GetComponent<Image>();
        neonFrame[1] = GameObject.Find("Character Select Plate P2/Neon Frame").GetComponent<Image>();
        neonFrame[2] = GameObject.Find("Character Select Plate P3/Neon Frame").GetComponent<Image>();
        neonFrame[3] = GameObject.Find("Character Select Plate P4/Neon Frame").GetComponent<Image>();

        playerNumber[0] = GameObject.Find("Character Select Plate P1/Player Number").GetComponent<Text>();
        playerNumber[1] = GameObject.Find("Character Select Plate P2/Player Number").GetComponent<Text>();
        playerNumber[2] = GameObject.Find("Character Select Plate P3/Player Number").GetComponent<Text>();
        playerNumber[3] = GameObject.Find("Character Select Plate P4/Player Number").GetComponent<Text>();

        characterName[0] = GameObject.Find("Character Select Plate P1/Character Name").GetComponent<Text>();
        characterName[1] = GameObject.Find("Character Select Plate P2/Character Name").GetComponent<Text>();
        characterName[2] = GameObject.Find("Character Select Plate P3/Character Name").GetComponent<Text>();
        characterName[3] = GameObject.Find("Character Select Plate P4/Character Name").GetComponent<Text>();

        CS = GetComponent<CharacterSelect>();
    }

    void Start()
    {
        InvokeRepeating("Flicker", 2.0f, 0.1f);
    }
    void Flicker()
    {
        if (!isOn)
        {
            neonFrame[0].color = flicker;
            neonFrame[1].color = flicker;
            neonFrame[2].color = flicker;
            neonFrame[3].color = flicker;
            isOn = true;
        }
        else
        {
            neonFrame[0].color = on;
            neonFrame[1].color = on;
            neonFrame[2].color = on;
            neonFrame[3].color = on;
            isOn = false;
        }
    }

    void Update()
    {
        if (CS.P1Join)
        {
            neonFrame[0].GetComponent<Animator>().SetBool("OffnOn", true);
            playerNumber[0].color = on;
            playerNumber[0].GetComponent<Outline>().enabled = true;
            characterName[0].color = on;
            characterName[0].GetComponent<Outline>().enabled = true;
        }
        else
        {
            neonFrame[0].GetComponent<Animator>().SetBool("OffnOn", false);
            playerNumber[0].color = off;
            playerNumber[0].GetComponent<Outline>().enabled = false;
            characterName[0].color = off;
            characterName[0].GetComponent<Outline>().enabled = false;
        }

        if (CS.P2Join)
        {
            neonFrame[1].GetComponent<Animator>().SetBool("OffnOn", true);
            playerNumber[1].color = on;
            playerNumber[1].GetComponent<Outline>().enabled = true;
            characterName[1].color = on;
            characterName[1].GetComponent<Outline>().enabled = true;
        }
        else
        {
            neonFrame[1].GetComponent<Animator>().SetBool("OffnOn", false);
            playerNumber[1].color = off;
            playerNumber[1].GetComponent<Outline>().enabled = false;
            characterName[1].color = off;
            characterName[1].GetComponent<Outline>().enabled = false;
        }

        if (CS.P3Join)
        {
            neonFrame[2].GetComponent<Animator>().SetBool("OffnOn", true);
            playerNumber[2].color = on;
            playerNumber[2].GetComponent<Outline>().enabled = true;
            characterName[2].color = on;
            characterName[2].GetComponent<Outline>().enabled = true;
        }
        else
        {
            neonFrame[2].GetComponent<Animator>().SetBool("OffnOn", false);
            playerNumber[2].color = off;
            playerNumber[2].GetComponent<Outline>().enabled = false;
            characterName[2].color = off;
            characterName[2].GetComponent<Outline>().enabled = false;
        }

        if (CS.P4Join)
        {
            neonFrame[3].GetComponent<Animator>().SetBool("OffnOn", true);
            playerNumber[3].color = on;
            playerNumber[3].GetComponent<Outline>().enabled = true;
            characterName[3].color = on;
            characterName[3].GetComponent<Outline>().enabled = true;
        }
        else
        {
            neonFrame[3].GetComponent<Animator>().SetBool("OffnOn", false);
            playerNumber[3].color = off;
            playerNumber[3].GetComponent<Outline>().enabled = false;
            characterName[3].color = off;
            characterName[3].GetComponent<Outline>().enabled = false;
        }

        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
        {
            if (CS.KeyboardJoin)
            {
                neonFrame[0].GetComponent<Animator>().SetBool("OffnOn", true);
                playerNumber[0].color = on;
                playerNumber[0].GetComponent<Outline>().enabled = true;
                characterName[0].color = on;
                characterName[0].GetComponent<Outline>().enabled = true;
            }
            else
            {
                neonFrame[0].GetComponent<Animator>().SetBool("OffnOn", false);
                playerNumber[0].color = off;
                playerNumber[0].GetComponent<Outline>().enabled = false;
                characterName[0].color = off;
                characterName[0].GetComponent<Outline>().enabled = false;
            }
        }
        else if (GameManager.m_Instance.m_Player2.m_Controller == Player.Controller.Keyboard)
        {
            if (CS.KeyboardJoin)
            {
                neonFrame[1].GetComponent<Animator>().SetBool("OffnOn", true);
                playerNumber[1].color = on;
                playerNumber[1].GetComponent<Outline>().enabled = true;
                characterName[1].color = on;
                characterName[1].GetComponent<Outline>().enabled = true;
            }
            else
            {
                neonFrame[1].GetComponent<Animator>().SetBool("OffnOn", false);
                playerNumber[1].color = off;
                playerNumber[1].GetComponent<Outline>().enabled = false;
                characterName[1].color = off;
                characterName[1].GetComponent<Outline>().enabled = false;
            }
        }
        else if (GameManager.m_Instance.m_Player3.m_Controller == Player.Controller.Keyboard)
        {
            if (CS.KeyboardJoin)
            {
                neonFrame[2].GetComponent<Animator>().SetBool("OffnOn", true);
                playerNumber[2].color = on;
                playerNumber[2].GetComponent<Outline>().enabled = true;
                characterName[2].color = on;
                characterName[2].GetComponent<Outline>().enabled = true;
            }
            else
            {
                neonFrame[2].GetComponent<Animator>().SetBool("OffnOn", false);
                playerNumber[2].color = off;
                playerNumber[2].GetComponent<Outline>().enabled = false;
                characterName[2].color = off;
                characterName[2].GetComponent<Outline>().enabled = false;
            }
        }
        else if (GameManager.m_Instance.m_Player4.m_Controller == Player.Controller.Keyboard)
        {
            if (CS.KeyboardJoin)
            {
                neonFrame[3].GetComponent<Animator>().SetBool("OffnOn", true);
                playerNumber[3].color = on;
                playerNumber[3].GetComponent<Outline>().enabled = true;
                characterName[3].color = on;
                characterName[3].GetComponent<Outline>().enabled = true;
            }
            else
            {
                neonFrame[3].GetComponent<Animator>().SetBool("OffnOn", false);
                playerNumber[3].color = off;
                playerNumber[3].GetComponent<Outline>().enabled = false;
                characterName[3].color = off;
                characterName[3].GetComponent<Outline>().enabled = false;
            }
        }
    }
}
