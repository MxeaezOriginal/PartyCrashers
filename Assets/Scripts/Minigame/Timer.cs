using UnityEngine;
using System.Collections;
using UnityEngine.UI;
//James Shaw

public class Timer : MonoBehaviour
{
    public float remainingSeconds;
    public Text timerText;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (remainingSeconds > 0)
        {
            remainingSeconds = remainingSeconds - Time.deltaTime;

            //Milliseconds
            //timerText.text = string.Format("Time:{0:00.00}", remainingSeconds);
            //Seconds
            timerText.text = string.Format("Time:{0:00}", remainingSeconds);
        }
        else
        {
            remainingSeconds = 0;
            //Tranfer to end minigame screen
          
        }

    }
}
