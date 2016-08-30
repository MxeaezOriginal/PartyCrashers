using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class HUD : MonoBehaviour
{
    private static HUD sInstance;

    public static HUD Instance
    {
        get
        {
            if (sInstance == null)
            {
                sInstance = FindObjectOfType<HUD>();
            }
            return sInstance;
        }
    }

    public static int m_Score = 0;
    private Text ScoreField;

    private void Start()
    {
        GameObject go = GameObject.Find("Score");
        if (go != null)
        {
            ScoreField = go.GetComponent<Text>();
        }
        else
        {
            Debug.LogError("Something horrible went wrong.");
        }
        HUD.Instance.AdjustScore(0);
    }
    public void AdjustScore(int value)
    {
        m_Score += value;
        if (ScoreField != null)
        {
            ScoreField.text = "Score: " + m_Score;
        }
    }


}
