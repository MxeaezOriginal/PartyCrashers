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

    public Image[] heartImages = new Image[7];
    public Sprite[] heartSprites = new Sprite[3];

    //Player player;

    void Awake()
    {
        //player = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();
    }

    void Start()
    {

        curHealth = startHearts * healthPerHeart;
        maxHealth = maxHearts * healthPerHeart;

        CheckHealthAmount();

    }

    void CheckHealthAmount()//shuts down couple hearts ar Start()
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
            }
        }
        UpdateHearts();
    }

    void UpdateHearts()
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

    public void TakeDamage(int damage)
    {
        curHealth -= damage;
        curHealth = Mathf.Clamp(curHealth, 0, startHearts * healthPerHeart);
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

        //Healing if adding a heart container
        //curHealth = startHearts * healthPerHeart;
        //maxHealth = maxHearts * healthPerHeart;

        CheckHealthAmount();
    }

    public void IsDead()
    {
        if (curHealth == 0)
            print("Oh no cupcake, you died!");
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
