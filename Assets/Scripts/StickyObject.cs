using UnityEngine;
using System.Collections;

public class StickyObject : MonoBehaviour
{
    #region Effects
    //Get the gameobjects
    public GameObject aftereffect;
    public GameObject explosion;
    #endregion

    public float delay;
    public bool stick;

    private GameObject objparent;

    void OnTriggerEnter(Collider col)
    {
        if (col.name != "Plane")
        {
            objparent = col.gameObject;

            if (stick)
            {
                Debug.Log("Sticking will happen now.");
                Stick();
            }
        }

    }

    void Stick()
    {

        //this.transform.parent = objparent.transform;

        this.GetComponent<Rigidbody>().useGravity = false;
        this.GetComponent<Rigidbody>().velocity = Vector3.zero;
        this.GetComponent<Rigidbody>().angularDrag = 100;
        //this.transform.localScale = Vector3.zero + Vector3.one;

        StartCoroutine(iExplodeDelay());
    }

    IEnumerator iExplodeDelay()
    {
        yield return new WaitForSeconds(delay);

        Destruct();
    }

    public void Destruct()
    {
        //Create effects on desruction
        if (aftereffect)
        {
            GameObject effect = GameObject.Instantiate(aftereffect, transform.position, transform.rotation) as GameObject;
        }

        //Create the explosion radius for dealing damage
        if (explosion)
        {
            GameObject radius = GameObject.Instantiate(explosion, transform.position, transform.rotation) as GameObject;
        }

        //Destroy the object
        Destroy(this.gameObject);
    }


}


