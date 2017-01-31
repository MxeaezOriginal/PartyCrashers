using UnityEngine;
using System.Collections;

public class BGMSelection : MonoBehaviour {

    public AudioSource audio;
    private AudioClip currentMusic;
    public AudioClip[] BGMList;
    public bool swaptest;
    // Use this for initialization
    void Start()
    {
        
        audio.Play();
    }

    // Update is called once per frame
    void Update()
    {
        if (swaptest)
        {
            swaptest = false;
            playRandomMusic();
        }
        if (!audio.isPlaying)
        {
            swaptest = false;
            playRandomMusic();
        }
            
    }
    void playRandomMusic()
    {
        currentMusic = BGMList[Random.Range(0, BGMList.Length)];
        audio.clip = currentMusic;
        audio.Play();
    }
}
