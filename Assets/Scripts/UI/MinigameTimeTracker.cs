using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MinigameTimeTracker : MonoBehaviour
{
    MinigameManager minigameManger;
    //TEMP.!
    public CanvasGroup fadingCanvas;
    public CanvasGroup fadingCanvas1;
    ////////
    CanvasGroup rewardFadeInCanvas;
    Image startCountdownImage;
    public Sprite[] startCountdownTextures;

    public float minigameTimer = 0f;            //Timer for a minigame

    float fadeTime = 2f;

    //Screen Fading floats
    float delayToFadeIn = 1f;
    float delayToShowResultBar = 2f;
    void Awake()
    {
        minigameManger = GetComponent<MinigameManager>();
        fadingCanvas = GameObject.Find("Fading Canvas").GetComponent<CanvasGroup>();
        startCountdownImage = GameObject.Find("Start Countdown Image").GetComponent<Image>();
    }
    void Update()
    {
        if (!minigameManger.minigameEnded)
        {
            minigameTimer += Time.deltaTime;
            MinigameStart();
        }
        else
            MinigameEnd();

        //Minigame ends in 30s from start (5s is from 3, 2, 1 Countdown in MinigameStart())
        if (minigameTimer >= 35f)
            minigameManger.minigameEnded = true;

        //TESTING
        if (Input.GetKeyDown(KeyCode.T))
        {
            minigameManger.minigameEnded = true;
        }
        /////////
        if (minigameManger.barsRaised)
            ScreenFading();
    }

    void MinigameStart()
    {
        //Disable Players' movement
        foreach (GameObject player in GameManager.m_Instance.m_Players)
            player.GetComponent<PlayerController>().m_CantMove = true;

        //3, 2, 1, GO Countdown
        if (minigameTimer >= 1.5f && minigameTimer <= 2.3f)
        {
            startCountdownImage.enabled = true;
            startCountdownImage.sprite = startCountdownTextures[0];
        }
        else if (minigameTimer >= 2.3f && minigameTimer <= 3.1f)
            startCountdownImage.sprite = startCountdownTextures[1];

        else if (minigameTimer >= 3.1 && minigameTimer <= 3.9)
            startCountdownImage.sprite = startCountdownTextures[2];

        else if (minigameTimer >= 3.9f && minigameTimer <= 4.7f)
            startCountdownImage.sprite = startCountdownTextures[3];

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
        delayToFadeIn -= Time.deltaTime;
        if (delayToFadeIn < 0)
        {
            if (fadingCanvas.alpha < 0.6)
            {
                fadingCanvas.alpha += Time.deltaTime / fadeTime;
            }

            delayToShowResultBar -= Time.deltaTime;
            if (delayToShowResultBar < 0)
            {
                minigameManger.showResultBar = true; //PASSES TO NEIGHBOUR SCRIPT
            }
        }
    }

    void ScreenFading()
    {
        if (fadingCanvas1.alpha < 0.6)
        {
            fadingCanvas1.alpha += Time.deltaTime / fadeTime;
        }
        //fadingCanvas.transform.SetAsLastSibling();
    }
}
