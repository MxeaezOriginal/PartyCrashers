using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class ResultBar : MonoBehaviour
{
    MinigameManager minigameManager;
    bool scoreSorted;
    bool test;
    bool test2 = true;
    bool test3 = true;

    public Image P1_Bar;
    public Image P2_Bar;
    public Image P3_Bar;
    public Image P4_Bar;
    float speedOG = 2f;
    float speed;
    int maxScore = 7000;

    //Tracks and playersScores P1-4 scores in odrder (playersScore1 - highest)
    public int place1, place2, place3, place4;

    public List<int> allScoresList = new List<int>();
    public int[] allScores = new int[4];

    public int P1_Score, P2_Score, P3_Score, P4_Score;      //TEMP.! REPLACE WITH PLAYERS' ACTUAL SCORE//

    void Awake()
    {
        minigameManager = GetComponent<MinigameManager>();
        speed = speedOG;
    }

    void Update()
    {
        if (minigameManager.showResultBar)
            SortingScores();
    }

    void SortingScores()
    {
        if (!scoreSorted)
        {
            //Adds all players' scores to an array
            allScores[0] = P1_Score; allScores[1] = P2_Score; allScores[2] = P3_Score; allScores[3] = P4_Score;

            //If statements instead of switch [needs to be step-by-step removal from the list
            if (GameManager.m_Instance.m_NumOfPlayers >= 1) //Place 1
            {
                place1 = allScores.Max();               //Gives Place 1 the highest score from all players
                allScoresList = allScores.ToList();     //Converts Array to List
                allScoresList.Remove(allScores.Max());  //Deletes the highest score that was given to Place 1
                allScores = allScoresList.ToArray();    //Converts List back to Array
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 2) //Place 2
            {
                place2 = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 3) //Place 3
            {
                place3 = allScores.Max(); allScoresList = allScores.ToList();
                allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
            }
            if (GameManager.m_Instance.m_NumOfPlayers >= 4) //Place 4
            {
                place4 = allScores.Max();
                allScoresList = allScores.ToList(); allScoresList.Remove(allScores.Max()); allScores = allScoresList.ToArray();
                //Now both Array and List are empty but place1, place2, place3, place4 have sorted scores
            }
            scoreSorted = true;
        }
        StartCoroutine(RaisingResultBar());
    }

    IEnumerator RaisingResultBar()
    {
        switch (GameManager.m_Instance.m_NumOfPlayers)
        {
            case 1:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                break;

            case 2:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);

                yield return new WaitForSeconds(2f);

                if (!test)
                {
                    speed = speedOG;
                    test = true;
                }

                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                break;

            case 3:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);

                yield return new WaitForSeconds(2f);

                if (!test)
                {
                    speed = speedOG;
                    test = true;
                }

                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);

                yield return new WaitForSeconds(2f);

                if (!test2)
                {
                    speed = speedOG;
                    test2 = true;
                }

                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                print("ASDF MOVIE ASDASDASD");
                break;
            case 4:
                P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                P4_Bar.fillAmount = Mathf.Lerp(P4_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
                break;
        }
    }

    private float resultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }
}
