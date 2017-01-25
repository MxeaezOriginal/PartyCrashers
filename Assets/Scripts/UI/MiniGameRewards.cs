using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class MiniGameRewards : MonoBehaviour
{
    MinigameManager minigameManger;

    EventSystem es;
    GameObject currentlySelectedButton;

    public Canvas rewardCanvas;

    void Awake()
    {
        es = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        minigameManger = GetComponent<MinigameManager>();
        rewardCanvas = GameObject.Find("Reward Canvas").GetComponent<Canvas>();
    }

    void Update()
    {
        if (minigameManger.showRewardCanvas)
            ChooseReward();
    }

    void ChooseReward()
    {
        rewardCanvas.enabled = true;    //Enables Canvas component; NOT GAMEOBJECT!

        //currentlySelectedButton = GameObject.Find("Reward Canvas").transform.GetChild(0).gameObject;
        //es.SetSelectedGameObject(currentlySelectedButton);
    }
}
