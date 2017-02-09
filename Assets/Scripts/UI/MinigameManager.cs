using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class MinigameManager : MonoBehaviour
{
    public bool minigameEnded;
    public bool showResultBar;
    public bool scoreSorted;
    public bool barsRaised;
    public bool showRewardCanvas;
    public bool rewardsSelected;
    public bool showBossPrompt;
    public bool bossYes, bossNo;

    public bool test;

    public int P1_place, P2_place, P3_place, P4_place;      //int from 1 - 4

    public void endMinigame()
    {
        if (minigameEnded == false)
        {
            minigameEnded = true;
        }
    }
}
