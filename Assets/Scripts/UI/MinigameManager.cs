using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class MinigameManager : MonoBehaviour
{
    MinigameTracker minigameManager;
    public Image P1_Bar, P2_Bar, P3_Bar, P4_Bar;
    bool scoreSorted;
    bool barsRaised;
    float speed = 2f;
    int maxScore = 7000;

    //Tracks and playersScores P1-4 scores in odrder (playersScore1 - highest)
    public int P1_place, P2_place, P3_place, P4_place;      //int from 1 - 4
    public int place1_score, place2_score, place3_score, place4_score;

    //List & Array for sorting players'score
    public List<int> allScoresList = new List<int>();
    public int[] allScores = new int[4];

    //TEMP.!!!
    bool test = true;
    bool test2 = true;
    bool test3 = true;
    float delay = 3.5f;
    float delay2 = 7f;
    public int P1_Score, P2_Score, P3_Score, P4_Score;      //TEMP.! REPLACE WITH PLAYERS' ACTUAL SCORE//
    //

    private float resultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }
    void Awake()
    {
        minigameManager = GetComponent<MinigameTracker>();
    }

    void Update()
    {
        if (minigameManager.showResultBar)
            SortingScores();

        SetPlayerPlace();
    }

    void SortingScores()
    {
        if (!scoreSorted)
        {
            //Adds all players' scores to an array
            switch (GameManager.m_Instance.m_NumOfPlayers)
            {
                case 1:
                    allScores[0] = P1_Score;
                    break;
                case 2:
                    allScores[0] = P1_Score; allScores[1] = P2_Score;
                    break;
                case 3:
                    allScores[0] = P1_Score; allScores[1] = P2_Score; allScores[2] = P3_Score;
                    break;
                case 4:
                    allScores[0] = P1_Score; allScores[1] = P2_Score; allScores[2] = P3_Score; allScores[3] = P4_Score;
                    break;
            }
            //If statements instead of switch [needs to be a step-by-step removal from the list]
            if (GameManager.m_Instance.m_NumOfPlayers >= 1) //Place 1
            {
                place1_score = allScores.Max();               //Gives Place 1 the highest score from all players
                allScoresList = allScores.ToList();     //Converts Array to List
                allScoresList.Remove(allScores.Max());  //Deletes the highest score that was given to Place 1
                allScores = allScoresList.ToArray();    //Converts List back to Array
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 2) //Place 2
            {
                place2_score = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 3) //Place 3
            {
                place3_score = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 4) //Place 4
            {
                place4_score = allScores.Max();
                allScoresList = allScores.ToList(); allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
                //Now both Array and List are empty but place1_score, place2_score, place3_score, place4_score have sorted scores
            }
            scoreSorted = true;
        }
        RaisingResultBar();
    }

    void SetPlayerPlace()
    {
        if (P1_Score == place1_score) P1_place = 1;
        if (P1_Score == place2_score) P1_place = 2;
        if (P1_Score == place3_score) P1_place = 3;
        if (P1_Score == place4_score) P1_place = 4;

        if (P2_Score == place1_score) P2_place = 1;
        if (P2_Score == place2_score) P2_place = 2;
        if (P2_Score == place3_score) P2_place = 3;
        if (P2_Score == place4_score) P2_place = 4;

        if (P3_Score == place1_score) P3_place = 1;
        if (P3_Score == place2_score) P3_place = 2;
        if (P3_Score == place3_score) P3_place = 3;
        if (P3_Score == place4_score) P3_place = 4;

        if (P4_Score == place1_score) P4_place = 1;
        if (P4_Score == place2_score) P4_place = 2;
        if (P4_Score == place3_score) P4_place = 3;
        if (P4_Score == place4_score) P4_place = 4;
    }

    void RaisingResultBar()
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                break;

            case 2:
                if (test)
                {
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place2_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place2_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                delay -= Time.deltaTime;
                if (delay < 0)
                {
                    test = false;
                    if (P1_place == 1)
                        P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    if (P2_place == 1)
                        P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }
                break;

            case 3:                 //LAST TIME STOPPED WORKING HERE --------- REDO AS CASE 2 BUT /w 2 delays//
                if (test)
                {
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place3_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place3_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place3_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                delay -= Time.deltaTime;
                if (delay < 0)
                {
                    test = false;
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place2_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place2_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place2_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }

                delay2 -= Time.deltaTime;
                if (delay2 < 0)
                {
                    test2 = false;
                    P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                    P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place1_score, 0, maxScore, 0, 1), speed * Time.deltaTime);
                }
                break;
        }
    }
}
