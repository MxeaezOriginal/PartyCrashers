using UnityEngine;
using System.Collections;

public class HUD_Panel : MonoBehaviour
{
    public GameObject P1_Panel;
    public GameObject P2_Panel;
    public GameObject P3_Panel;
    public GameObject P4_Panel;

    public RectTransform P1_PanelTransform;
    public RectTransform P2_PanelTransform;
    public RectTransform P3_PanelTransform;
    public RectTransform P4_PanelTransform;


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
    }

    void Start()
    {
            UpdateUIPanels();
    }

    void UpdateUIPanels()
    {

        if (GameManager.m_Instance.m_Players.Length == 1)
        {
            P1_Panel.SetActive(true);
            P2_Panel.SetActive(false);
            P3_Panel.SetActive(false);
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(0, 32);
        }
        if (GameManager.m_Instance.m_Players.Length == 2)
        {
            P1_Panel.SetActive(true);
            P2_Panel.SetActive(true);
            P3_Panel.SetActive(false);
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(-95, 32);
            P2_PanelTransform.anchoredPosition = new Vector2(95, 32);
        }
        if (GameManager.m_Instance.m_Players.Length == 3)
        {
            P1_Panel.SetActive(true);
            P2_Panel.SetActive(true);
            P3_Panel.SetActive(true);
            P4_Panel.SetActive(false);

            P1_PanelTransform.anchoredPosition = new Vector2(-210, 32);
            P2_PanelTransform.anchoredPosition = new Vector2(0, 32);
            P3_PanelTransform.anchoredPosition = new Vector2(210, 32);
        }
        if (GameManager.m_Instance.m_Players.Length == 4)
        {
            P1_Panel.SetActive(true);
            P2_Panel.SetActive(true);
            P3_Panel.SetActive(true);
            P4_Panel.SetActive(true);

            P1_PanelTransform.anchoredPosition = new Vector2(-280, 32);
            P2_PanelTransform.anchoredPosition = new Vector2(-95, 32);
            P3_PanelTransform.anchoredPosition = new Vector2(95, 32);
            P4_PanelTransform.anchoredPosition = new Vector2(280, 32);
        }
    }
}
