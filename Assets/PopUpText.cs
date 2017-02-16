using UnityEngine;
using System.Collections;

public class PopUpText : MonoBehaviour {
    [Header("Canvas")]
    public GameObject[] canvases;

    void Update () {

	
	}

    void OnTriggerEnter(Collider other)
    {
        canvases[0].SetActive(true);
        Debug.Log("PopTxtActivated");
    }

    void OnTriggerExit()
    {
        canvases[0].SetActive(false);
        Debug.Log("PopTxtDesactivated");
    }
}
