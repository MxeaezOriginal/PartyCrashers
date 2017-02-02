using UnityEngine;
using System.Collections;

public class Sword : Melee
{
    [Header("Sword Setting")][SerializeField]
    private int dashDistance = 25;
    [SerializeField]
    private float dashDelay = 0.1f;
    [SerializeField]
    private float smooth = 20f;
    [SerializeField]
    private float triggerLife = 0.5f;

    [SerializeField]
    public bool attack { get; private set; }

    public GameObject effect;
    
    CharacterController m_CharacterController;
    Player m_Player;

    void Start()
    {
        m_CharacterController = GetComponentInParent<CharacterController>();
        m_Player = GetComponentInParent<Player>();

        sliceEffect.SetActive(false);
        swordTrigger.SetActive(false);
    }

    void Update()
    {
        if (attack == true)
        {
            triggerLife -= Time.deltaTime;

            sliceEffect.SetActive(true);
            swordTrigger.SetActive(true);

            if (effect)
            {
                GameObject swordEffect;
                swordEffect = (GameObject)Instantiate(effect, transform.position, transform.rotation);

                Destroy(swordEffect, 5);
            }
        }

        if (triggerLife <= 0)
        {
            attack = false;
            swordTrigger.SetActive(false);
            sliceEffect.SetActive(false);
            triggerLife = 0.5f;
        }

        #region Erase if no bugs
        //  if (attack == true)
        //  {
        //      triggerLife -= Time.deltaTime;
        //  }

        //  if (triggerLife <= 0)
        //  {
        //      attack = false;
        //      triggerLife = 0.5f;

        //  }

        //  if (attack == true)
        //  {
        //      swordTrigger.SetActive(true);

        //if (effect)
        //      {
        //	GameObject swordEffect;
        //	swordEffect = (GameObject)Instantiate (effect, transform.position, transform.rotation);

        //	Destroy (swordEffect, 5);
        //}
        //  }

        //  if (attack == false)
        //  {
        //      swordTrigger.SetActive(false);
        //  }        
        #endregion        
    }

    override public void primaryAttack()
    {
        m_Player.m_Animator.SetBool("isSlashing", true);
        StartCoroutine(setPrimaryAttackFalse());
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
            attack = true;
            m_CoolDown = Time.time;
        }
    }

    override public void secondaryAttack()
    {
        m_Player.m_Animator.SetBool("isDashing", true);
        StartCoroutine(setSecondaryAttackFalse());
        if (m_SecondaryCoolDown <= Time.time - m_Weapon1Cooldown || m_SecondaryCoolDown == 0)
        {
            attack = true;
            m_CharacterController.Move(m_CharacterController.transform.forward * Time.deltaTime * 50f);

            StartCoroutine(dash());
        }
    }

    IEnumerator dash()
    {
        yield return new WaitForSeconds(dashDelay);

        m_SecondaryCoolDown = Time.time;        
    }

    private IEnumerator setPrimaryAttackFalse()
    {
        yield return new WaitForSeconds(.1f);
        m_Player.m_Animator.SetBool("isSlashing", false);
    }

    private IEnumerator setSecondaryAttackFalse()
    {
        yield return new WaitForSeconds(.1f);
        m_Player.m_Animator.SetBool("isDashing", false);
    }
}
