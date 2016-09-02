using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class GameManager : MonoBehaviour {

    public static GameManager m_Manager;

    public struct playerData
    {
        string name;
        float attackSpeed;
        int gold;
        int maxHealth;
        int health;
        WEAPONTYPE weaponID;
        Transform weapon;
    };

    public playerData m_Player1;
    public playerData m_Player2;
    public playerData m_Player3;
    public playerData m_Player4;

    void Awake()
    {
        if(m_Manager == null)
        {
            m_Manager = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }

	// Use this for initialization
	void Start () {
        DontDestroyOnLoad(gameObject);
    }
	
	// Update is called once per frame
	void Update () {
        if(Input.GetKeyDown(KeyCode.Q))
        {
            SceneManager.LoadScene("MainMenu");
        }
        if (Input.GetKeyDown(KeyCode.Z))
        {
            SceneManager.LoadScene("TestingRoom");
        }
    }

    void setName(playerData player, string newName)
    {
    }
    void getName(int x)
    {

    }
    void setGold(int x)
    {

    }
}
