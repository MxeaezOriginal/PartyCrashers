using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class BowFiller : Bow
{
    private float m_Max = 0;
    private float m_Current = 0;

    Image m_Bar;

    void Start()
    {
        m_Bar = GetComponent<Image>();
        m_Max = m_MaxSpeed;
        m_Current = m_timePressed;
    }

    void Update()
    {
        m_Bar.fillAmount = m_Current / m_Max;
    }
}