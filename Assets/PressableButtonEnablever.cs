using UnityEngine;
using System.Collections;

public class PressableButtonEnablever : MonoBehaviour
{

    private Vector3 buttonstartPosition;
    public Transform buttondownPosition;
    public Transform ButtonPosition;
    public bool buttonDownPermanent;
    public int requiredCarryAmmount;
    public bool AllowPlayers;
    public bool AllowEnemies;
    private int carryAmmount = 0;
    public float smooth;
    public bool EnableObject;

    public GameObject objectToEnable;


    // Use this for initialization
    void Start()
    {
        buttonstartPosition = ButtonPosition.position;
        
    }

    // Update is called once per frame
    void Update()
    {
        if (carryAmmount >= requiredCarryAmmount)
        {
            ButtonPosition.position = Vector3.Lerp(ButtonPosition.position, buttondownPosition.position, smooth * Time.deltaTime);
            objectToEnable.SetActive(EnableObject);

        }
        else if (buttonDownPermanent == false)
        {
            ButtonPosition.position = Vector3.Lerp(ButtonPosition.position, buttonstartPosition, smooth * Time.deltaTime);
            objectToEnable.SetActive(!EnableObject);
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
