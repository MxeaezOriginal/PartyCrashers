using UnityEngine;
using System.Collections;

public class Bomb : MonoBehaviour
{

    //Cooper's Variables
    //Get all bomb rigidbodies
    public Rigidbody cherrybomb;
    public Rigidbody pepperbomb;
    public Rigidbody mine;
    public Rigidbody glidebomb;
    public Rigidbody stickybomb;

    //Get all bomb damage
    private float cherrydamage = 33;
    private float pepperdamage = 26;
    private float minedamage = 47;
    private float glidedamage = 60;
    private float stickydamage = 69;

    //Get all bomb ammo
    //Get this from the player
    public float cherryammo;
    public float pepperammo;
    public float mineammo;
    public float glideammo;
    public float stickyammo;

    //Get firepoint
    public GameObject firepoint;

    //Get variables
    public float speed;
    //End of Cooper's Variables

    string FireButton = "Fire1";
    public float fireRate = 0.5F;
    private float nextFire = 0.0F;
    private string input;

    private BombType currentBombType = BombType.Bomb1;
    
    public struct BombMapping
    {
        BombType type;
        KeyCode key;
    }

    public BombMapping[] bombMappings;

    public enum BombType
    {
        Bomb1 = 1,
        Bomb2,
        Bomb3,
        Bomb4,
        Bomb5
    }

    //int ammo 
    void Update()
    {

        //TEMPORARY
        /*
        for( int i = 0; i < bombMappings.Length; ++i)
        {
            if( Input.GetKeyDown( bombMappings[i].key ) )
            {
                currentBombType = bombMappings[i].type;
                break;
            }
        }
        */


        if( Input.GetButton( FireButton ) && Time.deltaTime > nextFire )
        {
            nextFire = Time.deltaTime + fireRate;

            Vector3 pos = transform.position;
            Vector3 forward = transform.forward;

            Bomb.FireBomb( currentBombType, pos, forward);
        }
               

    }

    public static void FireBomb(BombType type, Vector3 pos, Vector3 forward)
    {
        // Instantiate and fire bomb
    }

    //Couldn't put these functions into Firebomb() but we could do a switch or if and put them in if you like
    void CherryBomb()//Send a single bomb out at a medium distance
    {
        if (cherryammo >= 1)
        {
            Rigidbody cachedBomb = Instantiate(cherrybomb, firepoint.transform.position, firepoint.transform.rotation) as Rigidbody;
            cachedBomb.velocity = firepoint.transform.TransformDirection(Vector3.forward * speed);
            cherryammo -= 1;
        }
    }

    void PepperBomb()//Send out 3 smaller bombs at a medium distance || right now it only fires one
    {
        if (pepperammo >= 3)
        {
            Rigidbody cachedBomb = Instantiate(pepperbomb, firepoint.transform.position, firepoint.transform.rotation) as Rigidbody;
            cachedBomb.velocity = firepoint.transform.TransformDirection(Vector3.forward * (speed * 1.3f));
            pepperammo -= 3;
        }
    }

    void Mine()//Drop a mine on the ground which will not explode until an enemy collides with it
    {
        if (mineammo >= 1)
        {
            Rigidbody cachedBomb = Instantiate(mine, firepoint.transform.position, firepoint.transform.rotation) as Rigidbody;
            cachedBomb.velocity = firepoint.transform.TransformDirection(Vector3.down);
            mineammo -= 1;
        }
    }

    void GlideBomb()//Send out a bomb that uses no gravity(otherwise identical to the cherrybomb)
    {
        if (glideammo >= 1)
        {
            Rigidbody cachedBomb = Instantiate(glidebomb, firepoint.transform.position, firepoint.transform.rotation) as Rigidbody;
            cachedBomb.velocity = firepoint.transform.TransformDirection(Vector3.forward * (speed * 0.8f));
            glideammo -= 1;
        }
    }

    void StickyBomb()//Send out a bomb that moves quickly and will attach to any enemy it touches and explode after a time
    {
        if (stickyammo >= 1)
        {
            Rigidbody cachedBomb = Instantiate(stickybomb, firepoint.transform.position, firepoint.transform.rotation) as Rigidbody;
            cachedBomb.velocity = firepoint.transform.TransformDirection(Vector3.forward * (speed * 2f));
            stickyammo -= 1;
        }
    }
}

