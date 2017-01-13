using UnityEngine;
using System.Collections;

public class KickMeTrap : Trap {

    public string[] m_EnemiesToAffect;

    public float m_Radius;
    public float chaseIncrease;
    public float m_ChasingTime = 5.0f;
	public bool m_used = false;
    public GameObject m_effect;

    // Use this for initialization
    void Start () {
	}

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player" && m_used == false)
        {
            if (m_effect != null)
            {
                GameObject effect;
                effect = (GameObject)Instantiate(m_effect, gameObject.transform.position, gameObject.transform.rotation);
                Destroy(effect, 3f);
            }
        }
      
    }
    public void OnTriggerStay(Collider other)
    {
		//Debug.Log("RUNING");
		if (other.tag == "Player" && m_used == false)
		{
            //EnemyAI.Instance.getDistance(50);
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, m_Radius);
			for (int i = 0; i < hitColliders.Length; ++i)
			{
				for (int j = 0; j < m_EnemiesToAffect.Length; j++)
				{
					if (hitColliders[i].gameObject.CompareTag(m_EnemiesToAffect[j]))
					{
						if (hitColliders[i].GetComponent<ChaserEnemyAi>() != null)
						{
							//Transform enemy = hitColliders[i].transform;
							ChaserEnemyAi ai = hitColliders[i].GetComponent<ChaserEnemyAi>();

							ai.m_ChaseDist += chaseIncrease;
							StartCoroutine(setToDefault(ai));
						}
					}
				}
			}
           
        }
    }

	public void OnTriggerExit(Collider other)
	{
		if (other.tag == "Player") 
		{
			m_used = true;
		}
	}

    IEnumerator setToDefault(ChaserEnemyAi ai)
    {
        yield return new WaitForSeconds(m_ChasingTime);
        ai.m_ChaseDist -= chaseIncrease;

    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, m_Radius);
    }

    //public void OnTriggerExit(Collider other)
    //{
    //    if (other.tag == "Player")
    //    {
    //        timer += Time.deltaTime;

    //        if (timer > chasingtime)
    //        {
    //            EnemyAI.Instance.getDistance(10);
    //        }
    //    }
    //}

}
