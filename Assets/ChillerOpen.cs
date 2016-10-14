using UnityEngine;
using System.Collections;

public class ChillerOpen : MonoBehaviour {

    public GameObject[] items;
    public GameObject chiller;

    public string playerTag;

    public float item;

    void Start()
    {

        item = items.GetLength(0);

    }

    void OnTriggerEnter(Collider other)
    {

        if(other.tag == playerTag)
        {

            GiveItem();

            chiller.SetActive(false);

        }

    }

    void GiveItem()
    {

        GameObject[] loot = new GameObject[Random.Range(0,)]; 

    }
}
