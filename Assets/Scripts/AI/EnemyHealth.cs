using UnityEngine;
using System.Collections;

public class EnemyHealth : MonoBehaviour
{
    //sound
    public GameObject SFXPlayer;
    public AudioClip[] SFX;
    private AudioClip SFXtoPlay;

	//Kavells VFX code
	public GameObject deathVFX;
	//Kavells VFX code

    public float m_EnemyHealth = 100f;
    public GameObject m_Drop;
    [HideInInspector]
    public bool isInvincible = false;
    public void Kill()
    {
        Destroy(gameObject);

        Instantiate(m_Drop, gameObject.transform.position, gameObject.transform.rotation);

        for (int i = 0; i < GameManager.m_Instance.m_Players.Length; ++i)
        {
            Player player = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
            player.m_Score += 100;
        }
    }

    public float GetEnemyHealth()
    {
        return m_EnemyHealth;
    }

    public void Damage(float health)
    {
        //Debug.Log("Damaged");
        if(isInvincible == true)
        {
        }
        if (isInvincible == false)
        {
            SFXtoPlay = SFX[Random.Range(0, SFX.Length)];

            if (SFXPlayer != null)
            {
                AudioSource source = SFXPlayer.GetComponent<AudioSource>();
                source.clip = SFXtoPlay;
            }
            GameObject SFXtest = Instantiate(SFXPlayer, transform.position, transform.rotation) as GameObject;
            m_EnemyHealth -= health;
        }
        if (m_EnemyHealth <= 0)
        {
			//Kavells VFX code
			GameObject takeDamage;
			takeDamage = (GameObject)Instantiate(deathVFX, transform.position, transform.rotation);
			Destroy(takeDamage, 1f);
			//Kavells VFX code
            Kill();
        }
    }

}
