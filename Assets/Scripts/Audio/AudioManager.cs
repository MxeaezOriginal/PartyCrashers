using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {

    public AudioSource m_AudioManager;
    private AudioClip m_CurMusic;
    public AudioClip[] m_RandomMusicList;
    public float m_DelayTime;
    public float m_timer;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	    
	}

    void playMusic()
    {
        m_CurMusic = m_RandomMusicList[Random.Range(0, m_RandomMusicList.Length)];
        m_AudioManager.clip = m_CurMusic;
        m_AudioManager.Play();
    }
}
