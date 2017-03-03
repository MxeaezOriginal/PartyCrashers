using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class CollectObjects : MonoBehaviour
{
    private Player player;
    public PartyBar partyBar;

    public float duration = 1f;

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

        if(collectible != null && GameManager.m_Instance.m_GameState == GameManager.GameState.Dungeon)
        {
            //player.m_Gold += collectible.gold;
            //player.m_Score += 100;

            StopCoroutine("CountTo");
            StartCoroutine("CountTo", player.m_Score + 100);

            partyBar.m_Current += collectible.gold;

            if (collectible.type == Collectible.Type.Death)
            {
                //lose health
            }

            other.gameObject.SetActive(false);
        }
        else if(GameManager.m_Instance.m_GameState == GameManager.GameState.Minigame)
        {
            player.m_Score += 10;
        }
    }
    IEnumerator CountTo(int target)
    {
        int start = player.m_Score;
        for (float timer = 0; timer < duration; timer += Time.deltaTime)
        {
            float progress = timer / duration;
            player.m_Score = (int)Mathf.Lerp(start, target, progress);
            yield return null;
        }
        player.m_Score = target;
    }
}
