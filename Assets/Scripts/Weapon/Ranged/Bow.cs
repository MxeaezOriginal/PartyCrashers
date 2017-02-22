using UnityEngine;
using System.Collections;
using System;
using UnityEngine.UI;

public class Bow : Ranged
{
    //sound
    public AudioManager SFXManager;
    public GameObject SFXPlayer;
    public AudioClip[] SFXlowcharge;
    public AudioClip[] SFXmedcharge;
    public AudioClip[] SFXhighcharge;
    private AudioClip SFXtoPlay;
    //sound end 

	//VfX
	public GameObject primaryFlashVFX;
	public GameObject secondaryflashVFX;
	public GameObject chargingVFX;
	public GameObject chargedVFX;
    [SerializeField]
    private GameObject m_LaserBeamFX;
    //VFX end

    [Tooltip("Maximum Charging Time.")]
    public float m_MaxCharge = 0f;
    [SerializeField][Tooltip("Medium Shooting Speed.")]
    private float m_MedSpeed = 0f;
    [SerializeField][Tooltip("Minimum Shooting Speed.")]
    private float m_MinSpeed = 0f;
    [HideInInspector]
    public float m_TimePressed = 0f;    
    [HideInInspector]
    private bool m_WasDown = false;
    [HideInInspector]
    public int m_BulletDamage = 0;
    [SerializeField]
    [Tooltip("Multiplies the initial Damage the bullet does at Half charge.")]
    private int m_MidDmgMultiplier;
    [Tooltip("Multiplies the initial Damage the bullet does at Full charge.")]
    public int m_LaserDmgMultiplier;
    [SerializeField]
    private float m_LaserTimer;
    public float m_LaserLenght;
    public float laserWidth = 1.0f;

    private Player player;
    private GameObject laser;

    [SerializeField]
    private GameObject m_LaserChargedFX; //TODO: Instantiate this effect when max charge is true and fire button has not been released

    void Start()
    {
		//VfX
		if (chargingVFX != null)
		{
			chargingVFX.gameObject.SetActive (false);
		}
		if (chargedVFX != null) 
		{
			chargedVFX.gameObject.SetActive (false);
		}
		//VFX end
        laser = transform.FindChild("laser").gameObject;     
        player = GetComponentInParent<Player>();
        SFXManager = GetComponent<AudioManager>();

    }

    void Update()
    {	
		chargeVFXs ();	
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {			
            //Shoot if Button Up
            if (Input.GetButtonDown(player.m_PrimaryAttack + player.getControllerAsString()) && m_WasDown)
            {	
                shoot();
                m_WasDown = false;
            }
        }
    }

    public override void primaryAttack()
    {
        if (m_CoolDown <= Time.time - m_Weapon1Cooldown || m_CoolDown == 0)
        {
			
            if (m_TimePressed < m_MaxCharge)
            {     
                //Wont work with bumper as the new button           
                //m_TimePressed += Input.GetAxisRaw(player.m_PrimaryAttack + player.getControllerAsString()) * Time.deltaTime;
                m_TimePressed += Time.deltaTime;
            }
            if (m_TimePressed >= m_MaxCharge)
            {
                m_TimePressed = m_MaxCharge;
				            
			}
            m_WasDown = true;
            //Debug.Log(m_TimePressed);
        }
    }

    public override void secondaryAttack()
    {

        if (m_SecondaryCoolDown <= Time.time - m_Weapon2Cooldown || m_SecondaryCoolDown == 0)
        {
			
            GameObject bigBalloon;
            bigBalloon = (GameObject)Instantiate(m_LeftTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);

            bigBalloon.GetComponent<Rigidbody>().AddForce(bigBalloon.transform.forward * m_ProjectileSpeed02);

            m_SecondaryCoolDown = Time.time;
			//kavells new code for feedback effects
			if (secondaryflashVFX != null) 
			{
				GameObject bombMF;
				bombMF = (GameObject)Instantiate (secondaryflashVFX, transform.position, transform.rotation);
				Destroy (bombMF, 0.5f);
			}
			//kavells new code for feedback effects
        }
    }

