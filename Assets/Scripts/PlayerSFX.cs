using UnityEngine;
using System.Collections;

public class PlayerSFX : MonoBehaviour {
    public AudioSource audioSource;
    public AudioClip[] ChewSFX;
    private AudioClip SFXtoPlay;

    public float maxRandomPitch;
    public float minRandomPitch;
    private float randomPitch;
    // Use this for initialization


    public void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Collectible>()) //chew
        {
            randomPitch = Random.RandomRange(maxRandomPitch, minRandomPitch);
            SFXtoPlay = ChewSFX[Random.Range(0, ChewSFX.Length)];
            audioSource.clip = SFXtoPlay;
            audioSource.pitch = randomPitch;
            audioSource.Play();
        }

    }
}
