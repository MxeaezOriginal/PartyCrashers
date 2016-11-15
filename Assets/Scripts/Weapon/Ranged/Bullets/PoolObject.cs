using UnityEngine;
using System.Collections;

public class PoolObject : MonoBehaviour {

    [SerializeField][Tooltip("Define the time to free the object (0 to disable timer).")]
    private float objectTimer = 2f;

    void OnEnable()
    {
        if (objectTimer > 0)
            Invoke("Reset", objectTimer);
    }

    private void OnTriggerEnter(Collider other)
    {
        if(!GameObject.Find("WaterBalloonBow").GetComponent<Bow>().pierce)
        {
            if (other.tag != "Coins")
                Reset();         
        }
    }

    public void Reset()
    {
        gameObject.SetActive(false);
    }

    void OnDisable()
    {
        // To prevent a "double disable".
        CancelInvoke();
    }
}
