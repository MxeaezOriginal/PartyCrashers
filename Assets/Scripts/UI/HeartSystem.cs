using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HeartSystem : MonoBehaviour
{

    private int maxHearts = 7;
    private int startHearts = 5;
    public int maxHealth;
    public int curHealth;
    private int healthPerHeart = 2;
    public float lastDamage = 0;
    public static HeartSystem m_Instance;

    public Image[] heartImages = new Image[7];
    public Sprite[] heartSprites = new Sprite[3];

	//kavells new code for feedback effects
	public GameObject takeHitEffect;
	public GameObject deathVFX;
	//kavells new code for feedback effects

    private Player m_Player;

    void Awake()
    {
        m_Player = GetComponent<Player>();
    }

    void Start()
    {

        curHealth = startHearts * healthPerHeart;
        maxHealth = maxHearts * healthPerHeart;

        CheckHealthAmount();

    }

    void CheckHealthAmount()//shuts down couple hearts at Start()
    {
        if (GameManager.m_Instance.m_GameState == GameManager.GameState.Dungeon)
        {
            for (int i = 0; i < maxHearts; i++)
            {
                if (startHearts <= i)
                {
                    heartImages[i].enabled = false;
                }
                else
                {
                    heartImages[i].enabled = true;
                    //print("wtf" + gameObject.name);
                }
            }
            UpdateHearts();
        }
    }

    public void UpdateHearts()
    {
        if (GameManager.m_Instance.m_GameState == GameManager.GameState.Dungeon)
        {
            bool empty = false;
            int i = 0;

            foreach (Image image in heartImages)
            {
                if (empty)
                {
                    image.sprite = heartSprites[0];//0 is an empty heart.
                }
                else
                {
                    i++;
                    if (curHealth >= i * healthPerHeart)
                    {
                        image.sprite = heartSprites[heartSprites.Length - 1];//.Length - 1 is a full heart
                    }
                    else
                    {
                        int currentHeartHealth = (int)(healthPerHeart - (healthPerHeart * i - curHealth));
                        int healthPerImage = healthPerHeart / (heartSprites.Length - 1);
                        int imageIndex = currentHeartHealth / healthPerImage;

                        image.sprite = heartSprites[imageIndex];
                        empty = true;
                    }
                }
            }
        }
    }

    public void TakeDamage(int damage)
    {
        curHealth -= damage;
        curHealth = Mathf.Clamp(curHealth, 0, startHearts * healthPerHeart);
		//kavells new code for feedback effects
		if (takeHitEffect != null) 
		{
			GameObject takeDamage;
			takeDamage = (GameObject)Instantiate (takeHitEffect, transform.position, Random.rotation);
			Destroy (takeDamage, 0.5f);
		}
        if(curHealth == 0)
        {
            if (m_Player.m_State == Player.State.Alive)
            {
                m_Player.respawn();
            }
            //Kavells VFX code
            if (deathVFX != null)
            {
                GameObject takeDamage;
                takeDamage = (GameObject)Instantiate(deathVFX, transform.position, transform.rotation);
                Destroy(takeDamage, 1f);
            }
            //Kavells VFX code
        }
        //kavells new code for feedback effects
        UpdateHearts();
    }

    public void Heal(int heal)
    {
        curHealth += heal;
        curHealth = Mathf.Clamp(curHealth, 0, startHearts * healthPerHeart);
        UpdateHearts();
    }

    public void AddHeart()
    {
        startHearts++;
        startHearts = Mathf.Clamp(startHearts, 0, maxHearts);
        Heal(2);
        //Healing if adding a heart container
        //curHealth = startHearts * healthPerHeart;
        //maxHealth = maxHearts * healthPerHeart;

        CheckHealthAmount();
    }

    public bool IsDead()
    {
        if (curHealth == 0)
        {
            print("Oh no cupcake, you died!");
            return true;
        }
        return false;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            TakeDamage(1);
        }
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            Heal(1);
        }
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            AddHeart();
        }
    }

}
