using UnityEngine;
using System.Collections;

public class AdvancedBossAi : MonoBehaviour
{

    //Stats
    public float m_BaseMaxHealth;
    public float m_NumOfPlayersHealthMultiplier;
    private float m_Health;

    //Frame
    private int frame;

    //States
    enum states
    {
        idle,
        hurt,
        dead,
        //Attacks
        rocket,
        shoot,
        count
    }
    states currentState;
    states state;
    //Taking damage
    private bool m_Invincible;
    private float m_DamageTaken;
    private float m_KnockBackMagnitude;
    private float m_StunTime;

    //Movement
    private Rigidbody m_Body;
    private Vector3 m_Velocity;
    public float m_Friction;

    //Get the players
    protected GameObject[] players;


    // Use this for initialization
    void Start()
    {
        state = states.idle;
        currentState = state;
        m_Invincible = false;
        frame = 0;
        players = GameManager.m_Instance.m_Players;

        m_Health = m_BaseMaxHealth * (players.Length*m_NumOfPlayersHealthMultiplier);

        m_Body = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        //Switch states
        switch (state)
        {
            case states.idle: Idle(); break;
            case states.hurt: Hurt(m_DamageTaken, m_StunTime); break;

            //Attacks
            case states.shoot: BasicShoot();break;
        }
        //Manage frame
        frame++;
        if(frame > 1000000) //Just in case the frame gets too big which I doubt it ever will BUT WHATEVER poopy butts stuff
        {
            frame = 0;
        }

        Move(); //Call the move function so the guy actually moves based on it's velocity
    }

    void LateUpdate()
    {
        if (state != currentState) //Reset the frame variable back to zero every time the boss changes it's state
        {
            frame = 0;
            currentState = state;
        }
    }
    void Move()
    {
        m_Body.velocity = m_Velocity; //The rigidBody's velocity will always be set to the local Velocity
    }

    void Friction(float friction)
    {
        //Friction
        if (m_Velocity.magnitude > 0)
        {
            m_Velocity.x -= friction * (m_Velocity.x / m_Velocity.magnitude);
            if(Mathf.Abs(m_Velocity.x) < friction * (m_Velocity.x / m_Velocity.magnitude))
            {
                m_Velocity.x = 0;
            }
            m_Velocity.z -= friction * (m_Velocity.z / m_Velocity.magnitude);
            if(Mathf.Abs(m_Velocity.z) < friction * (m_Velocity.z / m_Velocity.magnitude))
            {
                m_Velocity.z = 0;
            }
        }
    }
    public void OnTriggerEnter(Collider other)
    {
        if (!m_Invincible)
        {
            if (other.gameObject.GetComponent<Damage>() != null)
            {
                Damage attacker = other.gameObject.GetComponent<Damage>();
                StateEffect attackerEffect = other.gameObject.GetComponent<StateEffect>();
                float dmg = attacker.m_Damage;
                float knockBack = attackerEffect.m_KnockBack;
                float stun = attackerEffect.m_StunTime;

                m_Velocity = knockBack * Vector3.Normalize(transform.position - other.transform.position);
                m_Health -= dmg;
                state = states.hurt;
            }
        }

    }

    #region states
    void Idle()
    {
        //Look at next player

        GameObject closestPlayer = getClosestPlayer();

        transform.LookAt(closestPlayer.transform.position);
        //Friction
        Friction(m_Friction);
    }

    void Hurt(float damageTaken, float stunTime)
    {
        m_Health -= damageTaken;

        if (frame/60 > stunTime)
        {
            state = states.idle;
        }

    }
    #region Attack states
    void BasicShoot()
    {
        GameObject player = targetPlayer();
        Vector3 pPosition = player.transform.position;
        float shootSpeed = 1f;
        Vector3 bv = (pPosition - transform.position).normalized * shootSpeed;
        float distance = Vector3.Magnitude(pPosition - transform.position);


        PlayerController p = player.GetComponent<PlayerController>();
        Vector3 pVelocity = new Vector3(p.m_Velocity.x, 0f, p.m_Velocity.z);

        Vector3 shootTarget = pPosition + (pVelocity)/bv.magnitude;

        transform.LookAt(pPosition);

    }
    #endregion

    #endregion

    GameObject targetPlayer()
    {
        //Right now this whole function is really basic but I'll make it more complicated later
        GameObject target;

        target = getClosestPlayer();

        return target;
    } //This is where the decision making for the target player will happen
    GameObject getClosestPlayer()
    {

        float distance = 0f;
        GameObject target = null;
        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                distance = Vector3.Distance(players[i].transform.position, transform.position);
                target = players[i];
            }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < distance)
                {
                    distance = Vector3.Distance(players[i].transform.position, transform.position);
                    target = players[i];
                }
            }
        }
        return target;
    }

}
