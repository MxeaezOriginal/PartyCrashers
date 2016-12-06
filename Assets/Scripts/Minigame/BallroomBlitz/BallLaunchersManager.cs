using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BallLaunchersManager : MonoBehaviour
{
    // public member variables
    public GameObject           m_BallPrefab;           // Ball prefab.
    public float                m_FastBallSpeed;        // Basic & Stun balls speed.
    public float                m_SlowBallSpeed;        // Bomb ball speed.
    public float                m_LaunchersTimer;       // Time interval between every launcher reset (randomly active or inactive).
    public float                m_BasicBallChance;      // Chance for the basic ball to spawn. Should be between 0.0f and 1.0f.
    public float                m_StunBallChance;       // Chance for the stun ball to spawn. Should be between 0.0f and 1.0f.
    public float                m_BombBallChance;       // Chance for the bomb ball to spawn. Should be between 0.0f and 1.0f.
    public float                m_BombBallTimer;        // Timer to explode bomb ball.
    public Material             m_BasicBallMaterial;    // Material for the basic ball.
    public Material             m_StunBallMaterial;     // Material for the stun ball.
    public Material             m_BombBallMaterial;     // Material for the bomb ball.
    public Transform[]          m_BallLaunchers;        // Array that contains all ball launchers.

    // private member variables
    private List<GameObject>    m_BallPool;             // Object pool for balls.
    private bool[]              m_ActivatedLaunchers;   // Array that holds information about the activation status of all launchers.
    private bool[]              m_FiredLaunchers;       // Array that controls if a launcher has been fired since last reset.
    private float               m_FireRange;            // Fire range for launchers.
    private bool                m_IsCoroutineExecuting;

    void Start()
    {
        SetBallPool();

        // Set fire range
        SetFireRange();

        // Allocate memory for array based on the number of launchers
        m_ActivatedLaunchers = new bool[m_BallLaunchers.Length];
        m_FiredLaunchers = new bool[m_BallLaunchers.Length];

        // At the beginning, set every launcher as inactive
        for (int i = 0; i < m_ActivatedLaunchers.Length; ++i)
        {
            m_ActivatedLaunchers[i] = false;
            m_FiredLaunchers[i] = false;
        }

        m_IsCoroutineExecuting = false;
    }

    void Update()
    {
        StartCoroutine(ResetBallLaunchers(m_LaunchersTimer));
        ShootBalls();
    }

    void SetFireRange()
    {
        float minX = 0.0f, maxX = 0.0f;
        float[] xValues = new float[m_BallLaunchers.Length];

        for (int i = 0; i < m_BallLaunchers.Length; ++i)
        {
            xValues[i] = m_BallLaunchers[i].position.x;
        }

        minX = Mathf.Min(xValues);
        maxX = Mathf.Max(xValues);

        m_FireRange = (maxX - minX) * 0.5f;
    }

    // Document method
    IEnumerator ResetBallLaunchers(float timer)
    {
        if(m_IsCoroutineExecuting)
        {
            yield break;
        }

        m_IsCoroutineExecuting = true;

        yield return new WaitForSeconds(timer);

        for(int i = 0; i < m_ActivatedLaunchers.Length; ++i)
        {
            if(!m_FiredLaunchers[i])
            {
                if(Random.Range(0,2) == 0)
                {
                    m_ActivatedLaunchers[i] = !m_ActivatedLaunchers[i];
                }
            }
            else
            {
                m_FiredLaunchers[i] = false;
            }
        }

        m_IsCoroutineExecuting = false;
    }

    void ShootBalls()
    {
        Transform[] playersTransf = GetPlayersTransforms();
        
        for(int i = 0; i < m_BallLaunchers.Length; ++i)
        {
            // consider only active launchers
            if (m_ActivatedLaunchers[i] == true)
            {
                float dotResult = Vector3.Dot(m_BallLaunchers[i].forward, Vector3.right);

                // Left wall or right wall launcher
                if (Mathf.RoundToInt(dotResult) == 1 || Mathf.RoundToInt(dotResult) == -1)
                {
                    // Check if there are players on the same row (same z coordinates)
                    foreach (Transform player in playersTransf)
                    {
                        if(Mathf.RoundToInt(m_BallLaunchers[i].position.z) == Mathf.RoundToInt(player.position.z))
                        {
                            Shoot(player.position, i);
                        }
                    }
                }
                // Launcher is on top or bottom wall
                else
                {
                    dotResult = Vector3.Dot(m_BallLaunchers[i].forward, Vector3.forward);

                    // Top wall or bottom wall launcher
                    if (Mathf.RoundToInt(dotResult) == 1 || Mathf.RoundToInt(dotResult) == -1)
                    {
                        // Check if there are players on the same column (same x coordinates)
                        foreach (Transform player in playersTransf)
                        {
                            if (Mathf.RoundToInt(m_BallLaunchers[i].position.x) == Mathf.RoundToInt(player.position.x))
                            {
                                Shoot(player.position, i);
                            }
                        }
                    }
                    else
                    {
                        Debug.LogAssertion("[BallroomBlitzManager.ShootBalls] - Wrong vector evaluation! dotResult: " + dotResult);
                    }
                }
            }
        }
    }

    void SetBallPool()
    {
        // Create object pool for balls
        m_BallPool = new List<GameObject>();

        // Instantiate balls (twice the number of launchers) and put them inside the object pool
        for (int i = 0; i < m_BallLaunchers.Length * 2; ++i)
        {
            GameObject ball = Instantiate<GameObject>(m_BallPrefab);
            ball.SetActive(false);
            ball.GetComponent<BallManager>().SetBallLauncherManager(this);
            m_BallPool.Add(ball);
        }
    }

    GameObject GetBallFromPool()
    {
        if(m_BallPool.Count > 0)
        {
            GameObject ball = m_BallPool[0];
            m_BallPool.RemoveAt(0);
            return ball;
        }
        return null;
    }

    public void PutBallBackIntoPool(GameObject ball)
    {
        m_BallPool.Add(ball);
        ball.GetComponent<Rigidbody>().velocity = Vector3.zero;
        ball.GetComponent<Rigidbody>().angularVelocity = Vector3.zero;
        ball.SetActive(false);
    }

    Transform[] GetPlayersTransforms()
    {
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
        Transform[] playersTransforms = new Transform[players.Length];

        for (int i = 0; i < players.Length; ++i)
        {
            playersTransforms[i] = players[i].transform;
        }

        return playersTransforms;
    }

    void Shoot(Vector3 playerPosition, int launcherID)
    {
        // Check if distance is closer than half the size of the room
        float distance = (playerPosition - m_BallLaunchers[launcherID].position).magnitude;

        if (distance <= m_FireRange)
        {
            GameObject ball = GetBallFromPool();

            if(ball == null)
            {
                Debug.LogAssertion("[BallroomBlitzManager.Shoot] - Ball pool is out of balls!");
                return;
            }
            // Set launcher as inactive
            m_ActivatedLaunchers[launcherID] = false;

            // Set launcher as fired.
            m_FiredLaunchers[launcherID] = true;

            ball.SetActive(true);
            ball.transform.position = m_BallLaunchers[launcherID].position;
            ball.transform.rotation = m_BallLaunchers[launcherID].rotation;

            // Depending on the type of the ball, set speed and material
            float randomNumber = Random.Range(0.0f, 1.0f);

            // If basic ball
            if (randomNumber >= 0.0f && randomNumber <= m_BasicBallChance)
            {
                ball.GetComponent<BallManager>().SetBallType(BallManager.EBallType.Basic);
                ball.GetComponent<Rigidbody>().AddForce(ball.transform.forward * m_FastBallSpeed);
                ball.GetComponent<Renderer>().material = m_BasicBallMaterial;
            }
            // If stun ball
            else if(randomNumber > m_BasicBallChance && randomNumber < m_StunBallChance)
            {
                ball.GetComponent<BallManager>().SetBallType(BallManager.EBallType.Stun);
                ball.GetComponent<Rigidbody>().AddForce(ball.transform.forward * m_SlowBallSpeed);
                ball.GetComponent<Renderer>().material = m_StunBallMaterial;
            }
            // If bomb ball
            else
            {
                ball.GetComponent<BallManager>().SetBallType(BallManager.EBallType.Bomb);
                ball.GetComponent<Rigidbody>().AddForce(ball.transform.forward * m_SlowBallSpeed);
                ball.GetComponent<Renderer>().material = m_BombBallMaterial;
            }

        }
    }
}
