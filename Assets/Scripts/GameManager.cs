using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class GameManager : MonoBehaviour {

    public struct PlayerStats
    {
        public string name;
        public Player.PLAYER player;
        public float attackSpeed;
        public int gold;
        public int health;
        public int maxHealth;
        public WEAPONTYPE weaponID; 
    }

    public static GameManager m_Instance;

    public PlayerStats m_Player1;
    public PlayerStats m_Player2;
    public PlayerStats m_Player3;
    public PlayerStats m_Player4;

    public GameObject[] m_Players;

	// Use this for initialization
	void Awake () {
        if (m_Instance == null)
        { 
            DontDestroyOnLoad(gameObject);
            m_Instance = this;
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
        }
        else
        {
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
            GameManager.m_Instance.loadPlayers();
            Destroy(gameObject);
        }
    }
	
	// Update is called once per frame
	void Update () {

    }

    public void savePlayers()
    {
        for (int i = 0; i < GameManager.m_Instance.m_Players.Length; i++)
        {
            Player currentPlayer = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
            currentPlayer.save();
        }
    }

    public void loadPlayers()
    {
        for (int i = 0; i < GameManager.m_Instance.m_Players.Length; i++)
        {
            Player currentPlayer = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
            currentPlayer.load();
        }
    }
}
