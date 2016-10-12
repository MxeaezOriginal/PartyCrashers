using UnityEngine;
using System.Collections;

public class Stats : MonoBehaviour
{

    public Animator anim;

    void Awake()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.S))
        {
            OpenWindow();
        }
        if (Input.GetKeyUp(KeyCode.S))
        {
            CloseWindow();
        }
    }

    public void OpenWindow()
    {
        anim.SetBool("Open", true);
    }

    public void CloseWindow()
    {
        anim.SetBool("Open", false);
    }
}
