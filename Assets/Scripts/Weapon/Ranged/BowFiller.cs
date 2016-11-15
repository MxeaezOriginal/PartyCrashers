using UnityEngine;
using UnityEngine.UI;
//using UnityEngine.SceneManagement;
using System.Collections;

// WHAT IS THIS SCRIPT IS FOR?

public class BowFiller : MonoBehaviour { 

    private float m_Max = 0;
    private float m_Current = 0;

    Bow bow;
    Image m_Bar;

    void Start()
    {
        bow = GetComponent<Bow>();
        m_Bar = GetComponent<Image>();
        m_Max = bow.m_MaxCharge;
        m_Current = bow.m_timePressed;
    }

    void Update()
    {
        m_Bar.fillAmount = m_Current / m_Max;
    }
}