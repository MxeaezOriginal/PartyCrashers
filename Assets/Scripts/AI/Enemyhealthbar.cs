using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Enemyhealthbar : MonoBehaviour {
	private EnemyHealth E_health;
	private float EnemyHealthMax;
	[SerializeField]Image E_healthbar;
	[SerializeField]Canvas E_healthCanvas;

	// Use this for initialization
	void Start () {
		E_health = GetComponent<EnemyHealth>();
		EnemyHealthMax = E_health.m_EnemyHealth;
	}
	
	// Update is called once per frame
	void Update () 
	{
		E_healthbar.fillAmount = E_health.m_EnemyHealth / EnemyHealthMax;
		HideBar ();
		Barcolor ();
	}

	void HideBar()
	{
		if (E_health.m_EnemyHealth != EnemyHealthMax) 
		{
			E_healthCanvas.enabled = true;
		} 
		else 
		{
			E_healthCanvas.enabled = false;
		}	
	}

	void Barcolor()
	{
		if (E_health.m_EnemyHealth >= EnemyHealthMax / 2) 
		{
			E_healthbar.color = Color.green;
		} 
		else if (E_health.m_EnemyHealth < EnemyHealthMax / 2 && E_health.m_EnemyHealth >= EnemyHealthMax / 4) 
		{
			E_healthbar.color = Color.yellow;
		} 
		else 
		{
			E_healthbar.color = Color.red;
		}
	}
}
