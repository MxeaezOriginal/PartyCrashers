using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;

public class MouseInputFix : MonoBehaviour
{
    public EventSystem es;
    public GameObject previouslySelectedGameObject;


    MenuManager menuManager;

    void Awake()
    {
        es = GameObject.Find("EventSystem").GetComponent<EventSystem>();
        menuManager = GameObject.Find("Menu Manager").GetComponent<MenuManager>();
    }

    void Update()
    {
        if (es.currentSelectedGameObject == menuManager.allButtons[0])
            previouslySelectedGameObject = menuManager.allButtons[0];
        else if (es.currentSelectedGameObject == menuManager.allButtons[1])
            previouslySelectedGameObject = menuManager.allButtons[1];
        else if (es.currentSelectedGameObject == menuManager.allButtons[2])
            previouslySelectedGameObject = menuManager.allButtons[2];
        else if (es.currentSelectedGameObject == menuManager.allButtons[3])
            previouslySelectedGameObject = menuManager.allButtons[3];
        else if (es.currentSelectedGameObject == menuManager.allButtons[4])
            previouslySelectedGameObject = menuManager.allButtons[4];
        else if (es.currentSelectedGameObject == menuManager.allButtons[5])
            previouslySelectedGameObject = menuManager.allButtons[5];
        else if(es.currentSelectedGameObject == menuManager.allButtons[6])
            previouslySelectedGameObject = menuManager.allButtons[6];

        es.SetSelectedGameObject(previouslySelectedGameObject);
    }
}
