using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class EnemyDeath : MonoBehaviour
{

    public int m_EnemyHealth = 100;
    public GameObject coin;

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "Range")
        {
            if (m_EnemyHealth > 0)
            {
                m_EnemyHealth = m_EnemyHealth - 10;
            }
            else
            {
                gameObject.SetActive(false);

                Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);

                //tutorial
                if (SceneManager.GetActiveScene().name == GameManager.m_Instance.m_TutorialLevel)
                {
                    GameManager.m_Instance.m_TutorialEnemies.Add(other.gameObject.name);
                }
            }
        }
    }

    void OnTriggerStay(Collider other)
    {
        if(Sword.attack == true)
            {
            if (other.tag == ("Melee"))
           {
                    if (m_EnemyHealth > 0)
                    {
                        m_EnemyHealth = m_EnemyHealth - 0;
                    }
                    else
                    {
                        gameObject.SetActive(false);

                        Instantiate(coin, this.gameObject.transform.position, this.gameObject.transform.rotation);
                    //tutorial
                    if (SceneManager.GetActiveScene().name == GameManager.m_Instance.m_TutorialLevel)
                    {
                        GameManager.m_Instance.m_TutorialEnemies.Add(other.gameObject.name);
                    }
                }
             }               
          }
       }
    }
