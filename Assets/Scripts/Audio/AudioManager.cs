using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AudioManager : MonoBehaviour {

    public static AudioManager m_Instance;
    public AudioSource m_AudioManager;
    private AudioClip m_CurMusic;
    private float m_pitch;
    private List<AudioClip> m_RandomMusicList;
    public float m_DelayTime;
	// Use this for initialization
	void Start () {
        m_AudioManager = GetComponent<AudioSource>();
        m_RandomMusicList = new List<AudioClip>();
        ResetMusicList();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(m_RandomMusicList != null)
        {
            if (!m_AudioManager.isPlaying)
            {
                if (m_RandomMusicList.Count <= 1 && m_RandomMusicList.Count > 0)
                {
                    Debug.Log("FIRST");
                    m_CurMusic = m_RandomMusicList[0];
                    m_AudioManager.clip = m_CurMusic;
                    m_AudioManager.pitch = m_pitch;
                    m_AudioManager.Play();
                    //ResetMusicList();
                }

                if (m_RandomMusicList.Count > 1)
                {
                    Debug.Log("Second");
                    playRandomMusic();
                }
            }

            if (m_AudioManager.isPlaying)
            {
                WaitAudioClip();
            }
        }    
	}

    void playRandomMusic()
    {
        m_CurMusic = m_RandomMusicList[Random.Range(0, m_RandomMusicList.Count)];
        m_AudioManager.clip = m_CurMusic;
        m_AudioManager.pitch = m_pitch;
        m_AudioManager.Play();
        ResetMusicList();
    }

    IEnumerator WaitAudioClip()
    {
        while(m_AudioManager.isPlaying)
        {
            yield return null;
        }

        yield return new WaitForSeconds(m_DelayTime);
        playRandomMusic();
    }

    public void PushMusic(AudioClip ac)
    {
        Debug.Log(ac.ToString());
        m_RandomMusicList.Add(ac);
    }

    void ResetMusicList()
    {
        m_RandomMusicList.Clear();
    }
    //public void GetPitch(float p)
    //{
    //    Debug.Log("get pitch");
    //    m_pitch = p;
    //}
}
