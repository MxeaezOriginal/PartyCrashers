using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{

    public int amountOfPlayers;
    [System.Serializable]
    public struct PlayerStats
    {
        public string name;
        public Player.PLAYER player;
        public float attackSpeed;
        public int gold;
        public int score;
        public int health;
        public int maxHealth;
        public Player.Controller m_Controller;
    }
    public enum GameState
    {
        Minigame,
        Dungeon,
        Boss
    }

    public enum Tutorial
    {
        Lobby_01,
        Lobby_02,
        Lobby_03,
        Ovah
    }

    public static GameManager m_Instance;

    public GameState m_GameState;
    public Tutorial m_Tutorial;

    public GameObject m_PlayerPrefab;
    public GameObject m_MascotPrefab;

    public PlayerStats m_Player1;
    public PlayerStats m_Player2;
    public PlayerStats m_Player3;
    public PlayerStats m_Player4;

    public GameObject[] m_Players;

    public int m_NumOfPlayers;

    public PartyBar m_PartyBar;

    public string m_LevelToStart;

    // Use this for initialization
    void Awake()
    {
        if (m_Instance == null)
        {
            DontDestroyOnLoad(gameObject);
            m_Instance = this;
            if (Application.isEditor && SceneManager.GetActiveScene().name != "MainMenu")
            {
                m_LevelToStart = SceneManager.GetActiveScene().name;
                SceneManager.LoadScene(0);
            }
            m_GameState = GameState.Dungeon;
            m_Tutorial = Tutorial.Lobby_01;
            InstantiatePlayers();
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
            if (GameObject.Find("PartyBar") != null)
            {
                GameManager.m_Instance.m_PartyBar = GameObject.Find("PartyBar").GetComponentInChildren<PartyBar>();
            }
            else
            {
                Debug.Log("Partybar not found");
            }
            FindHearts();
            FindStatsWindowAnimator();
            m_NumOfPlayers = 0;
        }
        else
        {
            InstantiatePlayers();
            GameManager.m_Instance.m_Players = GameObject.FindGameObjectsWithTag("Player");
            if (GameObject.Find("PartyBar") != null)
            {
                GameManager.m_Instance.m_PartyBar = GameObject.Find("PartyBar").GetComponentInChildren<PartyBar>();
            }
            else
            {
                Debug.Log("Partybar not found");
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

    public void savePlayers()
    {
        foreach (GameObject player in GameManager.m_Instance.m_Players)
        {
            Player currentPlayer = player.GetComponent<Player>();
            currentPlayer.save();
        }
    }

    public void loadPlayers()
    {
        foreach (GameObject player in GameManager.m_Instance.m_Players)
        {
            Player currentPlayer = player.GetComponent<Player>();
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
                    stats.anim = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/Stats").GetComponent<Animator>();
                    print("Found P1 Stats");
                    break;
                case Player.PLAYER.P2:
                    stats.anim = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/Stats").GetComponent<Animator>();
                    print("Found P2 Stats");
                    break;
                case Player.PLAYER.P3:
                    stats.anim = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/Stats").GetComponent<Animator>();
                    break;
                case Player.PLAYER.P4:
                    stats.anim = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/Stats").GetComponent<Animator>();
                    break;
            }
        }
    }

    void FindHearts()
    {
        if (m_Instance.m_GameState == GameState.Dungeon)
        {
            for (int i = 0; i < m_Instance.m_Players.Length; ++i)
            {
                Player player = m_Instance.m_Players[i].GetComponent<Player>();
                HeartSystem hearts = player.GetComponent<HeartSystem>();
                switch (player.m_Player)
                {
                    case Player.PLAYER.P1:
                        hearts.heartImages[0] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 1").GetComponent<Image>();
                        hearts.heartImages[1] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 2").GetComponent<Image>();
                        hearts.heartImages[2] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 3").GetComponent<Image>();
                        hearts.heartImages[3] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 4").GetComponent<Image>();
                        hearts.heartImages[4] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 5").GetComponent<Image>();
                        hearts.heartImages[5] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 6").GetComponent<Image>();
                        hearts.heartImages[6] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P1_Panel/HP bar/Heart 7").GetComponent<Image>();
                        break;
                    case Player.PLAYER.P2:
                        hearts.heartImages[0] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 1").GetComponent<Image>();
                        hearts.heartImages[1] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 2").GetComponent<Image>();
                        hearts.heartImages[2] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 3").GetComponent<Image>();
                        hearts.heartImages[3] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 4").GetComponent<Image>();
                        hearts.heartImages[4] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 5").GetComponent<Image>();
                        hearts.heartImages[5] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 6").GetComponent<Image>();
                        hearts.heartImages[6] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P2_Panel/HP bar/Heart 7").GetComponent<Image>();
                        break;
                    case Player.PLAYER.P3:
                        hearts.heartImages[0] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 1").GetComponent<Image>();
                        hearts.heartImages[1] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 2").GetComponent<Image>();
                        hearts.heartImages[2] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 3").GetComponent<Image>();
                        hearts.heartImages[3] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 4").GetComponent<Image>();
                        hearts.heartImages[4] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 5").GetComponent<Image>();
                        hearts.heartImages[5] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 6").GetComponent<Image>();
                        hearts.heartImages[6] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P3_Panel/HP bar/Heart 7").GetComponent<Image>();
                        break;
                    case Player.PLAYER.P4:
                        hearts.heartImages[0] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 1").GetComponent<Image>();
                        hearts.heartImages[1] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 2").GetComponent<Image>();
                        hearts.heartImages[2] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 3").GetComponent<Image>();
                        hearts.heartImages[3] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 4").GetComponent<Image>();
                        hearts.heartImages[4] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 5").GetComponent<Image>();
                        hearts.heartImages[5] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 6").GetComponent<Image>();
                        hearts.heartImages[6] = GameObject.Find(m_Instance.m_GameState.ToString() + "_HUD_Canvas/P4_Panel/HP bar/Heart 7").GetComponent<Image>();
                        break;
                }
            }
        }
    }

    void InstantiatePlayers()
    {

        for (int i = 1; i <= m_Instance.m_NumOfPlayers; ++i)
        {
            string player = "P" + i;
            if (GameObject.Find("Players").transform.FindChild(player) != null)
            {
                GameObject playerParent = GameObject.Find("Players").transform.FindChild(player).gameObject;

                InstantiatePlayer(playerParent, player);
            }
        }

        /*switch (m_Instance.m_NumOfPlayers)
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
        }*/
    }

    private void InstantiatePlayer(GameObject parent, string player)
    {
        GameObject playerClone = Instantiate(m_PlayerPrefab, parent.transform.position, Quaternion.identity) as GameObject;
        playerClone.transform.parent = parent.gameObject.transform;
        playerClone.transform.localPosition = new Vector3(0, 0, 0);
        playerClone.transform.localRotation = Quaternion.identity;
        playerClone.transform.localScale = new Vector3(1, 1, 1);
        playerClone.name = parent.name;


        if (playerClone.GetComponent<Player>() != null)
        {
            Player playerComponent = playerClone.gameObject.GetComponent<Player>();

            playerComponent.m_Player = (Player.PLAYER)System.Enum.Parse(typeof(Player.PLAYER), player);
            playerComponent.save();

            switch (playerComponent.m_Model)
            {
                case Player.Model.Mascot:
                    GameObject mascotClone = Instantiate(m_MascotPrefab, parent.transform.position, Quaternion.identity) as GameObject;
                    mascotClone.transform.parent = playerClone.gameObject.transform;
                    mascotClone.transform.localPosition = new Vector3(0, 0, 0);
                    mascotClone.transform.localRotation = Quaternion.identity;
                    mascotClone.transform.localScale = new Vector3(1, 1, 1);
                    mascotClone.name = "Model";
                    playerComponent.m_Animator = mascotClone.GetComponent<Animator>();
                    break;
            }
        }
        else
        {
            Debug.Log("Error: Instantiated player doesn't have a Player Component");
        }
    }
}
