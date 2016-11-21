using UnityEngine;
using System.Collections;

public class LightFlash : MonoBehaviour
{
    public Light lt;
    public float colorSwapTime;
    public Color[] arrayOfColors;
    public int I;
    private 


    // Use this for initialization
    void Start()
    {
        I = -1;
        lt = GetComponent<Light>();
        changeColor();
    }

    // Update is called once per frame
    void Update()
    {
        lt.color  = (arrayOfColors[I]);


    }

    void changeColor()
    {
        if (arrayOfColors.Length > (I+1))
        {
            I++;
        }
        else
        {
            I = 0;
        }

        Invoke("changeColor", colorSwapTime);

    }


}