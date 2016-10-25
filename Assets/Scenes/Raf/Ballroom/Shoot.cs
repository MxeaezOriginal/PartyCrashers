using UnityEngine;
using System.Collections;
/*                                                              "This script is not shooting the bouncing balls from the Ballroom Minigame"
public class Shoot : MonoBehaviour
{
    public float FireInterval = 1f;
    public GameObject ShotPrefab;
    public Transform ShotLocation;

    // public bool Attach;  // What is this for?

    private GameObject shot;
    private float LastShotTime;

    bool canShoot;

    // Use this for initialization
    void Start()
    {
        LastShotTime = Time.time;
        canShoot = false;
    }

    // Update is called once per frame
    void Update()
    {
        canShoot = (LastShotTime + FireInterval) < Time.time;

        if (canShoot)  // && Input.GetButton("Fire1"))   What is this for?
        {
            //shoot!
            if (ShotPrefab != null)
            {
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
                
                //LastShotTime = Time.time;

                //if (Attach == true)
                //{
                //   shot.transform.SetParent(ShotLocation, true);
                //}
            }
        }
    }
}*/