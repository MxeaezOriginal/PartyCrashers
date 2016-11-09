using UnityEngine;
using System.Collections;

public abstract class Weapon : MonoBehaviour {

    public Animation m_Anim;
    public int m_Damage = 0;
    public float m_AttackInterval = 0;
    protected float m_AttackSpeed = 0;
    public float m_SecondaryAttackSpeed = 0;
    public AudioClip[] m_PrimarySounds;
    public AudioClip[] m_SecondarySounds;
    public AudioClip[] m_SoundsOnHit;
    protected float m_CoolDown;
    protected float m_SecondaryCoolDown;

    void Start()
    {
        m_AttackSpeed = m_AttackInterval;
    }

    public abstract void primaryAttack();
    public abstract void secondaryAttack();
}
