using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

public class MiniGameRewards : MonoBehaviour
{
    public enum Rewards
    {
        Damage,
        Hearts,
        AttackSpeed,
        MovementSpeed
    }

    MinigameManager minigameManger;
    public GameObject rewardCanvas;

    EventSystem es;
    StandaloneInputModule sim;
    GameObject currentlySelectedButton;

    public Button[] rewardButtons;
    public Text rewardTitle;
    public Text rewardTilePlayerNumber;

    public bool firstButtonPressed, secondButtonPressed, thirdButtonPressed, fourthButtonPressed;

    public int rewardsSelected;

    bool test;

    void Awake()
    {
        rewardCanvas = GameObject.Find("Reward Canvas");

        es = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        sim = GameObject.Find("EventSystem").GetComponent<StandaloneInputModule>();
        minigameManger = GetComponent<MinigameManager>();

        rewardButtons[0] = GameObject.Find("First Reward Button").GetComponent<Button>();   //Damage
        rewardButtons[1] = GameObject.Find("Second Reward Button").GetComponent<Button>();  //Hearts
        rewardButtons[2] = GameObject.Find("Third Reward Button").GetComponent<Button>();   //Attack Speed
        rewardButtons[3] = GameObject.Find("Fourth Reward Button").GetComponent<Button>();  //Movement Speed

        rewardTitle = GameObject.Find("Pick Reward").GetComponent<Text>();
        rewardTilePlayerNumber = GameObject.Find("Player Number").GetComponent<Text>();

        rewardCanvas.SetActive(false);
    }

    void Update()
    {
        //Enables Canvas component; NOT GAMEOBJECT!
        if (minigameManger.showRewardCanvas)
        {
            rewardCanvas.SetActive(true);
            if (!test)
            {
                test = true;
                es.SetSelectedGameObject(null); es.enabled = false; es.enabled = true; es.SetSelectedGameObject(rewardButtons[0].gameObject);
            }
            SetupInput();
            EndRewards();
            UpdateCurrentPlayer();
        }
    }

    void SetupInput()
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            //PLAYER 1
            case 1:
                if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                {
                    sim.horizontalAxis = ("Horizontal_Keyboard");
                    sim.verticalAxis = ("Vertical_Keyboard");
                    sim.submitButton = ("Submit_Keyboard");
                }
                else
                {
                    sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                    sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                    sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                }
                break;

            //PLAYER 2
            case 2:
                if (rewardsSelected == 0)                                          //FIRST BUTTON PRESS
                {
                    if (minigameManger.P1_place == 1)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                }
                else if (rewardsSelected == 1)                                    //SECOND BUTTON PRESS
                {
                    if (minigameManger.P1_place == 2)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                }
                break;

