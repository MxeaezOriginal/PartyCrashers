using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class CollectObjects : MonoBehaviour
{
    private Player player;
    public PartyBar partyBar;

    void Start()
    {
        player = gameObject.GetComponent<Player>();
        if (GameManager.m_Instance.m_PartyBar != null)
        {
            partyBar = GameManager.m_Instance.m_PartyBar;
        }
        else
        {
            Debug.LogError("Partybar Not Found");
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        Collectible collectible = other.GetComponent<Collectible>();

        if(collectible != null)
        {
            player.m_Gold += collectible.gold;
            player.m_Score += 5;

            if (partyBar != null)
            {
                partyBar.m_Current += collectible.gold;
            }

            if (collectible.type == Collectible.Type.Death)
            {
                //lose health
            }

            other.gameObject.SetActive(false);
            

            //tutorial
        }

    }
}
