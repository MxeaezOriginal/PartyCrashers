using UnityEngine;
using System.Collections;

public class HealthBarOrientation : MonoBehaviour {

	[SerializeField]private Camera main_Camera;

	// Use this for initialization
	void Start () {
		main_Camera = GameObject.FindGameObjectWithTag ("MainCamera").GetComponent<Camera> ();
	}
	
	// Update is called once per frame
	void Update () {
		transform.LookAt (transform.position + main_Camera.transform.rotation * Vector3.back, 
			main_Camera.transform.rotation * Vector3.up);
	}
}
