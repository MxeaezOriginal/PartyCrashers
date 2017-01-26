using UnityEngine;
using System.Collections;

public class RespawnHealth : MonoBehaviour
{

    public int m_RespawnCount = 1;
    public int m_MaxHealth = 5;
    public int m_CurrentHealth = 0;

    private Player m_Player;
    private HeartSystem m_PlayerHearts;

    void Start()
    {
        m_Player = GetComponent<Player>();
        m_PlayerHearts = m_Player.GetComponent<HeartSystem>();

        m_CurrentHealth = m_MaxHealth * m_RespawnCount;
    }


    public void damage(int damage)
    {
        m_CurrentHealth -= damage;

        Debug.Log("Current health for pinata: " + m_CurrentHealth + "/" + m_MaxHealth);
        if(m_CurrentHealth <= 0)
        {
            m_PlayerHearts.curHealth = m_PlayerHearts.maxHealth;
            m_PlayerHearts.UpdateHearts();
            m_Player.m_State = Player.State.Alive;
            m_Player.updateModel();
            m_RespawnCount++;
        }
    }

}
