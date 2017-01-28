using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Enemyhealthbar : MonoBehaviour {
	private EnemyHealth E_health;
	private float EnemyHealthMax;
	[SerializeField]Image E_healthbar;

	// Use this for initialization
	void Start () {
		E_health = GetComponent<EnemyHealth>();
		EnemyHealthMax = E_health.m_EnemyHealth;
	}
	
	// Update is called once per frame
	void Update () {
		E_healthbar.fillAmount = E_health.m_EnemyHealth / EnemyHealthMax;
	}
}
