/*
 *   Minigame Score and Time Track deals with the tracking of each player's score and the overall game time
 *   
 *   PreGameCountdown (initial state) >> ScoreAndTimeTrack >> ResultSummary >> RewardSelecion (final state)
 *
 *   Each state presented above is defined in its own script.
 */

using UnityEngine;
using System.Collections;

public class MinigameScoreAndTimeTrack : MonoBehaviour
{
    private MinigameManager m_MinigameManager;
    private bool            m_IsCoroutineRunning;
    private PartyBar        m_PartyBar;

    // Use this for initialization
    void Start()
    {
        m_PartyBar              = GameManager.m_Instance.m_PartyBar.GetComponent<PartyBar>();
        m_MinigameManager       = GetComponent<MinigameManager>();
        m_IsCoroutineRunning    = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(m_MinigameManager.GetMinigameState() == MinigameManager.EMinigameState.ScoreAndTimeTrack 
            && !m_IsCoroutineRunning)
        {
            if (m_PartyBar.m_Current < 0.0f)
            {
                m_MinigameManager.UpdateMinigameState();
            }

            StartCoroutine(UpdateScore());
        }
    }

    IEnumerator UpdateScore()
    {
        m_IsCoroutineRunning = true;
        GameManager.m_Instance.m_Players[0].GetComponent<Player>().m_Score+= 10;
        yield return new WaitForSeconds(1.0f);
        m_IsCoroutineRunning = false;
    }
}