using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class ShowResultBar : MonoBehaviour
{
    MinigameManager minigameManager;

    public Image P1_Bar;
    public Image P2_Bar;
    public Image P3_Bar;
    float speed = 2f;


    public int P1_Score, P2_Score, P3_Score, P4_Score;

    int maxScore = 7000;

    public List<int> allScoresList = new List<int>();
    public int[] allScores = new int[5];

    //Tracks and playersScores P1-4 scores in odrder (playersScore1 - highest)
    public int place1, place2, place3, place4;

    void Awake()
    {
        minigameManager = GetComponent<MinigameManager>();
    }

    void Update()
    {
        if (minigameManager.showResultBar)
            Stuff();
    }

    void Stuff()
    {
        //Adds all players' scores to an array
        allScores[0] = P1_Score; allScores[1] = P2_Score; allScores[2] = P3_Score; allScores[3] = P4_Score;


        //Focking Magic
        place1 = allScores[0];
        place1 = allScores.Max();
        allScoresList = allScores.ToList();
        allScoresList.Remove(allScores.Max());
        allScores = allScoresList.ToArray();

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
        allScores = allScoresList.ToArray();


        P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(P1_Score, 0, 7000, 0, 1), speed * Time.deltaTime);
        P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(P2_Score, 0, 7000, 0, 1), speed * Time.deltaTime);
        P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(P3_Score, 0, 7000, 0, 1), speed * Time.deltaTime);
    }


    private float resultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }
}