    private void shoot()
    {
        GameObject balloon;
	//kavells new code for feedback effects
		if (primaryFlashVFX != null) 
		{
			GameObject shootMF;
			shootMF = (GameObject)Instantiate (primaryFlashVFX, transform.position, transform.rotation);
			Destroy (shootMF, 0.5f);
		}
	//kavells new code for feedback effects

        if (m_TimePressed < (m_MaxCharge / 2))
        {
            m_TimePressed = m_MinSpeed;
            //Debug.Log(m_TimePressed);
            balloon = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            assignDamage(balloon, 1);
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_TimePressed);
        //sound
            /* the sound code breaks the bow
             SFXtoPlay = SFXlowcharge[UnityEngine.Random.Range(0, SFXlowcharge.Length)];
            if (SFXPlayer != null)
            {
                AudioSource source = SFXPlayer.GetComponent<AudioSource>();
                source.clip = SFXtoPlay;
            }
            GameObject SFXtest = Instantiate(SFXPlayer, transform.position, transform.rotation) as GameObject;
            */
         //sound end

        }
        else if (m_TimePressed >= (m_MaxCharge / 2) && m_TimePressed < m_MaxCharge)
        {
            balloon = (GameObject)Instantiate(m_RightTriggerProjectile, m_FirePoint[0].gameObject.transform.position, m_FirePoint[0].gameObject.transform.rotation);
            assignDamage(balloon, m_MidDmgMultiplier);
            balloon.GetComponent<Rigidbody>().AddForce(balloon.transform.forward * m_MedSpeed * m_TimePressed);
        //sound
			/*
            SFXtoPlay = SFXmedcharge[UnityEngine.Random.Range(0, SFXmedcharge.Length)];
            if (SFXPlayer != null)
            {
                AudioSource source = SFXPlayer.GetComponent<AudioSource>();
                source.clip = SFXtoPlay;
            }
           GameObject SFXtest = Instantiate(SFXPlayer, transform.position, transform.rotation) as GameObject;
			*/
         //sound end

        }
        else
        {
			/*
        //sound
            SFXtoPlay = SFXhighcharge[UnityEngine.Random.Range(0, SFXhighcharge.Length)];
            if (SFXPlayer != null)
            {
                AudioSource source = SFXPlayer.GetComponent<AudioSource>();
                source.clip = SFXtoPlay;
						}
            GameObject SFXtest = Instantiate(SFXPlayer, transform.position, transform.rotation) as GameObject;
        //sound end
			*/
            

            StopCoroutine("LaserTimer");
            StartCoroutine("LaserTimer");                          
        }

        m_TimePressed = 0;
        m_CoolDown = Time.time;
    }

    public void assignDamage(GameObject bullet, int multiplier)
    {
        if(bullet.GetComponent<Damage>() != null)
        {
            bullet.GetComponent<Damage>().m_Damage =  m_Damage * multiplier;
        }
        else
        {
            Debug.Log("Bullet doesn't have a Damage Component");
        }
    }

    IEnumerator LaserTimer()
    {
        laser.transform.position = transform.position;
        laser.transform.rotation = transform.rotation;
        laser.GetComponent<LineRenderer>().enabled = true;
        laser.transform.parent = null;

        if (m_LaserBeamFX != null)
        {           
            GameObject laserMF;
            laserMF = (GameObject)Instantiate(m_LaserBeamFX, transform.position, transform.rotation);
            Destroy(laserMF, m_LaserTimer);
        }

        yield return new WaitForSeconds(m_LaserTimer);
        laser.GetComponent<LineRenderer>().enabled = false;
    }
    // https://unity3d.com/learn/tutorials/topics/graphics/fun-lasers


    //VFX
    public void chargeVFXs()
	{
		if (m_TimePressed > 0 && m_TimePressed < m_MaxCharge) 
		{
			if (chargingVFX != null) 
			{
				chargingVFX.gameObject.SetActive (true);
			}
		} 
		else if (m_TimePressed >= m_MaxCharge) 
		{
			if (chargingVFX != null && chargedVFX != null) 
			{
				chargingVFX.gameObject.SetActive (false);
				chargedVFX.gameObject.SetActive (true);
			}
		} 
		else 
		{
			if (chargingVFX != null && chargedVFX != null)
			{
				chargingVFX.gameObject.SetActive (false);
				chargedVFX.gameObject.SetActive (false);
			}
		}
	}
	//VFXend
}
