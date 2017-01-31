using UnityEngine;
using System.Collections;

public class PlayerSFX : MonoBehaviour {
    public AudioSource audioSource;
    public AudioClip[] ChewSFX;
    private AudioClip SFXtoPlay;
    // Use this for initialization


    public void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Collectible>()) //chew
        {
            SFXtoPlay = ChewSFX[Random.Range(0, ChewSFX.Length)];
            audioSource.clip = SFXtoPlay;
            audioSource.Play();
        }

    }
}
