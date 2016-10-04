using UnityEngine;
using System.Collections;

public class ActivateGO : MonoBehaviour
{

    public GameObject gameobject;


    void Start()
    {
        gameobject.SetActive(false);

    }
    


    public void OnCollisionEnter(Collider other)
    {
        if(other != null)
        {
            if(other.CompareTag("Player"))
            {
                gameobject.SetActive(true);
            }
        }
        else
        {

        }
    }
	
	// Update is called once per frame
	void Update ()
    {
	
	}
}
