using UnityEngine;
using System.Collections;

public class AdvancedBossAi : MonoBehaviour
{

    //Stats
    public float m_MaxHealth;
    private float m_Health;

    //Frame
    private int frame;

    //States
    enum states
    {
        idle,
        rocket,
        hurt,
        dead,
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


    // Use this for initialization
    void Start()
    {
        state = states.idle;
        currentState = state;
        m_Invincible = false;
        frame = 0;
        m_Health = m_MaxHealth;

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
        }
        frame++;

        Move();
    }

    void LateUpdate()
    {
        if (state != currentState)
        {
            frame = 0;
            currentState = state;
        }
    }
    void Move()
    {
        m_Body.velocity = m_Velocity;
    }

    void Friction(float friction)
    {
        //Friction
        if (m_Velocity.magnitude > 0)
        {
            m_Velocity.x -= friction * (m_Velocity.x / m_Velocity.magnitude);
            m_Velocity.z -= friction * (m_Velocity.z / m_Velocity.magnitude);
        }
    }

    #region states
    void Idle()
    {
        //Friction(1f);
    }

    void Hurt(float damageTaken, float stunTime)
    {
        m_Health -= damageTaken;

        if (frame/60 > stunTime)
        {
            state = states.idle;
        }

    }

    public void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.GetComponent<Damage>() != null)
        {
            Damage attacker = other.gameObject.GetComponent<Damage>();
            StateEffect attackerEffect = other.gameObject.GetComponent<StateEffect>();
            float dmg = attacker.m_Damage;
            float knockBack = attackerEffect.m_KnockBack;
            float stun = attackerEffect.m_StunTime;

            m_Velocity = knockBack * Vector3.Normalize(transform.position - other.transform.position);

            state = states.hurt;
        }

    }
    #endregion

}
