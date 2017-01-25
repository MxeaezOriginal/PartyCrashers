using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

public class MiniGameRewards : MonoBehaviour
{
    MinigameManager minigameManger;

    EventSystem es;
    StandaloneInputModule sim;
    GameObject currentlySelectedButton;

    public Canvas rewardCanvas;
    public Button[] rewardButtons;

    public bool firstButtonPressed, secondButtonPressed, thirdButtonPressed, fourthButtonPressed;

    void Awake()
    {
        es = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        sim = GameObject.Find("EventSystem").GetComponent<StandaloneInputModule>();
        minigameManger = GetComponent<MinigameManager>();
        rewardCanvas = GameObject.Find("Reward Canvas").GetComponent<Canvas>();

        rewardButtons[0] = GameObject.Find("First Reward Button").GetComponent<Button>();
        rewardButtons[1] = GameObject.Find("Second Reward Button").GetComponent<Button>();
        rewardButtons[2] = GameObject.Find("Third Reward Button").GetComponent<Button>();
        rewardButtons[3] = GameObject.Find("Fourth Reward Button").GetComponent<Button>();
    }

    void Update()
    {
        //Enables Canvas component; NOT GAMEOBJECT!
        if (minigameManger.showRewardCanvas)
            rewardCanvas.enabled = true;

        SetupInput();
    }

    void SetupInput()
    {
        //FIRST BUTTON PRESS
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                sim.horizontalAxis = ("Horizontal_P1");
                sim.verticalAxis = ("Vertical_P1");
                break;
            case 2:
                if (minigameManger.P1_place == 1)
                {
                    sim.horizontalAxis = ("Horizontal_P1");
                    sim.verticalAxis = ("Vertical_P1");
                }
                else if (minigameManger.P2_place == 1)
                {
                    sim.horizontalAxis = ("Horizontal_P2");
                    sim.verticalAxis = ("Vertical_P2");
                }
                break;
        }
    }

    //FUN-NS TO SET UP ES.CURRENTLYSELECTED BUTTONS AFTER PRESSING
    public void FirstRewardButton()
    {
        rewardButtons[0].gameObject.SetActive(false);
        firstButtonPressed = true;

        if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
        else
            print("FINISH");
    }
    public void SecondRewardButton()
    {
        rewardButtons[1].gameObject.SetActive(false);
        secondButtonPressed = true;

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
        else
            print("FINISH");
    }
    public void ThirdRewardButton()
    {
        rewardButtons[2].gameObject.SetActive(false);
        thirdButtonPressed = true;

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
        else if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
        else
            print("FINISH");
    }
    public void FourthRewardButton()
    {
        rewardButtons[3].gameObject.SetActive(false);
        fourthButtonPressed = true;

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
        else if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
        else
            print("FINISH");
    }

}
