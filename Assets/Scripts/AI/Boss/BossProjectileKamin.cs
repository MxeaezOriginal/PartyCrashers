using UnityEngine;
using System.Collections;

public class BossProjectileKamin : MonoBehaviour {

    public Vector3 m_ProjectileVelocity;

    private Rigidbody m_Body;

	// Use this for initialization
	void Start () {
        m_Body = GetComponent<Rigidbody>();
        m_Body.velocity = m_ProjectileVelocity;
	}
	
	// Update is called once per frame
	void Update () {
        m_Body.velocity = m_ProjectileVelocity;
	}
}
