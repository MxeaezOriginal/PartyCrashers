using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class ShowResultBar : MonoBehaviour
{
    MinigameManager minigameManager;
    bool scoreSorted;
    bool test;
    bool test2 = true;
    bool test3 = true;

    public Image P1_Bar;
    public Image P2_Bar;
    public Image P3_Bar;
    float speed = 2f;


    public int P1_Score, P2_Score, P3_Score, P4_Score;

    int maxScore = 7000;

    public List<int> allScoresList = new List<int>();
    public int[] allScores = new int[4];

    //Tracks and playersScores P1-4 scores in odrder (playersScore1 - highest)
    public int place1, place2, place3, place4;

    void Awake()
    {
        minigameManager = GetComponent<MinigameManager>();
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

            //Focking Magic
            place1 = allScores.Max();               //Gives Place 1 the highest score from all players
            allScoresList = allScores.ToList();     //Converts Array to List
            allScoresList.Remove(allScores.Max());  //Deletes the highest score that was given to Place 1
            allScores = allScoresList.ToArray();    //Converts List back to Array

            place2 = allScores.Max();
            allScoresList = allScores.ToList();
            allScoresList.Remove(allScores.Max());
            allScores = allScoresList.ToArray();

            place3 = allScores.Max();
            allScoresList = allScores.ToList();
            allScoresList.Remove(allScores.Max());
            allScores = allScoresList.ToArray();

            place4 = allScores.Max();
            allScoresList = allScores.ToList();
            allScoresList.Remove(allScores.Max());
            allScores = allScoresList.ToArray();    //Now both Array and List are empty but place1, place2, place3, place4 have sorted scores

            scoreSorted = true;
        }

            StartCoroutine(RaisingResultBar());
    }

    IEnumerator RaisingResultBar()
    {
        if (!test)
        {
            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place3, 0, maxScore, 0, 1), speed * Time.deltaTime);
            yield return new WaitForSeconds(3.5f);
            test = true;
            test2 = false;
            speed = 2f;
        }
        if (!test2)
        {
            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place2, 0, maxScore, 0, 1), speed * Time.deltaTime);
            yield return new WaitForSeconds(3.5f);
            test2 = true;
            test3 = false;
            speed = 2f;
        }
        if (!test3)
        {
            P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
            P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(place1, 0, maxScore, 0, 1), speed * Time.deltaTime);
            yield return new WaitForSeconds(3.5f);
            test3 = true;
        }
    }


    private float resultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }
}
