using UnityEngine;
using System.Collections;

public class BossMovement : MonoBehaviour {

    GameObject[] players;
    public float StartPosX = 0;
    public float StartPosY = 1;
    public float StartPosZ = 100;
    public float RunAwayDistance = 5;
    public float ChaseDistance = 10;
    public float StayDistance = 20;
    public float m_Distance;
    public float BossRunAwaySpeed = 0.01f;
    public float BossChaseSpeed = 0.005f;

    public Vector3 StartPos;

    Vector3 MoveBackward;
    public Vector3 Flee;
	// Use this for initialization
	void Start () {
        StartPos = new Vector3(StartPosX, StartPosY, StartPosZ);
        players = GameManager.m_Instance.m_Players;
        transform.position = new Vector3(StartPosX, StartPosY, StartPosZ);
        players = GameObject.FindGameObjectsWithTag("Player");
    }
	
	// Update is called once per frame
	void Update () {
        float NewX = transform.position.x;
        float NewY = transform.position.y;
        float NewZ = transform.position.z;

        //Vector3 MoveToward;

        // Get closest player
        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                MoveBackward = transform.position - players[i].transform.position;
                Flee = transform.position + MoveBackward;
                //MoveToward = players[i].transform.position - transform.position;
                if (m_Distance <= RunAwayDistance)
                {
                    transform.position = Vector3.Lerp(transform.position, Flee, BossRunAwaySpeed);
                    //transform.position += MoveBackward * BossMoveSpeed * Time.deltaTime;
                }
                else if (m_Distance > ChaseDistance && m_Distance < StayDistance)
                {
                    transform.position = Vector3.Lerp(transform.position, players[i].transform.position, BossChaseSpeed);
                    //transform.position += MoveToward * BossMoveSpeed * Time.deltaTime;
                }
                else if (m_Distance >= StayDistance)
                {
                    transform.position = Vector3.Lerp(transform.position, StartPos, BossRunAwaySpeed);
                }
            }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < m_Distance)
                {
                    m_Distance = Vector3.Distance(players[i].transform.position, transform.position);
                    MoveBackward = transform.position - players[i].transform.position;
                    Flee = transform.position + MoveBackward;
                    //MoveToward = players[i].transform.position - transform.position;
                    if (m_Distance <= RunAwayDistance)
                    {
                        transform.position = Vector3.Lerp(transform.position, Flee, BossRunAwaySpeed);
                        //transform.position += MoveBackward * BossMoveSpeed * Time.deltaTime;
                    }
                    else if (m_Distance > ChaseDistance && m_Distance < StayDistance)
                    {
                        transform.position = Vector3.Lerp(transform.position, players[i].transform.position, BossChaseSpeed);
                        //transform.position += MoveToward * BossMoveSpeed * Time.deltaTime;
                    }
                    else if (m_Distance >= StayDistance)
                    {
                        transform.position = Vector3.Lerp(transform.position, StartPos, BossRunAwaySpeed);
                    }
                }
            }
        }
    }
}
