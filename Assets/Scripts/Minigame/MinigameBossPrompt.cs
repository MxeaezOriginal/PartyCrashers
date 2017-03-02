using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MinigameBossPrompt : MonoBehaviour {

    private MinigameManager         m_MinigameManager;
    private MinigameRewardSelection m_MinigameRewardSelection;
    private GameObject              m_RewardCanvas;
    private GameObject              m_BossPromptCanvas;

    public bool                     m_PromptShown;

    // Use this for initialization
    void Start ()
    {
        m_MinigameManager           = GetComponent<MinigameManager>();
        m_MinigameRewardSelection   = GetComponent<MinigameRewardSelection>();

        m_RewardCanvas              = m_MinigameManager.m_RewardSelectionCanvas.gameObject;// GameObject.Find("Reward Canvas");
        m_BossPromptCanvas          = m_MinigameManager.m_BossPromptCanvas.gameObject; // GameObject.Find("BossPrompt Canvas");
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (m_MinigameManager.GetMinigameState().Equals(MinigameManager.EMinigameState.BossPrompt))
        {
            if (!m_PromptShown)
            {
                m_RewardCanvas.SetActive(false);
                m_BossPromptCanvas.SetActive(true);
                m_MinigameRewardSelection.m_ES.SetSelectedGameObject(null);
                m_MinigameRewardSelection.m_ES.enabled = false;
                m_MinigameRewardSelection.m_ES.enabled = true;
                m_MinigameRewardSelection.m_ES.SetSelectedGameObject(m_MinigameRewardSelection.m_BossPromptButtons[0].gameObject);
                m_PromptShown = true;
            }

            if(m_MinigameRewardSelection.m_IsBossFightAnswered)
            {
                //if (GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_01 ||
                //    GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_02 ||
                //    GameManager.m_Instance.m_Tutorial == GameManager.Tutorial.Lobby_03)
                //{
                //    //SceneManager.LoadScene(GameManager.m_Instance.m_Tutorial.ToString()); //ballroom blitz

                //    //Reward time
                //    if (!m_MinigameRewardSelection.m_IsFightingBoss)
                //    {
                //        GameManager.m_Instance.m_GameState = GameManager.GameState.Dungeon;
                //        SceneManager.LoadScene(GameManager.m_Instance.m_Tutorial.ToString());
                //    }
                //    else
                //    {
                //        GameManager.m_Instance.m_GameState = GameManager.GameState.Boss;
                //        SceneManager.LoadScene("KaminsBoss");
                //    }
                //}
                //else
                //{
                    if (!m_MinigameRewardSelection.m_IsFightingBoss)
                    {
                        GameManager.m_Instance.m_GameState = GameManager.GameState.Dungeon;
                        SceneManager.LoadScene(Random.Range(1, 6 + 1));
                    }
                    else
                    {
                        GameManager.m_Instance.m_GameState = GameManager.GameState.Boss;
                        SceneManager.LoadScene("KaminsBoss");
                    }
                //}
            }
        }
    }
}
