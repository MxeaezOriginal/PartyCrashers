using UnityEngine;
using System.Collections;

public class Enemyhealthbar : MonoBehaviour {
	private EnemyHealth E_health;
	private float EnemyHealthMax;
	// Use this for initialization
	void Start () {
		E_health = GetComponent<EnemyHealth>();
		EnemyHealthMax = E_health.m_EnemyHealth;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
