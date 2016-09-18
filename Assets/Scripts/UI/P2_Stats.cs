using UnityEngine;
using System.Collections;

public class P2_Stats : MonoBehaviour
{

    Animator anim;

    void Awake()
    {
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.D))
        {
            OpenWindow();
        }
        if (Input.GetKeyUp(KeyCode.D))
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
