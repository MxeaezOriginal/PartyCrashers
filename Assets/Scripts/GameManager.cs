using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
    
public class GameManager : MonoBehaviour
{

    public int amountOfPlayers;
    public struct PlayerStats
    {
        public string name;
        public Player.PLAYER player;
        public float attackSpeed;
        public int gold;
        public int score;
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

    public int m_NumOfPlayers;

    public PartyBar m_PartyBarGame;

    public List<string> m_TutorialCoins;
    public List<string> m_TutorialEnemies;
    public string m_TutorialLevel = "CVG_Tut01";

    // Use this for initialization
    void Awake()
    {
        if (m_Instance == null)
        {
            DontDestroyOnLoad(gameObject);
            m_Instance = this;
            ActivateActivePlayers();
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
            if (GameObject.FindGameObjectWithTag("Partybar") != null)
            {
                GameManager.m_Instance.m_PartyBarGame = GameObject.FindGameObjectWithTag("Partybar").GetComponent<PartyBar>();
            }
            FindHearts();
            FindStatsWindowAnimator();
            m_NumOfPlayers = 1;
        }
        else
        {
            ActivateActivePlayers();
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
            if (GameObject.FindGameObjectWithTag("Partybar") != null)
            {
                GameManager.m_Instance.m_PartyBarGame = GameObject.FindGameObjectWithTag("Partybar").GetComponent<PartyBar>();
            }
            if (GameManager.m_Instance.m_Player1.name != null)
            {
                GameManager.m_Instance.loadPlayers();
            }
            FindHearts();
            FindStatsWindowAnimator();

            Destroy(gameObject);
        }
    }

    // Update is called once per frame
    void Update()
    {

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
        Debug.Log("Hey");
        for (int i = 0; i < GameManager.m_Instance.m_Players.Length; i++)
        {
            Player currentPlayer = GameManager.m_Instance.m_Players[i].GetComponent<Player>();
            currentPlayer.load();
        }
    }

    void FindStatsWindowAnimator()
    {
        for (int i = 0; i < m_Instance.m_Players.Length; ++i)
        {
            Player player = m_Instance.m_Players[i].GetComponent<Player>();
            Stats stats = player.GetComponent<Stats>();
            switch (player.m_Player)
            {
                case Player.PLAYER.P1:
                    stats.anim = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/Stats").GetComponent<Animator>();
                    break;
                case Player.PLAYER.P2:
                    stats.anim = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/Stats").GetComponent<Animator>();
                    break;
                case Player.PLAYER.P3:
                    stats.anim = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/Stats").GetComponent<Animator>();
                    break;
                case Player.PLAYER.P4:
                    stats.anim = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/Stats").GetComponent<Animator>();
                    break;
            }
        }
    }

    void FindHearts()
    {
        for (int i = 0; i < m_Instance.m_Players.Length; ++i)
        {
            Player player = m_Instance.m_Players[i].GetComponent<Player>();
            HeartSystem hearts = player.GetComponent<HeartSystem>();
            switch (player.m_Player)
            {
                case Player.PLAYER.P1:
                    hearts.heartImages[0] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 1").GetComponent<Image>();
                    hearts.heartImages[1] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 2").GetComponent<Image>();
                    hearts.heartImages[2] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 3").GetComponent<Image>();
                    hearts.heartImages[3] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 4").GetComponent<Image>();
                    hearts.heartImages[4] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 5").GetComponent<Image>();
                    hearts.heartImages[5] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 6").GetComponent<Image>();
                    hearts.heartImages[6] = GameObject.Find("Dungeon_HUD_Canvas/P1_Panel/HP bar/Heart 7").GetComponent<Image>();
                    break;
                case Player.PLAYER.P2:
                    hearts.heartImages[0] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 1").GetComponent<Image>();
                    hearts.heartImages[1] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 2").GetComponent<Image>();
                    hearts.heartImages[2] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 3").GetComponent<Image>();
                    hearts.heartImages[3] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 4").GetComponent<Image>();
                    hearts.heartImages[4] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 5").GetComponent<Image>();
                    hearts.heartImages[5] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 6").GetComponent<Image>();
                    hearts.heartImages[6] = GameObject.Find("Dungeon_HUD_Canvas/P2_Panel/HP bar/Heart 7").GetComponent<Image>();
                    break;
                case Player.PLAYER.P3:
                    hearts.heartImages[0] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 1").GetComponent<Image>();
                    hearts.heartImages[1] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 2").GetComponent<Image>();
                    hearts.heartImages[2] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 3").GetComponent<Image>();
                    hearts.heartImages[3] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 4").GetComponent<Image>();
                    hearts.heartImages[4] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 5").GetComponent<Image>();
                    hearts.heartImages[5] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 6").GetComponent<Image>();
                    hearts.heartImages[6] = GameObject.Find("Dungeon_HUD_Canvas/P3_Panel/HP bar/Heart 7").GetComponent<Image>();
                    break;
                case Player.PLAYER.P4:
                    hearts.heartImages[0] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 1").GetComponent<Image>();
                    hearts.heartImages[1] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 2").GetComponent<Image>();
                    hearts.heartImages[2] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 3").GetComponent<Image>();
                    hearts.heartImages[3] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 4").GetComponent<Image>();
                    hearts.heartImages[4] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 5").GetComponent<Image>();
                    hearts.heartImages[5] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 6").GetComponent<Image>();
                    hearts.heartImages[6] = GameObject.Find("Dungeon_HUD_Canvas/P4_Panel/HP bar/Heart 7").GetComponent<Image>();
                    break;
            }
        }
    }

    void ActivateActivePlayers()
    {
        Debug.Log("1");
        switch (m_Instance.m_NumOfPlayers)
        {
            case 1:
                GameObject.Find("Players").transform.FindChild("P1").gameObject.SetActive(true);
                Debug.Log("2");
                break;
            case 2:
                GameObject.Find("Players").transform.FindChild("P1").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P2").gameObject.SetActive(true);
                Debug.Log("3");
                break;
            case 3:
                GameObject.Find("Players").transform.FindChild("P1").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P2").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P3").gameObject.SetActive(true);
                Debug.Log("4");
                break;
            case 4:
                GameObject.Find("Players").transform.FindChild("P1").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P2").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P3").gameObject.SetActive(true);
                GameObject.Find("Players").transform.FindChild("P4").gameObject.SetActive(true);
                Debug.Log("5");
                break;
        }
    }
}
