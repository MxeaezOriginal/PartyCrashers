using UnityEngine;
using System.Collections;

public class P1_Stats : MonoBehaviour
{

    Animator anim;

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

    void OpenWindow()
    {
        anim.SetBool("Open", true);
    }

    void CloseWindow()
    {
        anim.SetBool("Open", false);
    }
}