            //PLAYER 3
            case 3:
                if (rewardsSelected == 0)                                          //FIRST BUTTON PRESS
                {
                    if (minigameManger.P1_place == 1)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                }
                else if (rewardsSelected == 1)                                    //SECOND BUTTON PRESS
                {
                    if (minigameManger.P1_place == 2)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                }
                else if (rewardsSelected == 2)                                    //THIRD BUTTON PRESS
                {
                    if (minigameManger.P1_place == 3)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                }
                break;
            //PLAYER 4
            case 4:
                if (rewardsSelected == 0)                                          //FIRST BUTTON PRESS
                {
                    if (minigameManger.P1_place == 1)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                    else if (minigameManger.P4_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player4.m_Controller);
                    }
                }
                else if (rewardsSelected == 1)                                    //SECOND BUTTON PRESS
                {
                    if (minigameManger.P1_place == 2)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                    else if (minigameManger.P4_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player4.m_Controller);
                    }

                }
                else if (rewardsSelected == 2)                                    //THIRD BUTTON PRESS
                {
                    if (minigameManger.P1_place == 3)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                    else if (minigameManger.P4_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player4.m_Controller);
                    }
                }
                else if (rewardsSelected == 3)                                    //FOURTH BUTTON PRESS
                {
                    if (minigameManger.P1_place == 4)
                    {
                        if (GameManager.m_Instance.m_Player1.m_Controller == Player.Controller.Keyboard)
                        {
                            sim.horizontalAxis = ("Horizontal_Keyboard");
                            sim.verticalAxis = ("Vertical_Keyboard");
                            sim.submitButton = ("Submit_Keyboard");
                        }
                        else
                        {
                            sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player1.m_Controller);
                            sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player1.m_Controller);
                        }
                    }
                    else if (minigameManger.P2_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player2.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player2.m_Controller);
                    }
                    else if (minigameManger.P3_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player3.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player3.m_Controller);
                    }
                    else if (minigameManger.P4_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.verticalAxis = ("Vertical_" + GameManager.m_Instance.m_Player4.m_Controller);
                        sim.submitButton = ("Submit_" + GameManager.m_Instance.m_Player4.m_Controller);
                    }
                }
                break;
        }

    }

    //FUNCTI.  TO SET UP ES.CURRENTLYSELECTED BUTTONS AFTER PRESSING

    //Damage Button
    public void FirstRewardButton()
    {
        rewardButtons[0].gameObject.SetActive(false);
        firstButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.Damage);

        if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);

        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);

        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
    }

    //Hearts Button
    public void SecondRewardButton()
    {
        rewardButtons[1].gameObject.SetActive(false);
        secondButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.Hearts);

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);

        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);


        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
    }

    //Attack Speed Button
    public void ThirdRewardButton()
    {
        rewardButtons[2].gameObject.SetActive(false);
        thirdButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.AttackSpeed);

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);


        else if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);


        else if (!fourthButtonPressed)
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
    }

    //Movement Speed Button
    public void FourthRewardButton()
    {
        rewardButtons[3].gameObject.SetActive(false);
        fourthButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.MovementSpeed);

        if (!firstButtonPressed)
            es.SetSelectedGameObject(rewardButtons[0].gameObject);


        else if (!secondButtonPressed)
            es.SetSelectedGameObject(rewardButtons[1].gameObject);


        else if (!thirdButtonPressed)
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
    }

    public void EndRewards()
    {
        if (rewardsSelected >= GameManager.m_Instance.m_NumOfPlayers)
        {
            minigameManger.rewardsSelected = true;
        }
    }

    private void UpdateCurrentPlayer()
    {
        switch (rewardsSelected)
        {
            case 0:
                if (minigameManger.P1_place == 1)
                {
                    rewardTilePlayerNumber.text = "Player 1";
                    rewardTilePlayerNumber.color = new Color(240, 110, 110);
                }
                else if (minigameManger.P2_place == 1)
                {
                    rewardTilePlayerNumber.text = "Player 2";
                    rewardTilePlayerNumber.color = new Color(110, 138, 240);
                }
                else if (minigameManger.P3_place == 1)
                {
                    rewardTilePlayerNumber.text = "Player 3";
                    rewardTilePlayerNumber.color = new Color(125, 212, 136);
                }
                else if (minigameManger.P4_place == 1)
                {
                    rewardTilePlayerNumber.text = "Player 4";
                    rewardTilePlayerNumber.color = new Color(227, 217, 90);
                }
                break;
            case 1:
                if (minigameManger.P1_place == 2)
                {
                    rewardTilePlayerNumber.text = "Player 1";
                    rewardTilePlayerNumber.color = new Color(240, 110, 110);
                }
                else if (minigameManger.P2_place == 2)
                {
                    rewardTilePlayerNumber.text = "Player 2";
                    rewardTilePlayerNumber.color = new Color(110, 138, 240);
                }
                else if (minigameManger.P3_place == 2)
                {
                    rewardTilePlayerNumber.text = "Player 3";
                    rewardTilePlayerNumber.color = new Color(125, 212, 136);
                }
                else if (minigameManger.P4_place == 2)
                {
                    rewardTilePlayerNumber.text = "Player 4";
                    rewardTilePlayerNumber.color = new Color(227, 217, 90);
                }
                break;
            case 2:
                if (minigameManger.P1_place == 3)
                {
                    rewardTilePlayerNumber.text = "Player 1";
                    rewardTilePlayerNumber.color = new Color(240, 110, 110);
                }
                else if (minigameManger.P2_place == 3)
                {
                    rewardTilePlayerNumber.text = "Player 2";
                    rewardTilePlayerNumber.color = new Color(110, 138, 240);
                }
                else if (minigameManger.P3_place == 3)
                {
                    rewardTilePlayerNumber.text = "Player 3";
                    rewardTilePlayerNumber.color = new Color(125, 212, 136);
                }
                else if (minigameManger.P4_place == 3)
                {
                    rewardTilePlayerNumber.text = "Player 4";
                    rewardTilePlayerNumber.color = new Color(227, 217, 90);
                }
                break;
            case 3:
                if (minigameManger.P1_place == 4)
                {
                    rewardTilePlayerNumber.text = "Player 1";
                    rewardTilePlayerNumber.color = new Color(240, 110, 110);
                }
                else if (minigameManger.P2_place == 4)
                {
                    rewardTilePlayerNumber.text = "Player 2";
                    rewardTilePlayerNumber.color = new Color(110, 138, 240);
                }
                else if (minigameManger.P3_place == 4)
                {
                    rewardTilePlayerNumber.text = "Player 3";
                    rewardTilePlayerNumber.color = new Color(125, 212, 136);
                }
                else if (minigameManger.P4_place == 4)
                {
                    rewardTilePlayerNumber.text = "Player 4";
                    rewardTilePlayerNumber.color = new Color(227, 217, 90);
                }
                break;
            default:
                rewardTilePlayerNumber.text = "Player 1";
                break;
        }
    }

    private Player.PLAYER getWhosPicking()
    {
        switch (rewardsSelected)
        {
            case 1:
                return (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), "P" + minigameManger.P1_place);
            case 2:
                return (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), "P" + minigameManger.P2_place);
            case 3:
                return (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), "P" + minigameManger.P3_place);
            case 4:
                return (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), "P" + minigameManger.P4_place);
            default:
                return (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), "P" + minigameManger.P1_place);
        }
    }

    private void addReward(Rewards reward)
    {
        if (reward == Rewards.Damage)
        {
            if (getWhosPicking() == Player.PLAYER.P1)
            {
                GameManager.m_Instance.m_Player1.damage++;
            }
            else if (getWhosPicking() == Player.PLAYER.P2)
            {
                GameManager.m_Instance.m_Player2.damage++;
            }
            else if (getWhosPicking() == Player.PLAYER.P3)
            {
                GameManager.m_Instance.m_Player3.damage++;
            }
            else if (getWhosPicking() == Player.PLAYER.P4)
            {
                GameManager.m_Instance.m_Player4.damage++;
            }
        }
        if (reward == Rewards.Hearts)
        {
            if (getWhosPicking() == Player.PLAYER.P1)
            {
                GameManager.m_Instance.m_Player1.heartUpgrades++;
            }
            else if (getWhosPicking() == Player.PLAYER.P2)
            {
                GameManager.m_Instance.m_Player2.heartUpgrades++;
            }
            else if (getWhosPicking() == Player.PLAYER.P3)
            {
                GameManager.m_Instance.m_Player3.heartUpgrades++;
            }
            else if (getWhosPicking() == Player.PLAYER.P4)
            {
                GameManager.m_Instance.m_Player4.heartUpgrades++;
            }
        }
        if (reward == Rewards.AttackSpeed)
        {
            if (getWhosPicking() == Player.PLAYER.P1)
            {
                GameManager.m_Instance.m_Player1.attackSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P2)
            {
                GameManager.m_Instance.m_Player2.attackSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P3)
            {
                GameManager.m_Instance.m_Player3.attackSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P4)
            {
                GameManager.m_Instance.m_Player4.attackSpeed++;
            }
        }
        if (reward == Rewards.MovementSpeed)
        {
            if (getWhosPicking() == Player.PLAYER.P1)
            {
                GameManager.m_Instance.m_Player1.movementSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P2)
            {
                GameManager.m_Instance.m_Player2.movementSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P3)
            {
                GameManager.m_Instance.m_Player3.movementSpeed++;
            }
            else if (getWhosPicking() == Player.PLAYER.P4)
            {
                GameManager.m_Instance.m_Player4.movementSpeed++;
            }
        }
    }
}
