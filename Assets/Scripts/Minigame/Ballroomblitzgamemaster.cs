using UnityEngine;
using System.Collections;

public class Ballroomblitzgamemaster : MonoBehaviour {

    public GameObject ShotPrefab;
    public int fireSpeed;
    private float difficultyTimer;//seconds passed
    private float incrementAmmount;
    //Fire Locations
    #region
    public Transform FirePoint_Leftwall_ShotLocation1;
    public Transform FirePoint_Leftwall_ShotLocation2;
    public Transform FirePoint_Leftwall_ShotLocation3;
    public Transform FirePoint_Leftwall_ShotLocation4;
    public Transform FirePoint_Leftwall_ShotLocation5;
    public Transform FirePoint_Leftwall_ShotLocation6;
    public Transform FirePoint_Leftwall_ShotLocation7;

    public Transform FirePoint_Rightwall_ShotLocation1;
    public Transform FirePoint_Rightwall_ShotLocation2;
    public Transform FirePoint_Rightwall_ShotLocation3;
    public Transform FirePoint_Rightwall_ShotLocation4;
    public Transform FirePoint_Rightwall_ShotLocation5;
    public Transform FirePoint_Rightwall_ShotLocation6;
    public Transform FirePoint_Rightwall_ShotLocation7;

    public Transform FirePoint_Backwall_ShotLocation1;
    public Transform FirePoint_Backwall_ShotLocation2;
    public Transform FirePoint_Backwall_ShotLocation3;
    public Transform FirePoint_Backwall_ShotLocation4;
    public Transform FirePoint_Backwall_ShotLocation5;
    public Transform FirePoint_Backwall_ShotLocation6;
    public Transform FirePoint_Backwall_ShotLocation7;

    public Transform FirePoint_Frontwall_ShotLocation1;
    public Transform FirePoint_Frontwall_ShotLocation2;
    public Transform FirePoint_Frontwall_ShotLocation3;
    public Transform FirePoint_Frontwall_ShotLocation4;
    public Transform FirePoint_Frontwall_ShotLocation5;
    public Transform FirePoint_Frontwall_ShotLocation6;
    public Transform FirePoint_Frontwall_ShotLocation7;
    #endregion
    void Start()
    {
        float difficultyTimer = 0;
        beginFire();
    }

    //begin fire routine
    void beginFire()
    {
        if(difficultyTimer < 10)
        {
            incrementAmmount = 1;
            StartCoroutine(beginFireShot(incrementAmmount));
        }
        else if (difficultyTimer < 30)
        {
            incrementAmmount = 0.5f;
            StartCoroutine(beginFireShot(incrementAmmount));
        }
        else if (difficultyTimer < 45)
        {
            incrementAmmount = 0.5f;
            StartCoroutine(beginFireShot(incrementAmmount));
        }
        else if (difficultyTimer < 55)
        {
            incrementAmmount = 0.3f;
            StartCoroutine(beginFireShot(incrementAmmount));
        }
        else if (difficultyTimer < 59)
        {
            incrementAmmount = 0.01f;
            StartCoroutine(beginFireShot(incrementAmmount));
        }

    }

