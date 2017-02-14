using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class HeavyEnemy : EnemyAI //Inherits from EnemyAI now instead of monobehaviour
{
    public int m_EnemyHealth = 20;
    public int m_PartyBarAmount = 2;
    public GameObject coin;
    
    public float ViewRange = 5f;
    public float DetectRange = 100f;
    public float ViewDis = 10f;

    Vector3 rayDirection;
    RaycastHit hit;

    public float KnockBackDis = 40f;
    public float KB;
    public float m_LastMoveTime;
    public float RotationSpeed = 1f;

    public int m_Damage = 1;
    private HeartSystem m_HeartSystem;
    private bool m_CanDamage = true;

	//VFX
	//public GameObject trailEffect;
	//VFX

    EnemyEffect enemyEffect;

    void Start()
    {
		/*/VFX
		if (trailEffect != null)
		{
			trailEffect.GetComponent<ParticleSystem> ().enableEmission = false;
		}
		//VFX*/
        KB = KnockBackDis;
        initializeVariables();
        enemyEffect = gameObject.GetComponent<EnemyEffect>();
    }

    void Update()
    {
        getClosestPlayer();
        if (DetectPlayer() && !enemyEffect.isStun)
        {
            m_Rtts = RotationSpeed;
            look(target.transform);
            m_Rtts = m_RotationSpeed;
        }
        if (CanSeePlayer() && !enemyEffect.isStun)
        {
                chase();
			/*/VFX
			if (trailEffect != null)
			{
				trailEffect.GetComponent<ParticleSystem> ().enableEmission = true;
			}
			//VFX*/
        }
        else
        {
                agent.Stop();
			/*/VFX
			if (trailEffect != null)
			{
				trailEffect.GetComponent<ParticleSystem> ().enableEmission = false;
			}
			//VFX*/
        }
    }

    public bool DetectPlayer()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            //Ray ray = gameObject.transform.forward;
            if ((Vector3.Angle(rayDirection, transform.forward)) < DetectRange)
            {
                if (Physics.Raycast(transform.position, rayDirection, out hit, ViewDis))
                {
                    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                    {
                        KB = KnockBackDis;
                        return true;
                    }
                }
                //if (Physics.Raycast(transform.position, transform.forward, out hit, ViewDis))
                //{
                //    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                //    {
                //        KB = KnockBackDis;
                //        return true;
                //    }
                //}
            }
        }
        KB = 0f;
        return false;
    }

    public bool CanSeePlayer()
    {
        for (int i = 0; i < players.Length; i++)
        {
            rayDirection = players[i].transform.position - transform.position;
            //Ray ray = gameObject.transform.forward;
            if ((Vector3.Angle(rayDirection, transform.forward)) < ViewRange) 
            {
                //if (Physics.Raycast(transform.position, rayDirection, out hit, ViewDis))
                //{
                //    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                //    {
                //        KB = KnockBackDis;
                //        return true;
                //    }
                //}
                if (Physics.Raycast(transform.position, transform.forward, out hit, ViewDis))
                {
                    if (hit.transform.GetComponent<Weapon>() != null || hit.transform.GetComponent<Player>() != null)
                    {
                        KB = KnockBackDis;
                        return true;
                    }
                }
            }
        }
        KB = 0f;
        return false;
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<HeartSystem>() != null)
        {
            m_HeartSystem = other.GetComponent<HeartSystem>();
            if (other.tag == "Player")
            {
                if (m_CanDamage)
                {
                    m_HeartSystem.TakeDamage(m_Damage);
                    m_CanDamage = false;
                    StartCoroutine(WaitForSec(2));
                }

                m_HeartSystem.UpdateHearts();
            }
        }
    }

    public void OnTriggerExit(Collider other)
    {
        //if (other.GetComponent<HeartSystem>() != null)
        //{
        //    m_CanDamage = true;
        //}
    }

    IEnumerator WaitForSec(float s)
    {
        yield return new WaitForSeconds(s);
        m_CanDamage = true;
    }
}


