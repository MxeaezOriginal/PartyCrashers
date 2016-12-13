using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MinigameManager : MonoBehaviour
{
    public CanvasGroup fadingCanvas;
    public CanvasGroup rewardFadeInCanvas;

    public Sprite[] startCountdownTextures;
    Image startCountdownImage;

    float minigameTimer = 0f;
    bool minigameStarted;
    bool minigameEnded;

    void Awake()
    {
        startCountdownImage = GameObject.Find("Start Countdown Image").GetComponent<Image>();
    }
    void Start()
    {
        minigameStarted = true;
    }
    void Update()
    {
        if (minigameStarted)
        {
            minigameTimer += Time.deltaTime;
            MinigameStart();
        }

        if (minigameEnded)
        {
            MinigameEnd();
        }

        if (Input.GetKeyDown(KeyCode.T))
        {
            minigameEnded = true;
        }
    }

    void MinigameStart()
    {
        //Disable Players' movement
        GameManager.m_Instance.m_Players[0].GetComponent<PlayerController>().m_CantMove = true;

        if (minigameTimer >= 1.5f && minigameTimer <= 2.2f) { startCountdownImage.enabled = true; startCountdownImage.sprite = startCountdownTextures[0]; }
        else if (minigameTimer >= 2.2f && minigameTimer <= 2.9f) startCountdownImage.sprite = startCountdownTextures[1];
        else if (minigameTimer >= 2.9 && minigameTimer <= 3.6) startCountdownImage.sprite = startCountdownTextures[2];
        else if (minigameTimer >= 3.6f && minigameTimer <= 4.3f) startCountdownImage.sprite = startCountdownTextures[3];
        else if (minigameTimer >= 4.6f) startCountdownImage.enabled = false;

        //Enable Players'  movement
        //Start Minigame
    }

    void MinigameEnd()
    {
            //Disable Players' movement
            //Stop Minigame

            float timeLeft = 1f;
            float fadeTime = 2f;

            timeLeft -= Time.deltaTime;
            if (timeLeft < 0)
            {
                if (fadingCanvas.alpha < 0.6)
                {
                    fadingCanvas.alpha += Time.deltaTime / fadeTime;
                }
            }
        }
}
