using UnityEngine;
using System.Collections;

public class P4_Stats : MonoBehaviour
{

    Animator anim;

    void Awake()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.G))
        {
            OpenWindow();
        }
        if (Input.GetKeyUp(KeyCode.G))
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
