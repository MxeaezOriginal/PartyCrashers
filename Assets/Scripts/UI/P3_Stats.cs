using UnityEngine;
using System.Collections;

public class P3_Stats : MonoBehaviour
{

    Animator anim;

    void Awake()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            OpenWindow();
        }
        if (Input.GetKeyUp(KeyCode.F))
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
