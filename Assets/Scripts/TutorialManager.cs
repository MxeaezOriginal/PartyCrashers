using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class TutorialManager : MonoBehaviour {

    public string m_CoinList = "R1_Coins";
    public string m_EnemyList = "Enemies";

	// Use this for initialization
	void Start () {
        //If loading back to tutorial scene, set players location to their last
            foreach (GameObject p in GameManager.m_Instance.m_Players)
            {
                Player player = p.GetComponent<Player>();
                switch (player.m_Player)
                {
                    case PlayerDetection.P1:
                        p.transform.position = GameManager.m_Instance.m_Player1.lastLocation;
                        break;
                    case PlayerDetection.P2:
                        p.transform.position = GameManager.m_Instance.m_Player2.lastLocation;
                        break;
                    case PlayerDetection.P3:
                        p.transform.position = GameManager.m_Instance.m_Player3.lastLocation;
                        break;
                    case PlayerDetection.P4:
                        p.transform.position = GameManager.m_Instance.m_Player4.lastLocation;
                        break;
                }
            }

        if (GameObject.Find(m_CoinList) != null)
        {
            Transform coins = GameObject.Find(m_CoinList).transform;

            foreach (Transform child in coins)
            {
                foreach (string name in GameManager.m_Instance.m_TutorialCoins)
                {
                    if (child.gameObject.name == name)
                    {
                        child.gameObject.SetActive(false);
                    }
                }
            }
        }

        if (GameObject.Find(m_EnemyList) != null)
        {
            Transform enemies = GameObject.Find(m_EnemyList).transform;
            foreach (Transform child in enemies)
            {
                foreach (string name in GameManager.m_Instance.m_TutorialEnemies)
                {
                    if (child.gameObject.name == name)
                    {
                        child.gameObject.SetActive(false);
                    }
                }
            }
        }
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
