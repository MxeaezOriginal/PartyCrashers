using UnityEngine;
using System.Collections;

public class BallManager : MonoBehaviour
{
    public enum EBallType { Basic, Stun, Bomb };           // Types of balls: Basic(pink), Stun(yellow), and Bomb(black).
    public float m_StunTime;

    private EBallType m_BallType;
    private BallLaunchersManager m_BallLauncherManager;
    private bool m_IsCoroutineExecuting;

    void Start()
    {
        m_IsCoroutineExecuting = false;
    }

    void Update()
    {
    }

    void OnTriggerEnter(Collider other)
    {
        // Check if the collision happened to a player
        if(other.tag == "Player")
        {
            //If it hits a player, we have to check the type of ball that we have
            switch (m_BallType)
            {
                case EBallType.Basic:
                    break;
                case EBallType.Stun:
                    StartCoroutine(ResolveStunCollision(other.gameObject));
                    break;
                case EBallType.Bomb:
                    break;
                default: Debug.Log("Ball type not set!");
                    break;
            }
        }
    }

    // When ball leaves playing area (defined by a collision box set as trigger),
    // or hits a player, this ball should go back to the ball pool
    void OnTriggerExit(Collider other)
    {
        if (gameObject.activeInHierarchy && (other.tag == "Player" ||  other.tag == "PlayingVolume"))
        {
            m_BallLauncherManager.PutBallBackIntoPool(gameObject);
        }
    }

    // Method used by the BallLauncherManager to set the ball type when it is created
    public void SetBallType(EBallType type)
    {
        m_BallType = type;
    }

    // Method used by the BallLauncherManager to set itself as the ball manager
    // It's necessary, since the BallLauncherManager controls the ball pool.
    public void SetBallLauncherManager(BallLaunchersManager manager)
    {
        m_BallLauncherManager = manager;
    }

    IEnumerator ResolveStunCollision(GameObject player)
    {
        player.GetComponent<PlayerController>().enabled = false;
        yield return new WaitForSeconds(m_StunTime);
        player.GetComponent<PlayerController>().enabled = true;
    }
}
