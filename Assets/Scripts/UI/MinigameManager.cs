using UnityEngine;
using System.Collections;

public class MinigameManager : MonoBehaviour
{
    public CanvasGroup minigameFadeInCanvas;
    public CanvasGroup rewardFadeInCanvas;

    public float fadeTime = 2f;

    void Start()
    {
        StartCoroutine(Fade());
    }

    IEnumerator Fade()
    {
        yield return new WaitForSeconds(1f);
        while (minigameFadeInCanvas.alpha < 0.6)
        {
            minigameFadeInCanvas.alpha += Time.deltaTime / fadeTime;
            yield return null;
        }
    }
}
