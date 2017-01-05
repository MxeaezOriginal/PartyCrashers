using UnityEngine;
using System.Collections;

public class Lancher : MonoBehaviour
{
    public float FireIntervalMin = 1f;
    public float FireIntervalMax = 20f;
    public GameObject VasePrefeb;
    public GameObject VasePrefeb1;
    public GameObject VasePrefeb2;
    public Transform ShotPos;
    private float LastShotTime;
    // Use this for initialization
    void Start()
    {
        LastShotTime = Time.time;
    }

    // Update is called once per frame
    void Update()
    {
        bool canShoot = (LastShotTime + Random.Range(FireIntervalMin, FireIntervalMax)) < Time.time;
        // Shoot!
        if (canShoot)
        {
            if (VasePrefeb != null)
            {
                if (ShotPos != null)
                {
                    GameObject shot = Instantiate(VasePrefeb, ShotPos.position, ShotPos.rotation) as GameObject;
                }
                //else
                //{
                //    GameObject shot = GameObject.Instantiate<GameObject>(VasePrefeb);
                //    shot.transform.position = transform.position;
                //    shot.transform.forward = transform.forward;
                //    shot.transform.up = transform.up;
                //}
                LastShotTime = Time.time;
            }
        }
    }
}
