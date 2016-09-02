using UnityEngine;
using System.Collections;

public class ProjectileEnemy : MonoBehaviour {

    public Transform[] players;
    public float range = 50.0f;
    float dis;
    public float bulletImpulse = 20.0f;
    Transform target;
    private bool onRange = false;
    float timer;
    public float bulletwaitingtime = 3.0f;
    public Rigidbody projectile;

    void Start()
    {

    }

    void Shoot()
    {
            Rigidbody bullet = (Rigidbody)Instantiate(projectile, transform.position + transform.forward, transform.rotation);
            bullet.AddForce(transform.forward * bulletImpulse, ForceMode.Impulse);

            Destroy(bullet.gameObject, 1.0f);
    }

    void Update()
    {
        for (int i = 0; i < players.Length;i++ )
        {
            if(i == 0)
            {
                dis = Vector3.Distance(transform.position, players[i].position);
                target = players[i];
            }
            
            else 
            {
                if (Vector3.Distance(transform.position, players[i].position) < dis)
                {
                    dis = Vector3.Distance(transform.position, players[i].position);
                    target = players[i];
                }
              
                //transform.LookAt(target);
            }

            if (dis < range)
            {
                transform.LookAt(target);
                timer += Time.deltaTime;
                if(timer > bulletwaitingtime)
                {
                    Shoot();
                    timer = 0;
                }
            }

        }
            
    }
}
