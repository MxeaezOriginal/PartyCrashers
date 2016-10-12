using UnityEngine;
using System.Collections;

public class Test : MonoBehaviour
{

    public GameObject explosionhehexd;
    public GameObject hitenemyhehexd;

    public void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            GameObject p = other.gameObject;
            Player player = p.GetComponent<Player>();
            HeartSystem hearts = player.GetComponent<HeartSystem>();

            GameObject bloodeffect = (GameObject)Instantiate(hitenemyhehexd, p.gameObject.transform.position, p.gameObject.transform.rotation);
            Destroy(bloodeffect, 2);

            hearts.TakeDamage(1);
            if(hearts.IsDead())
            {
                p.SetActive(false);

                GameObject effect = (GameObject)Instantiate(explosionhehexd, p.gameObject.transform.position, p.gameObject.transform.rotation);
                Destroy(effect, 2);

            }

            Destroy(gameObject);
        }
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }


}
