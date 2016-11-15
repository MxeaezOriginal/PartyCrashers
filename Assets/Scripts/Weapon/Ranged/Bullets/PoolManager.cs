using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// PoolManager
/// 
/// This script can be used in any game object to create and control pool of objects.
/// 1. Drag and Drop the scriot to the Inspector to add to a GameObject.
/// 2. In the Inspector define the initual number of objects.
/// 3. Drag and drop the prefab of the game object to be controlled (pooling)
/// 4. In your gamecontroler script create a instance of PoolManafer and call GetFreeObject() when need a new object, 
///
/// </summary>

public class PoolManager : MonoBehaviour
{

    [Tooltip("Drag and drop the prefab of theobject to be controled.")]
    public GameObject ObjectToControl;
    [Tooltip("Define the parent of the objects.")]
    public GameObject ObjectParent;
    [Tooltip("Initial number of objects.")]
    public int poolAmountObjects = 100;
    [Tooltip("Destroy this object after reload scene.")]
    public bool DestroyOnReloadScene = false;

    private List<GameObject> objects;


    public static PoolManager Instance { get; private set; }
    void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            if (!DestroyOnReloadScene)
                DontDestroyOnLoad(gameObject);
        }
        else
            Destroy(gameObject);

        // Creating initial list of objects.
        objects = new List<GameObject>();
        for (int i = 0; i < poolAmountObjects; i++)
        {
            CreateNewObject();
        }
    }

    // Create new object and deactive.
    private GameObject CreateNewObject()
    {
        GameObject go = (GameObject)Instantiate(ObjectToControl);
        return resetObject(go);
    }

    private GameObject resetObject(GameObject go)
    {
        if (ObjectParent)
        {
            go.transform.SetParent(ObjectParent.transform);
            go.transform.position = ObjectParent.transform.position;
            go.transform.rotation = ObjectParent.transform.rotation;
        }
        objects.Add(go);
        go.SetActive(false);
        return go;
    }

    public GameObject GetFreeObject()
    {
        // Search for a free object in the list
        foreach (GameObject item in objects)
        {
            if (!item.activeInHierarchy)
                return resetObject(item);
        }
        // If the system needs more objects it will create, but won't destroy
        return CreateNewObject();
    }

    // Free all objects to be reused later
    public void FreeAllObjects()
    {
        foreach(GameObject item in objects)
        {
            if (item.activeInHierarchy)
                item.SetActive(false);
        }
    }
}
