using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MinigameManager : MonoBehaviour
{
    float timeLeft = 1f;
    float fadeTime = 2f;
    bool minigameEnded;
    public float minigameTimer = 0f;

    CanvasGroup fadingCanvas;
    CanvasGroup rewardFadeInCanvas;
    Image startCountdownImage;
    public Sprite[] startCountdownTextures;

    void Awake()
    {
        fadingCanvas = GameObject.Find("Fading Canvas").GetComponent<CanvasGroup>();
        startCountdownImage = GameObject.Find("Start Countdown Image").GetComponent<Image>();
    }
    void Update()
    {
        if (!minigameEnded)
        {
            minigameTimer += Time.deltaTime;
            MinigameStart();
        }
        else
        {
            MinigameEnd();
        }

        //Minigame ends in 30s from start (5s is from 3, 2, 1 Countdown in MinigameStart())
        if (minigameTimer >= 35f)
            minigameEnded = true;

        //TESTING
        if (Input.GetKeyDown(KeyCode.T))
        {
            minigameEnded = true;
        }
    }

    void MinigameStart()
    {
        //Disable Players' movement
        foreach (GameObject player in GameManager.m_Instance.m_Players)
            player.GetComponent<PlayerController>().m_CantMove = true;

        //3, 2, 1, GO Countdown
        if (minigameTimer >= 1.5f && minigameTimer <= 2.3f) { startCountdownImage.enabled = true; startCountdownImage.sprite = startCountdownTextures[0]; }
        else if (minigameTimer >= 2.3f && minigameTimer <= 3.1f) startCountdownImage.sprite = startCountdownTextures[1];
        else if (minigameTimer >= 3.1 && minigameTimer <= 3.9) startCountdownImage.sprite = startCountdownTextures[2];
        else if (minigameTimer >= 3.9f && minigameTimer <= 4.7f) startCountdownImage.sprite = startCountdownTextures[3];
        else if (minigameTimer >= 5.0f)
        {
            startCountdownImage.enabled = false;

            //Enable Players' movement
            foreach (GameObject player in GameManager.m_Instance.m_Players)
                player.GetComponent<PlayerController>().m_CantMove = false;
        }
    }

    void MinigameEnd()
    {
        foreach (GameObject player in GameManager.m_Instance.m_Players)
            player.GetComponent<PlayerController>().m_CantMove = true;

        //Black Background Fading Canvas
        timeLeft -= Time.deltaTime;
        if (timeLeft < 0)
        {
            if (fadingCanvas.alpha < 0.6)
            {
                fadingCanvas.alpha += Time.deltaTime / fadeTime;
            }
            print("UPCOMING STUFF");    
        }
    }
}
