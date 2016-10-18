using UnityEngine;
using System.Collections;

public class HUD_Panel : MonoBehaviour
{
    //Player HUD Panels
    public GameObject P1_Panel;
    public GameObject P2_Panel;
    public GameObject P3_Panel;
    public GameObject P4_Panel;
    //RectTransofrm of these panels
    public RectTransform P1_PanelTransform;
    public RectTransform P2_PanelTransform;
    public RectTransform P3_PanelTransform;
    public RectTransform P4_PanelTransform;
    //Player Stats Windows
    public RectTransform P1_StatsWindow;
    public RectTransform P2_StatsWindow;
    public RectTransform P3_StatsWindow;
    public RectTransform P4_StatsWindow;

    void Awake()
    {
        P1_Panel = GameObject.Find("UI Canvas/P1_Panel");
        P2_Panel = GameObject.Find("UI Canvas/P2_Panel");
        P3_Panel = GameObject.Find("UI Canvas/P3_Panel");
        P4_Panel = GameObject.Find("UI Canvas/P4_Panel");

        P1_PanelTransform = GameObject.Find("UI Canvas/P1_Panel").GetComponent<RectTransform>();
        P2_PanelTransform = GameObject.Find("UI Canvas/P2_Panel").GetComponent<RectTransform>();
        P3_PanelTransform = GameObject.Find("UI Canvas/P3_Panel").GetComponent<RectTransform>();
        P4_PanelTransform = GameObject.Find("UI Canvas/P4_Panel").GetComponent<RectTransform>();

        P1_StatsWindow = GameObject.Find("UI Canvas/P1_StatsWindow").GetComponent<RectTransform>();
        P2_StatsWindow = GameObject.Find("UI Canvas/P2_StatsWindow").GetComponent<RectTransform>();
        P3_StatsWindow = GameObject.Find("UI Canvas/P3_StatsWindow").GetComponent<RectTransform>();
        P4_StatsWindow = GameObject.Find("UI Canvas/P4_StatsWindow").GetComponent<RectTransform>();
    }

    void Start()
    {
        UpdateUIPanels();
    }

    void UpdateUIPanels()
    {

        if (GameManager.m_Instance.m_Players.Length == 1)
        {
            P2_Panel.SetActive(false);
            P3_Panel.SetActive(false);
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(0, 32);
            //StatsWindow(s)
            P1_StatsWindow.anchoredPosition = new Vector2(360, 60);
        }
        if (GameManager.m_Instance.m_Players.Length == 2)
        {
            P3_Panel.SetActive(false);
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(-95, 32);
            P2_PanelTransform.anchoredPosition = new Vector2(95, 32);
            //StatsWindow(s)
            P1_StatsWindow.anchoredPosition = new Vector2(265, 60);
            P2_StatsWindow.anchoredPosition = new Vector2(455, 60);
        }
        if (GameManager.m_Instance.m_Players.Length == 3)
        {
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(-210, 32);
            P2_PanelTransform.anchoredPosition = new Vector2(0, 32);
            P3_PanelTransform.anchoredPosition = new Vector2(210, 32);
            //StatsWindow(s)
            P1_StatsWindow.anchoredPosition = new Vector2(150, 60);
            P2_StatsWindow.anchoredPosition = new Vector2(360, 60);
            P3_StatsWindow.anchoredPosition = new Vector2(570, 60);
        }
        if (GameManager.m_Instance.m_Players.Length == 4)
        {
            return;
        }
    }
}
