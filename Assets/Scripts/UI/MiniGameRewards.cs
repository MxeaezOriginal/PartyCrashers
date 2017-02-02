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

    EventSystem es;
    StandaloneInputModule sim;
    GameObject currentlySelectedButton;

    public Canvas rewardCanvas;
    public Button[] rewardButtons;
    public Text rewardTitle;

    public bool firstButtonPressed, secondButtonPressed, thirdButtonPressed, fourthButtonPressed;

    public int rewardsSelected = 0;
    public int i;

    void Awake()
    {
        es = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        sim = GameObject.Find("EventSystem").GetComponent<StandaloneInputModule>();
        minigameManger = GetComponent<MinigameManager>();
        rewardCanvas = GameObject.Find("Reward Canvas").GetComponent<Canvas>();

        rewardButtons[0] = GameObject.Find("First Reward Button").GetComponent<Button>();   //Damage
        rewardButtons[1] = GameObject.Find("Second Reward Button").GetComponent<Button>();  //Hearts
        rewardButtons[2] = GameObject.Find("Third Reward Button").GetComponent<Button>();   //Attack Speed
        rewardButtons[3] = GameObject.Find("Fourth Reward Button").GetComponent<Button>();  //Movement Speed

        rewardTitle = GameObject.Find("Pick Reward").GetComponent<Text>();
    }

    void Update()
    {
        //Enables Canvas component; NOT GAMEOBJECT!
        if (minigameManger.showRewardCanvas)
            rewardCanvas.enabled = true;

        SetupInput();
        UpdateCurrentPlayer();

        print(es.currentSelectedGameObject);
    }

    void SetupInput()
    {

        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            //PLAYER 1
            case 1:
                es.SetSelectedGameObject(rewardButtons[0].gameObject);
                sim.horizontalAxis = ("Horizontal_P1");
                sim.verticalAxis = ("Vertical_P1");
                break;

            //PLAYER 2
            case 2:
                if (i == 0)                                          //FIRST BUTTON PRESS
                {
                    es.SetSelectedGameObject(rewardButtons[0].gameObject);
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
                }
                else if (i == 1)                                    //SECOND BUTTON PRESS
                {
                    es.SetSelectedGameObject(rewardButtons[0].gameObject);
                    if (minigameManger.P1_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                }
                break;

            //PLAYER 3
            case 3:
                if (i == 0)                                          //FIRST BUTTON PRESS
                {
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
                    else if (minigameManger.P3_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                }
                else if (i == 1)                                    //SECOND BUTTON PRESS
                {
                    if (minigameManger.P1_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                    else if (minigameManger.P3_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                }
                else if (i == 2)                                    //THIRD BUTTON PRESS
                {
                    if (minigameManger.P1_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                    else if (minigameManger.P3_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                }
                break;
            //PLAYER 3
            case 4:
                if (i == 0)                                          //FIRST BUTTON PRESS
                {
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
                    else if (minigameManger.P3_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                    else if (minigameManger.P4_place == 1)
                    {
                        sim.horizontalAxis = ("Horizontal_P4");
                        sim.verticalAxis = ("Vertical_P4");
                    }
                }
                else if (i == 1)                                    //SECOND BUTTON PRESS
                {
                    if (minigameManger.P1_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                    else if (minigameManger.P3_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                    else if (minigameManger.P4_place == 2)
                    {
                        sim.horizontalAxis = ("Horizontal_P4");
                        sim.verticalAxis = ("Vertical_P4");
                    }

                }
                else if (i == 2)                                    //THIRD BUTTON PRESS
                {
                    if (minigameManger.P1_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                    else if (minigameManger.P3_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                    else if (minigameManger.P4_place == 3)
                    {
                        sim.horizontalAxis = ("Horizontal_P4");
                        sim.verticalAxis = ("Vertical_P4");
                    }
                }
                else if (i == 3)                                    //FOURTH BUTTON PRESS
                {
                    if (minigameManger.P1_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_P1");
                        sim.verticalAxis = ("Vertical_P1");
                    }
                    else if (minigameManger.P2_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_P2");
                        sim.verticalAxis = ("Vertical_P2");
                    }
                    else if (minigameManger.P3_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_P3");
                        sim.verticalAxis = ("Vertical_P3");
                    }
                    else if (minigameManger.P4_place == 4)
                    {
                        sim.horizontalAxis = ("Horizontal_P4");
                        sim.verticalAxis = ("Vertical_P4");
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
        {
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
            i++;
        }
        else if (!thirdButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
            i++;
        }
        else if (!fourthButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
            i++;
        }
        else
            print("FINISH");
    }

    //Hearts Button
    public void SecondRewardButton()
    {
        rewardButtons[1].gameObject.SetActive(false);
        secondButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.Hearts);

        if (!firstButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
            i++;
        }
        else if (!thirdButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
            i++;
        }
        else if (!fourthButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
            i++;
        }
        else
            print("FINISH");
    }

    //Attack Speed Button
    public void ThirdRewardButton()
    {
        rewardButtons[2].gameObject.SetActive(false);
        thirdButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.AttackSpeed);

        if (!firstButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
            i++;
        }
        else if (!secondButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
            i++;
        }
        else if (!fourthButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[3].gameObject);
            i++;
        }
        else
            print("FINISH");
    }

    //Movement Speed Button
    public void FourthRewardButton()
    {
        rewardButtons[3].gameObject.SetActive(false);
        fourthButtonPressed = true;
        ++rewardsSelected;

        addReward(Rewards.MovementSpeed);

        if (!firstButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[0].gameObject);
            i++;
        }
        else if (!secondButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[1].gameObject);
            i++;
        }
        else if (!thirdButtonPressed)
        {
            es.SetSelectedGameObject(rewardButtons[2].gameObject);
            i++;
        }
        else
            print("FINISH");
    }

    public bool checkWhenToEndReward()
    {
        if (rewardsSelected >= GameManager.m_Instance.m_NumOfPlayers)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!       TEMP.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    private void UpdateCurrentPlayer()
    {
        switch (rewardsSelected)
        {
            case 1:
                rewardTitle.text = "Pick your reward: Player " + minigameManger.P1_place;
                break;
            case 2:
                rewardTitle.text = "Pick your reward: Player " + minigameManger.P2_place;
                break;
            case 3:
                rewardTitle.text = "Pick your reward: Player " + minigameManger.P3_place;
                break;
            case 4:
                rewardTitle.text = "Pick your reward: Player " + minigameManger.P4_place;
                break;
            default:
                rewardTitle.text = "Pick your reward: Player 1";
                break;
        }
    }
    ///!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

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
                Debug.Log("P1 damage up");
            }
            else if (getWhosPicking() == Player.PLAYER.P2)
            {
                GameManager.m_Instance.m_Player2.damage++;
                Debug.Log("P2 damage up");
            }
            else if (getWhosPicking() == Player.PLAYER.P3)
            {
                GameManager.m_Instance.m_Player3.damage++;
                Debug.Log("P3 damage up");
            }
            else if (getWhosPicking() == Player.PLAYER.P4)
            {
                GameManager.m_Instance.m_Player4.damage++;
                Debug.Log("P4 damage up");
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
