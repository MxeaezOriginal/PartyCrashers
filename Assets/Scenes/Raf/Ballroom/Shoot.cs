using UnityEngine;
using System.Collections;

public class Shoot : MonoBehaviour
{
    public float FireInterval = 1f;
    public GameObject ShotPrefab;
    public Transform ShotLocation;

    public bool Attach;

    private float LastShotTime;

    // Use this for initialization
    void Start()
    {
        LastShotTime = Time.time;

    }

    // Update is called once per frame
    void Update()
    {
        bool canShoot = (LastShotTime + FireInterval) < Time.time;


        if (canShoot && Input.GetButton("Fire1"))
        {
            //shoot!
            if (ShotPrefab != null)
            {
                GameObject shot = null;
                if (ShotLocation != null)
                {
                    shot = Instantiate(ShotPrefab, ShotLocation.position, ShotLocation.rotation) as GameObject;
                }
                else
                {
                    shot = GameObject.Instantiate<GameObject>(ShotPrefab);
                    shot.transform.position = transform.position;
                    shot.transform.forward = transform.forward;
                    shot.transform.up = transform.up;

                }
                LastShotTime = Time.time;
                /*if (Attach == true)
                {
                    shot.transform.SetParent(ShotLocation, true);
                }*/
            }
        }

    }
}
