using UnityEngine;
using System.Collections;

public class Ballroomblitzgamemaster : MonoBehaviour {

    public GameObject ShotPrefab;
    public Transform Leftwall_ShotLocation1;
    public Transform Leftwall_ShotLocation2;
    public Transform Leftwall_ShotLocation3;
    public Transform Leftwall_ShotLocation4;
    public Transform Leftwall_ShotLocation5;
    public Transform Leftwall_ShotLocation6;
    public Transform Leftwall_ShotLocation7;
    // Use this for initialization
    void Start()
    {
        beginFire();
    }

    //begin fire routine
    void beginFire()
    {
        StartCoroutine(TimebetweenShots(2f));
    }


    //coroutines
    IEnumerator TimebetweenShots(float settime)
    {
        yield return new WaitForSeconds(settime);
        SingleFire();
        beginFire();

    }

    //fire rates
    void SingleFire()
    {
        //shooting needs to be fixed
        int FireLocation = Random.Range(1, 7);
        if (FireLocation == 1)
        {
            fire_Leftwall_ShotLocation1();
        }
        else if (FireLocation == 2)
        {
            fire_Leftwall_ShotLocation2();
        }
        else if (FireLocation == 3)
        {
            fire_Leftwall_ShotLocation3();

        }
        else if (FireLocation == 4)
        {
            fire_Leftwall_ShotLocation4();
        }
        else if (FireLocation == 5)
        {
            fire_Leftwall_ShotLocation5();
        }
        else if (FireLocation == 6)
        {
            fire_Leftwall_ShotLocation6();

        }
        else if (FireLocation == 7)
        {
            fire_Leftwall_ShotLocation7();
        }
    }

    //fire locations
    void fire_Leftwall_ShotLocation1()
    {
        //Fix Shooting
        Vector3 fireposition1 = Leftwall_ShotLocation1.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }
    void fire_Leftwall_ShotLocation2()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation2.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }

    void fire_Leftwall_ShotLocation3()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation3.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }

    void fire_Leftwall_ShotLocation4()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation4.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }


    void fire_Leftwall_ShotLocation5()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation5.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }

    void fire_Leftwall_ShotLocation6()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation6.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }


    void fire_Leftwall_ShotLocation7()
    {
        Vector3 fireposition1 = Leftwall_ShotLocation7.transform.position;
        GameObject basicEnemy = GameObject.Instantiate(ShotPrefab, fireposition1, transform.rotation) as GameObject;
    }


}
