using UnityEngine;
using System.Collections;

public abstract class Ranged : Weapon
{
    [Header("Ranged Weapons Settings")]
    [SerializeField]
    protected GameObject m_RightTriggerProjectile;
    [SerializeField]
    protected GameObject m_LeftTriggerProjectile;
    [SerializeField]
    protected GameObject[] m_FirePoint;
    [SerializeField][Tooltip("Projectile Maximum Speed.")]
    protected float m_MaxSpeed;
    protected float m_ProjectileSpeed02;


}
