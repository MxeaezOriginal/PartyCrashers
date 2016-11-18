using UnityEngine;
using System.Collections;

public class LightChangeColour : MonoBehaviour
{

    public Light lt;
    public Color ColorOne;
    public Color ColorTwo;
    public float colorSwapTime;
    private Color CurrentColor;
    private Color PreviousColor;
    public int CurrentColorNumber;
   

    // Use this for initialization
    void Start()
    {
        CurrentColor = ColorOne;
        PreviousColor = ColorTwo;
        CurrentColorNumber = 1;
        lt = GetComponent<Light>();
        //changeColor();
    }

    // Update is called once per frame
    void Update()
    {
       lt.color = Color.Lerp(CurrentColor, PreviousColor, Mathf.PingPong(Time.time, 1));

        //For future reference, to make it only go one direction you will need to raise the variable ie.
        // lt.color = Color.Lerp(CurrentColor, PreviousColor,  "0.1 value raised by x until 1");

    }

    void changeColor()
    {
        if (CurrentColorNumber == 1)
        {
            CurrentColorNumber = 2;
            CurrentColor = ColorTwo;
            PreviousColor = ColorOne;
        }
        else if  (CurrentColorNumber == 2)
        {
                CurrentColorNumber = 1;
                CurrentColor = ColorOne;
            PreviousColor = ColorTwo;
        }

        Invoke("changeColor", colorSwapTime);

    }
}

