using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class CoinPickUps : MonoBehaviour {

    public enum Type
    {
        Simple,
        Death
    }
    public int gold;
    public Type type;
    private Player m_player;
    private PartyBar partyBar;

    void Start()
    {
        if (GameObject.Find("PartyBar_Game").transform.FindChild("Content") != null)
        {
            partyBar = GameObject.Find("PartyBar_Game").transform.FindChild("Content").GetComponent<PartyBar>();
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.GetComponent<Player>() != null)
        {
            m_player = other.GetComponent<Player>();
            if (other.tag == "Player")
            {
                m_player.m_Gold += gold;
                m_player.m_Score += 5;

                if (partyBar != null)
                {
                    partyBar.m_Current += gold;
                }

                if (type == Type.Death)
                {
                    //lose health
                }

                gameObject.SetActive(false);
            }

            if (SceneManager.GetActiveScene().name == GameManager.m_Instance.m_TutorialLevel)
            {
                GameManager.m_Instance.m_TutorialCoins.Add(m_player.gameObject.name);
            }
        }
        //Collectible collectible = other.GetComponent<Collectible>();

        //other.gameObject.SetActive(false);

        //tutorial
    }
}