    //coroutines
    IEnumerator beginFireShot(float settime)
    {
        yield return new WaitForSeconds(settime);
        difficultyTimer = (difficultyTimer +  incrementAmmount);
        SingleFire();
        if(difficultyTimer > 30)
        {
            SingleFire();
        }
        if (difficultyTimer > 55)
        {
            SingleFire();
        }
        beginFire();

    }
    //fire rates
    void SingleFire()
    {
        //shooting needs to be fixed
        int FireDirection = Random.Range(1, 5);
        int FireLocation = Random.Range(1, 8);
        //Right Wall
        #region
        if (FireDirection == 1)
        {
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
        #endregion
        //Left Wall
        #region
        if (FireDirection == 2)
        {
            if (FireLocation == 1)
            {
                fire_Rightwall_ShotLocation1();
            }
            else if (FireLocation == 2)
            {
                fire_Rightwall_ShotLocation2();
            }
            else if (FireLocation == 3)
            {
                fire_Rightwall_ShotLocation3();

            }
            else if (FireLocation == 4)
            {
                fire_Rightwall_ShotLocation4();
            }
            else if (FireLocation == 5)
            {
                fire_Rightwall_ShotLocation5();
            }
            else if (FireLocation == 6)
            {
                fire_Rightwall_ShotLocation6();

            }
            else if (FireLocation == 7)
            {
                fire_Rightwall_ShotLocation7();
            }
        }
        #endregion
        //Back Wall
        #region
        if (FireDirection == 3)
        {
            if (FireLocation == 1)
            {
                fire_Backwall_ShotLocation1();
            }
            else if (FireLocation == 2)
            {
                fire_Backwall_ShotLocation2();
            }
            else if (FireLocation == 3)
            {
                fire_Backwall_ShotLocation3();

            }
            else if (FireLocation == 4)
            {
                fire_Backwall_ShotLocation4();
            }
            else if (FireLocation == 5)
            {
                fire_Backwall_ShotLocation5();
            }
            else if (FireLocation == 6)
            {
                fire_Backwall_ShotLocation6();

            }
            else if (FireLocation == 7)
            {
                fire_Backwall_ShotLocation7();
            }
        }
        #endregion
        //Front Wall
        #region
        if (FireDirection == 4)
        {
            if (FireLocation == 1)
            {
                fire_Frontwall_ShotLocation1();
            }
            else if (FireLocation == 2)
            {
                fire_Frontwall_ShotLocation2();
            }
            else if (FireLocation == 3)
            {
                fire_Frontwall_ShotLocation3();

            }
            else if (FireLocation == 4)
            {
                fire_Frontwall_ShotLocation4();
            }
            else if (FireLocation == 5)
            {
                fire_Frontwall_ShotLocation5();
            }
            else if (FireLocation == 6)
            {
                fire_Frontwall_ShotLocation6();

            }
            else if (FireLocation == 7)
            {
                fire_Frontwall_ShotLocation7();
            }
        }
        #endregion

    }

    //fire locations
    //LeftWall
    void fire_Leftwall_ShotLocation1()
    {
        //Fix Shooting

        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation1.gameObject.transform.position, FirePoint_Leftwall_ShotLocation1.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation2()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation2.gameObject.transform.position, FirePoint_Leftwall_ShotLocation2.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation3()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation3.gameObject.transform.position, FirePoint_Leftwall_ShotLocation3.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation4()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation4.gameObject.transform.position, FirePoint_Leftwall_ShotLocation4.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation5()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation5.gameObject.transform.position, FirePoint_Leftwall_ShotLocation5.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation6()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation6.gameObject.transform.position, FirePoint_Leftwall_ShotLocation6.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Leftwall_ShotLocation7()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Leftwall_ShotLocation7.gameObject.transform.position, FirePoint_Leftwall_ShotLocation7.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    //Right wall
    void fire_Rightwall_ShotLocation1()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation1.gameObject.transform.position, FirePoint_Rightwall_ShotLocation1.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation2()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation2.gameObject.transform.position, FirePoint_Rightwall_ShotLocation2.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation3()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation3.gameObject.transform.position, FirePoint_Rightwall_ShotLocation3.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation4()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation4.gameObject.transform.position, FirePoint_Rightwall_ShotLocation4.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation5()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation5.gameObject.transform.position, FirePoint_Rightwall_ShotLocation5.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation6()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation6.gameObject.transform.position, FirePoint_Rightwall_ShotLocation6.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Rightwall_ShotLocation7()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Rightwall_ShotLocation7.gameObject.transform.position, FirePoint_Rightwall_ShotLocation7.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    //Back wall
    void fire_Backwall_ShotLocation1()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation1.gameObject.transform.position, FirePoint_Backwall_ShotLocation1.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation2()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation2.gameObject.transform.position, FirePoint_Backwall_ShotLocation2.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation3()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation3.gameObject.transform.position, FirePoint_Backwall_ShotLocation3.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation4()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation4.gameObject.transform.position, FirePoint_Backwall_ShotLocation4.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation5()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation5.gameObject.transform.position, FirePoint_Backwall_ShotLocation5.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation6()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation6.gameObject.transform.position, FirePoint_Backwall_ShotLocation6.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Backwall_ShotLocation7()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Backwall_ShotLocation7.gameObject.transform.position, FirePoint_Backwall_ShotLocation7.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    //Front Wall
    void fire_Frontwall_ShotLocation1()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation1.gameObject.transform.position, FirePoint_Frontwall_ShotLocation1.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation2()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation2.gameObject.transform.position, FirePoint_Frontwall_ShotLocation2.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation3()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation3.gameObject.transform.position, FirePoint_Frontwall_ShotLocation3.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation4()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation4.gameObject.transform.position, FirePoint_Frontwall_ShotLocation4.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation5()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation5.gameObject.transform.position, FirePoint_Frontwall_ShotLocation5.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation6()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation6.gameObject.transform.position, FirePoint_Frontwall_ShotLocation6.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }
    void fire_Frontwall_ShotLocation7()
    {
        GameObject dodgeball;
        dodgeball = (GameObject)Instantiate(ShotPrefab, FirePoint_Frontwall_ShotLocation7.gameObject.transform.position, FirePoint_Frontwall_ShotLocation7.gameObject.transform.rotation);

        dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
    }


}
