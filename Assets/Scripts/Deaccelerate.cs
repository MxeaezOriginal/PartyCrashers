using UnityEngine;
using System.Collections;

public class Deaccelerate : MonoBehaviour {

    public float lerpTime;
    public float lerpDistance;

    private bool isLerping = false;

    private Vector3 startPosition;
    private Vector3 endPosition;

    private float timeStartedLerping;

    void BeginLerp()
    {
        isLerping = true;
        timeStartedLerping = Time.time;

        startPosition = transform.position;
        endPosition = transform.position + Vector3.forward * lerpDistance;
    
    }

    void Start()
    {

        BeginLerp();

    }

    void FixedUpdate()
    {

        if(isLerping)
        {

            float timeSinceStarted = Time.time - timeStartedLerping;
            float percentageComplete = timeSinceStarted / lerpTime;

            transform.position = Vector3.Slerp(startPosition, endPosition, percentageComplete);

            if(percentageComplete >= 1.0f)
            {
                isLerping = false;
            }

        }

    }
}
