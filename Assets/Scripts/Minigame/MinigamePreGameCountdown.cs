/*
 *   Minigame Pre Game Countdown deals with the initial countdown before every mini game.
 *   
 *   PreGameCountdown (initial state) >> ScoreAndTimeTrack >> ResultSummary >> RewardSelecion (final state)
 *
 *   Each state presented above is defined in its own script.
 */

using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MinigamePreGameCountdown : MonoBehaviour
{
    public GameObject[] m_StartCounter = new GameObject[4];
    public GameObject m_PartyBar;

    private MinigameManager m_MinigameManager;
    private bool m_IsCoroutineExecuting;

    // Use this for initialization
    void Start()
    {
        m_MinigameManager = GetComponent<MinigameManager>();
        m_IsCoroutineExecuting = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (m_MinigameManager.GetMinigameState() == MinigameManager.EMinigameState.PreGameCountdown
            && !m_IsCoroutineExecuting)
        {
            StartCoroutine(RunCountdown());
        }
    }

    IEnumerator RunCountdown()
    {
        m_IsCoroutineExecuting = true;
        DisableFeatures();

        //3, 2, 1, GO Countdown

        // Initial 1 seconds delay then '3'
        yield return new WaitForSeconds(1);
        m_StartCounter[0].GetComponent<Text>().enabled = true;
        m_StartCounter[0].transform.GetChild(0).GetComponent<Text>().enabled = true;

        // '2'
        yield return new WaitForSeconds(1);

        m_StartCounter[0].GetComponent<Text>().enabled = false;
        m_StartCounter[1].GetComponent<Text>().enabled = true;

        m_StartCounter[0].transform.GetChild(0).GetComponent<Text>().enabled = false;
        m_StartCounter[1].transform.GetChild(0).GetComponent<Text>().enabled = true;

        // '1'
        yield return new WaitForSeconds(1);

        m_StartCounter[1].GetComponent<Text>().enabled = false;
        m_StartCounter[2].GetComponent<Text>().enabled = true;

        m_StartCounter[1].transform.GetChild(0).GetComponent<Text>().enabled = false;
        m_StartCounter[2].transform.GetChild(0).GetComponent<Text>().enabled = true;

        // 'GO'
        yield return new WaitForSeconds(1);

        m_StartCounter[2].GetComponent<Text>().enabled = false;
        m_StartCounter[3].GetComponent<Text>().enabled = true;

        m_StartCounter[2].transform.GetChild(0).GetComponent<Text>().enabled = false;
        m_StartCounter[3].transform.GetChild(0).GetComponent<Text>().enabled = true;

        // "Erase" 'GO'and reenable features
        yield return new WaitForSeconds(1);

        m_StartCounter[3].GetComponent<Text>().enabled = false;
        m_StartCounter[3].transform.GetChild(0).GetComponent<Text>().enabled = false;

        EnableFeatures();

        // After the countdown, change the minigame state (PreGameCountdown ==> ScoreAndTimeTrack)
        m_MinigameManager.UpdateMinigameState();

        m_IsCoroutineExecuting = false;
    }

    private void DisableFeatures()
    {
        //Disable Players' movement
        foreach (GameObject player in GameManager.m_Instance.m_Players)
        {
            player.GetComponent<PlayerController>().m_CantMove = true;
            player.GetComponent<Player>().m_CantAttack = true;
        }

        //Disable partybar for countdown
        GameManager.m_Instance.m_PartyBar.m_Active = false;
        m_PartyBar.SetActive(false);
    }

    private void EnableFeatures()
    {
        //Enable Players' movement
        foreach (GameObject player in GameManager.m_Instance.m_Players)
        {
            player.GetComponent<PlayerController>().m_CantMove = false;
            player.GetComponent<Player>().m_CantAttack = false;
        }

        GameManager.m_Instance.m_PartyBar.m_Active = true;
        m_PartyBar.SetActive(true);
    }
}
