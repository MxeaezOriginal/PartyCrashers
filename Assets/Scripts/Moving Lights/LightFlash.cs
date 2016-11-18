using UnityEngine;
using System.Collections;

public class LightFlash : MonoBehaviour
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
        CurrentColorNumber = 1;
        lt = GetComponent<Light>();
        changeColor();
    }

    // Update is called once per frame
    void Update()
    {
        lt.color  = (CurrentColor);


    }

    void changeColor()
    {
        if (CurrentColorNumber == 1)
        {
            CurrentColorNumber = 2;
            CurrentColor = ColorTwo;
            PreviousColor = ColorOne;
        }
        else if (CurrentColorNumber == 2)
        {
            CurrentColorNumber = 1;
            CurrentColor = ColorOne;
            PreviousColor = ColorTwo;
        }

        Invoke("changeColor", colorSwapTime);

    }


}