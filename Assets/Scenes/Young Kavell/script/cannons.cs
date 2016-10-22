using UnityEngine;
using System.Collections;

public class cannons : MonoBehaviour {
	[SerializeField]  Transform FirePoint_Location;
	[SerializeField] float minFireRate;
	[SerializeField] float maxFireRate;
	[SerializeField] float fireSpeed;
	[SerializeField] GameObject ProjectilePrefab;
	private float currentFireRate;



	// Update is called once per frame
	void Start () 
	{

		beginFire ();
	}
	void beginFire()
	{
		currentFireRate = Random.Range(minFireRate, maxFireRate+1);
		StartCoroutine(beginFireShot(currentFireRate));
	}
	IEnumerator beginFireShot(float settime)
	{
		yield return new WaitForSeconds(settime);
		fire ();
		beginFire ();
	}

	void fire()
	{
		GameObject dodgeball;
		dodgeball = (GameObject)Instantiate( ProjectilePrefab, FirePoint_Location.gameObject.transform.position,FirePoint_Location.gameObject.transform.rotation);
		dodgeball.GetComponent<Rigidbody>().AddForce(dodgeball.transform.forward * fireSpeed);
	}
}
