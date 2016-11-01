using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MiniGameHUDManager : MonoBehaviour
{

    public Text[] scoreCounter = new Text[4];

    public float score;
    public float remainingSeconds;

    void Start()
    {
        scoreCounter[0] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/P1 Score").GetComponent<Text>();
        scoreCounter[1] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/P2 Score").GetComponent<Text>();
        scoreCounter[2] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/P3 Score").GetComponent<Text>();
        scoreCounter[3] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/P4 Score").GetComponent<Text>();
    }

    void Update()
    {
        //addingScore

        remainingSeconds = remainingSeconds - Time.deltaTime;

        // Score
        score = score + Time.deltaTime;

        if (GameObject.Find("P1"))
        {

            scoreCounter[0].text = string.Format("{0:0}", score);
        }
        if (GameObject.Find("P2"))
            scoreCounter[1].text = string.Format("{0:0}", score);
        if (GameObject.Find("P3"))
            scoreCounter[2].text = string.Format("{0:0}", score);
        if (GameObject.Find("P4"))
            scoreCounter[3].text = string.Format("{0:0}", score);

        if (!GameObject.Find("P1") && !GameObject.Find("P2") && !GameObject.Find("P3") && !GameObject.Find("P4"))
        {
            Debug.Log("Game Over!!!!!!!!!!");
        }
        else if (remainingSeconds <= 0)
        {
            Debug.Log("Game Over!!!!!!!!!!");
        }
    }
}
