using UnityEngine;
using System.Collections;

public class PlayerSFX : MonoBehaviour {
    public AudioManager SFXManager;
    public AudioSource audioSource;
    public AudioClip[] ChewSFX;
    private AudioClip SFXtoPlay;

    public float maxRandomPitch;
    public float minRandomPitch;
    private float randomPitch;
    // Use this for initialization

    void Start()
    {
        SFXManager = GetComponent<AudioManager>();
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Collectible>()) //chew
        {
            randomPitch = Random.RandomRange(maxRandomPitch, minRandomPitch);
            SFXtoPlay = ChewSFX[Random.Range(0, ChewSFX.Length)];
            audioSource.clip = SFXtoPlay;
            audioSource.pitch = randomPitch;
            SFXManager.PushMusic(SFXtoPlay);
            //audioSource.Play();
        }

    }
}
