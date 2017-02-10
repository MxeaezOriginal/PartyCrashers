using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Linq;
using UnityEngine.SceneManagement;

public class MinigameResultSummary : MonoBehaviour
{
    private MinigameManager m_MinigameManager;


    public Image P1_Bar, P2_Bar, P3_Bar, P4_Bar;
    float speed = 2f;
    int maxScore = 7000;

    private bool m_isScoreSorted;
    private bool m_isBarRaised;

    //Tracks and playersScores P1-4 scores in order (playersScore1 - highest)
    public int scorePlace1, scorePlace2, scorePlace3, scorePlace4;

    //List & Array for sorting players'score
    public List<int> allScoresList = new List<int>();
    public int[] allScores = new int[4];

    //Delays between Raising Result Bars
    float delay = 3.5f;
    float firstDelay;
    float secondDelay;
    float ThirdDelay;

    //TEMP.!!! WILL BE RENAMED/REMOVED//
    bool test = true;
    bool test2 = true;
    bool test3 = true;
    bool test4 = true;
    float delay4 = 5f;
    //    public int P1_Score, P2_Score, P3_Score, P4_Score;      //TEMP.! REPLACE WITH PLAYERS' ACTUAL SCORE//
    //

    private float ResultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }

    void Awake()
    {
        m_MinigameManager = GetComponent<MinigameManager>();
        m_isScoreSorted = false;
        m_isBarRaised = false;

        P1_Bar = GameObject.Find("P1_Panel/Result Bar/Content").GetComponent<Image>();
        P2_Bar = GameObject.Find("P2_Panel/Result Bar/Content").GetComponent<Image>();
        P3_Bar = GameObject.Find("P3_Panel/Result Bar/Content").GetComponent<Image>();
        P4_Bar = GameObject.Find("P4_Panel/Result Bar/Content").GetComponent<Image>();

        firstDelay = delay;
        secondDelay = firstDelay + delay;
        ThirdDelay = secondDelay + delay;
    }

    void Update()
    {
        if (m_MinigameManager.GetMinigameState() == MinigameManager.EMinigameState.ResultSummary)
        {
            foreach (GameObject player in GameManager.m_Instance.m_Players)
            {
                player.GetComponent<PlayerController>().m_CantMove = true;

                // TEMPORARY!!!

                GoBacktoDungeon();
                //Animator[] anim = player.GetComponentsInChildren<Animator>();

                //foreach(Animator a in anim)
                //{
                //    if(a.name.Equals("Model"))
                //    {
                //        a.Play("idle");
                //    }
                //}
            }

            ShowResultCanvas();

            SortingScores();
        }
        SetPlayerPlace();
    }

    void GoBacktoDungeon()
    {
        if (    GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_01 ||
                GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_02 ||
                GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_03)
        {
            //SceneManager.LoadScene(GameManager.m_Instance.m_Tutorial.ToString()); //ballroom blitz

            //Reward time
            //if (m_MinigameManager.bossNo)
            //{
                GameManager.m_Instance.m_GameState = GameManager.GameState.Dungeon;
                SceneManager.LoadScene(GameManager.m_Instance.m_Tutorial.ToString());
            //}
            //else if (miniGameManager.bossYes)
            //{
            //    GameManager.m_Instance.m_GameState = GameManager.GameState.Boss;
            //    SceneManager.LoadScene("BossRoom");
            //}
        }
        else
        {
            //if (miniGameManager.bossNo)
            //{
                GameManager.m_Instance.m_GameState = GameManager.GameState.Dungeon;
                SceneManager.LoadScene(Random.Range(8, 10));
            //}
            //else if (miniGameManager.bossYes)
            //{
            //    GameManager.m_Instance.m_GameState = GameManager.GameState.Boss;
            //    SceneManager.LoadScene("BossRoom");
            //}
        }
    }


    void ShowResultCanvas()
    {
        //Black Background Fading Canvas
        m_MinigameManager.m_DelayToFadeIn -= Time.deltaTime;
        if (m_MinigameManager.m_DelayToFadeIn < 0)
        {
            if (m_MinigameManager.m_FirstFadingCanvas.alpha < 0.6)
            {
                m_MinigameManager.m_FirstFadingCanvas.alpha += Time.deltaTime / m_MinigameManager.m_FadeTime;
            }

            m_MinigameManager.m_DelayToShowResultBar -= Time.deltaTime;
            if (m_MinigameManager.m_DelayToShowResultBar < 0)
            {
                //Work-around of canvases hirarchy order
                m_MinigameManager.m_SecondFadingCanvas.gameObject.transform.SetParent(m_MinigameManager.m_MinigameCanvas.transform);
                m_MinigameManager.m_SecondFadingCanvas.gameObject.transform.SetParent(null);
            }
        }
    }

    void SortingScores()
    {
        if (!m_isScoreSorted)
        {
            //Adds all players' scores to an array
            switch (GameManager.m_Instance.m_NumOfPlayers)
            {
                case 1:
                    allScores[0] = GameManager.m_Instance.m_Player1.score;
                    break;
                case 2:
                    allScores[0] = GameManager.m_Instance.m_Player1.score;
                    allScores[1] = GameManager.m_Instance.m_Player2.score;
                    break;
                case 3:
                    allScores[0] = GameManager.m_Instance.m_Player1.score;
                    allScores[1] = GameManager.m_Instance.m_Player2.score;
                    allScores[2] = GameManager.m_Instance.m_Player3.score;
                    break;
                case 4:
                    allScores[0] = GameManager.m_Instance.m_Player1.score;
                    allScores[1] = GameManager.m_Instance.m_Player2.score;
                    allScores[2] = GameManager.m_Instance.m_Player3.score;
                    allScores[3] = GameManager.m_Instance.m_Player4.score;
                    break;
            }
            //If statements instead of switch [needs to be a step-by-step removal from the list]
            if (GameManager.m_Instance.m_NumOfPlayers >= 1) //Place 1
            {
                scorePlace1 = allScores.Max();               //Gives Place 1 the highest score from all players
                allScoresList = allScores.ToList();     //Converts Array to List
                allScoresList.Remove(allScores.Max());  //Deletes the highest score that was given to Place 1
                allScores = allScoresList.ToArray();    //Converts List back to Array
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 2) //Place 2
            {
                scorePlace2 = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 3) //Place 3
            {
                scorePlace3 = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 4) //Place 4
            {
                scorePlace4 = allScores.Max();
                allScoresList = allScores.ToList(); allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
                //Now both Array and List are empty but scorePlace1, scorePlace2, scorePlace3, scorePlace4 have sorted scores
            }
            m_isScoreSorted = true;
        }
        RaisingResultBar();
    }

    void SetPlayerPlace()
    {
        if (GameManager.m_Instance.m_Player1.score == scorePlace1) m_MinigameManager.m_P1Place = 1;
        if (GameManager.m_Instance.m_Player1.score == scorePlace2) m_MinigameManager.m_P1Place = 2;
        if (GameManager.m_Instance.m_Player1.score == scorePlace3) m_MinigameManager.m_P1Place = 3;
        if (GameManager.m_Instance.m_Player1.score == scorePlace4) m_MinigameManager.m_P1Place = 4;

        if (GameManager.m_Instance.m_Player2.score == scorePlace1) m_MinigameManager.m_P2Place = 1;
        if (GameManager.m_Instance.m_Player2.score == scorePlace2) m_MinigameManager.m_P2Place = 2;
        if (GameManager.m_Instance.m_Player2.score == scorePlace3) m_MinigameManager.m_P2Place = 3;
        if (GameManager.m_Instance.m_Player2.score == scorePlace4) m_MinigameManager.m_P2Place = 4;

        if (GameManager.m_Instance.m_Player3.score == scorePlace1) m_MinigameManager.m_P3Place = 1;
        if (GameManager.m_Instance.m_Player3.score == scorePlace2) m_MinigameManager.m_P3Place = 2;
        if (GameManager.m_Instance.m_Player3.score == scorePlace3) m_MinigameManager.m_P3Place = 3;
        if (GameManager.m_Instance.m_Player3.score == scorePlace4) m_MinigameManager.m_P3Place = 4;

        if (GameManager.m_Instance.m_Player4.score == scorePlace1) m_MinigameManager.m_P4Place = 1;
        if (GameManager.m_Instance.m_Player4.score == scorePlace2) m_MinigameManager.m_P4Place = 2;
        if (GameManager.m_Instance.m_Player4.score == scorePlace3) m_MinigameManager.m_P4Place = 3;
        if (GameManager.m_Instance.m_Player4.score == scorePlace4) m_MinigameManager.m_P4Place = 4;
    }

    void RaisingResultBar()
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                delay4 -= Time.deltaTime;

                if (delay4 < 0)
                    m_isBarRaised = true;
                break;

            case 2:
                if (test)
                {
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                firstDelay -= Time.deltaTime;

                if (firstDelay < 0)
                {
                    if (m_MinigameManager.m_P1Place == 1)
                        P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    if (m_MinigameManager.m_P2Place == 1)
                        P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }
                delay4 -= Time.deltaTime;

                if (delay4 < 0)
                    m_isBarRaised = true;
                break;

            case 3:
                if (test)
                {
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                firstDelay -= Time.deltaTime;
                if (firstDelay < 0)
                {
                    test = false;
                    if (test2)
                    {
                        if (m_MinigameManager.m_P1Place == 1 || m_MinigameManager.m_P1Place == 2)
                            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P2Place == 1 || m_MinigameManager.m_P2Place == 2)
                            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P3Place == 1 || m_MinigameManager.m_P3Place == 2)
                            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    }
                }

                secondDelay -= Time.deltaTime;
                if (secondDelay < 0)
                {
                    test2 = false;
                    if (test3)
                    {
                        if (m_MinigameManager.m_P1Place == 1)
                            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P2Place == 1)
                            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P3Place == 1)
                            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    }
                }
                delay4 -= Time.deltaTime;
                if (delay4 < 0)
                    m_isBarRaised = true;
                break;
            case 4:
                if (test)
                {
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace4, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace4, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace4, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P4_Bar.fillAmount = Mathf.Lerp(P4_Bar.fillAmount, ResultBarAmount(scorePlace4, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                firstDelay -= Time.deltaTime;
                if (firstDelay < 0)
                {
                    test = false;
                    if (test2)
                    {
                        if (m_MinigameManager.m_P1Place == 1 || m_MinigameManager.m_P1Place == 2 || m_MinigameManager.m_P1Place == 3)
                            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P2Place == 1 || m_MinigameManager.m_P2Place == 2 || m_MinigameManager.m_P2Place == 3)
                            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P3Place == 1 || m_MinigameManager.m_P3Place == 2 || m_MinigameManager.m_P3Place == 3)
                            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P4Place == 1 || m_MinigameManager.m_P4Place == 2 || m_MinigameManager.m_P4Place == 3)
                            P4_Bar.fillAmount = Mathf.Lerp(P4_Bar.fillAmount, ResultBarAmount(scorePlace3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    }
                }

                secondDelay -= Time.deltaTime;
                if (secondDelay < 0)
                {
                    test2 = false;
                    if (test3)
                    {
                        if (m_MinigameManager.m_P1Place == 1 || m_MinigameManager.m_P1Place == 2)
                            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P2Place == 1 || m_MinigameManager.m_P2Place == 2)
                            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P3Place == 1 || m_MinigameManager.m_P3Place == 2)
                            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P4Place == 1 || m_MinigameManager.m_P4Place == 2)
                            P4_Bar.fillAmount = Mathf.Lerp(P4_Bar.fillAmount, ResultBarAmount(scorePlace2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    }
                }

                ThirdDelay -= Time.deltaTime;
                if (ThirdDelay < 0)
                {
                    test3 = false;
                    if (test4)
                    {
                        if (m_MinigameManager.m_P1Place == 1)
                            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P2Place == 1)
                            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P3Place == 1)
                            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                        if (m_MinigameManager.m_P4Place == 1)
                            P4_Bar.fillAmount = Mathf.Lerp(P4_Bar.fillAmount, ResultBarAmount(scorePlace1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    }
                }
                delay4 -= Time.deltaTime;
                if (delay4 < 0)
                    m_isBarRaised = true;
                break;
        }
    }
}
