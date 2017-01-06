using UnityEngine;
using System.Collections;

public class Stats : MonoBehaviour
{
    public Player.PLAYER player;


    public Animator anim;
    int index;
    //float openedTime;
    //float openWindowTime;
    //float closedWindowTime;
    float toggleWindowTime;


    void Update()
    {
        if (Input.GetKey(KeyCode.E))
        {
            ToggleWindow();
        }
    }

    public void ToggleWindow()
    {
        if (toggleWindowTime < Time.time - .5f)
        {
            if(anim.GetBool("Open"))
            {
                anim.SetBool("Open", false);
                index = 0;
                StartCoroutine(WaitBeforeChangingSiblingIndex());

            }
            else
            {
                anim.SetBool("Open", true);
                index = 4;
                StartCoroutine(WaitBeforeChangingSiblingIndex());
            }
            toggleWindowTime = Time.time;
        }
    }

    //public void OpenWindow()
    //{
    //    if (openWindowTime < Time.time - 5f)
    //    {
    //        anim.SetBool("Opened", false);
    //        //openedTime = Time.time;
    //        anim.SetBool("Open", true);
    //        index = 4;
    //        StartCoroutine(WaitBeforeChangingSiblingIndex());
    //        openWindowTime = Time.time;
    //    }
    //}

    IEnumerator WaitBeforeChangingSiblingIndex()
    {
        yield return new WaitForSeconds(0.2f);
        anim.transform.SetSiblingIndex(index);
    }

    //IEnumerator SetOpened()
    //{
    //    yield return new WaitForSeconds(0.2f);
    //    anim.SetBool("Opened", false);
    //}

    //public void CloseWindow()
    //{
    //    //if (closedWindowTime < Time.time - 1f)
    //    //{
    //        if (openedTime < Time.time - 0.2f)
    //        {
    //            anim.SetBool("Opened", true);
    //            StartCoroutine(SetOpened());
    //        }
    //        anim.SetBool("Open", false);
    //        index = 0;
    //        StartCoroutine(WaitBeforeChangingSiblingIndex());
    //        closedWindowTime = Time.time;
    //    //}
    //}
}
