using UnityEngine;
using System.Collections;

public class Stats : MonoBehaviour
{

    public Animator anim;
    int index;
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            OpenWindow();
        }
        if (Input.GetKeyUp(KeyCode.E))
        {
            CloseWindow();
        }
    }

    public void OpenWindow()
    {
            anim.SetBool("Open", true);
            index = 4;
            StartCoroutine(WaitBeforeChangingSiblingIndex());
    }

    IEnumerator WaitBeforeChangingSiblingIndex()
    {
        yield return new WaitForSeconds(0.2f);
        anim.transform.SetSiblingIndex(index);
    }

    public void CloseWindow()
    {
        anim.SetBool("Open", false);
        index = 0;
        StartCoroutine(WaitBeforeChangingSiblingIndex());
    }
}
