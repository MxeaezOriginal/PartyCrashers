using UnityEngine;
using System.Collections;

public class Pressablebutton : MonoBehaviour {

    private Vector3 buttonstartPosition;
    public Transform buttondownPosition;
    public Transform ButtonPosition;
    public bool buttonDownPermanent;
    public int requiredCarryAmmount;
    public bool AllowPlayers;
    public bool AllowEnemies;
    private int carryAmmount = 0;
    public float smooth;

    public Transform objectToMove;
    public Transform objectToMoveEndPosition;
    private Vector3 objectToMoveStartPosition;
    private bool isDown = false;

    // Use this for initialization
    void Start ()
    {
        buttonstartPosition = ButtonPosition.position;
        objectToMoveStartPosition = objectToMove.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (carryAmmount >= requiredCarryAmmount)
        {
            isDown = true;
        }
        else if (buttonDownPermanent == false)
        {
            isDown = false;
           
        }
        if(isDown == true)
        {
            ButtonPosition.position = Vector3.Lerp(ButtonPosition.position, buttondownPosition.position, smooth * Time.deltaTime);
            objectToMove.position = Vector3.Lerp(objectToMove.position, objectToMoveEndPosition.position, smooth * Time.deltaTime);
        }
        else
        {
            ButtonPosition.position = Vector3.Lerp(ButtonPosition.position, buttonstartPosition, smooth * Time.deltaTime);
            objectToMove.position = Vector3.Lerp(objectToMove.position, objectToMoveStartPosition, smooth * Time.deltaTime);
        }

    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && AllowPlayers == true)
        {
            carryAmmount++;
        }
        if ((other.gameObject.tag == "ChaserEnemy" || other.gameObject.tag == "MeleeEnemy" || other.gameObject.tag == "HeavyEnemy") && AllowEnemies == true)
        {
            carryAmmount++;
        }

    }
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player" && AllowPlayers == true)
        {
            carryAmmount--;
        }
        if ((other.gameObject.tag == "ChaserEnemy" || other.gameObject.tag == "MeleeEnemy" || other.gameObject.tag == "HeavyEnemy") && AllowEnemies == true)
        {
            carryAmmount--;
        }
    }
}
