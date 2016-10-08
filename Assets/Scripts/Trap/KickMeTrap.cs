using UnityEngine;
using System.Collections;

public class KickMeTrap : Trap {

    public string[] m_EnemiesToAffect;

    public float m_Radius;
    public float chaseIncrease;
    public float m_ChasingTime = 5.0f;

	// Use this for initialization
	void Start () {
	}

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            //EnemyAI.Instance.getDistance(50);
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, m_Radius);
            for (int i = 0; i < hitColliders.Length; ++i)
            {
                for (int j = 0; j < m_EnemiesToAffect.Length; j++)
                {
                    if (hitColliders[i].gameObject.CompareTag(m_EnemiesToAffect[j]))
                    {
                        //Transform enemy = hitColliders[i].transform;
                        EnemyAI ai = hitColliders[i].GetComponent<EnemyAI>();

                        ai.m_ChaseDist += chaseIncrease;
                        StartCoroutine(setToDefault(ai));
                    }
                }
            }
        }
    }

    IEnumerator setToDefault(EnemyAI ai)
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
