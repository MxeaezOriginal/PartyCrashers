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
        public Vector3 lastLocation; 
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

            //If loading back to tutorial scene, set players location to their last
            if (SceneManager.GetActiveScene().name == "CVG_Tut01")
            {
                Debug.Log("Hey");
                foreach (GameObject p in m_Instance.m_Players)
                {
                    Player player = p.GetComponent<Player>();
                    switch (player.m_Player)
                    {
                        case Player.PLAYER.P1:
                            p.transform.position = m_Instance.m_Player1.lastLocation;
                            Debug.Log("Player 1 location: X: " + p.transform.position.x + " Z: " + p.transform.position.z + " Y: " + p.transform.position.y);
                            break;
                        case Player.PLAYER.P2:
                            p.transform.position = m_Instance.m_Player2.lastLocation;
                            Debug.Log("Player 2 location: X: " + p.transform.position.x + " Z: " + p.transform.position.z + " Y: " + p.transform.position.y);
                            break;
                        case Player.PLAYER.P3:
                            p.transform.position = m_Instance.m_Player3.lastLocation;
                            break;
                        case Player.PLAYER.P4:
                            p.transform.position = m_Instance.m_Player4.lastLocation;
                            break;
                    }
                }
            }
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
