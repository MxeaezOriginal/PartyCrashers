using UnityEngine;
using System.Collections;

public class LightTrigger : MonoBehaviour {

    public Light[] lt;
    private bool lightOn;
    private int I;
    public bool turnoffonleave;
    // Use this for initialization
    void Start ()
    {
        lightOn = false;
        while (lt.Length >= (I + 1) )
        {
            lt[I].GetComponent<Light>().enabled = false;
            I++;
        }


    }

    void OnTriggerEnter(Collider other)
    {
        if(lightOn == false && other.gameObject.tag == "Player")
        {
            I = 0;
            while (lt.Length >= (I + 1))
            {
                lt[I].GetComponent<Light>().enabled = true;
                I++;
            }
            lightOn = true;
        }
       
       
    }

     void OnTriggerExit(Collider other)
    {
         if(turnoffonleave == true)
         {
             if (lightOn == true && other.gameObject.tag == "Player")
             {
                 I = 0;
                 while (lt.Length >= (I + 1))
                 {
                     lt[I].GetComponent<Light>().enabled = false;
                     I++;
                 }
                 lightOn = false;
             }
             
             
             }
    }
        

}
