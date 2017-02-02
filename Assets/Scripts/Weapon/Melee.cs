using UnityEngine;
using System.Collections;

public abstract class Melee : Weapon
{
    [Header("Melee Weapons Settings")]
    [SerializeField]
    protected GameObject swordTrigger;
    [SerializeField]
    protected GameObject sliceEffect;
}
