using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ShowResultBar : MonoBehaviour
{
    MinigameManager minigameManager;

    public Image P1_Bar;
    public Image P2_Bar;
    public Image P3_Bar;
    float speed = 2f;


    public int P1_Score;
    public int P2_Score;
    public int P3_Score;
    int P4_Score;

    string firstPlace;

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
        P1_Bar.fillAmount = Mathf.Lerp(P1_Bar.fillAmount, resultBarAmount(P1_Score,0, 7000, 0, 1), speed * Time.deltaTime);
        P2_Bar.fillAmount = Mathf.Lerp(P2_Bar.fillAmount, resultBarAmount(P2_Score, 0, 7000, 0, 1), speed * Time.deltaTime);
        P3_Bar.fillAmount = Mathf.Lerp(P3_Bar.fillAmount, resultBarAmount(P3_Score, 0, 7000, 0, 1), speed * Time.deltaTime);
    }

    private float resultBarAmount(float score, float scoreMin, float scoreMax, float scoreMinFillAmount, float scoreMaxFillAmount)
    {
        return (score - scoreMin) * (scoreMaxFillAmount - scoreMinFillAmount) / (scoreMax - scoreMin) + scoreMinFillAmount;

    }
}
