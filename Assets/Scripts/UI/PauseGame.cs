using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;


public class PauseGame : MonoBehaviour
{
    public Transform canvas;
    public Transform pauseMenu;
    public Transform optionsMenu;
    public Transform quitMenu;
    public Transform controlsMenu;
  





    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Pause();
        }
        {
            if (Time.timeScale == 0) return;
        }
    }
    public void Pause()
    {
        if (canvas.gameObject.activeInHierarchy == true)
        {
            if (pauseMenu.gameObject.activeInHierarchy == false)
            {
                pauseMenu.gameObject.SetActive(true);
                optionsMenu.gameObject.SetActive(false);
                quitMenu.gameObject.SetActive(false);
                controlsMenu.gameObject.SetActive(false);
            }
            canvas.gameObject.SetActive(true);
            Time.timeScale = 0;

        }
        else
        {
            canvas.gameObject.SetActive(false);
            Time.timeScale = 1;
           
        }
    }

    public void Resume(bool Open)
    {
        if (Open)
        {
            //optionsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
            Time.timeScale = 1;
        }
        if (!Open)
        {
            //optionsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
    }

    public void Options(bool Open)
    {
        if (Open)
        {
            optionsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
        if (!Open)
        {
            optionsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
    }


    public void Quit(bool Open)
    {
        if (Open)
        {
            quitMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
        if (!Open)
        {
            quitMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
    }

    public void QuitBackButton(bool Open)
    {
        if (Open)
        {
            quitMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
        if (!Open)
        {
            quitMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
    }

    public void QuitYesButton(bool Open)
    {
        if (Open)
        {
            SceneManager.LoadScene("MainMenu");
        }
    
    }


    public void Controls(bool Open)
    {
        if (Open)
        {
            controlsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
        if (!Open)
        {
            controlsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
    }
    

           public void OptionsBackButton(bool Open)
    {
        if (Open)
        {
            optionsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
        if (!Open)
        {
            optionsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
    }

    public void ControlsBackButton(bool Open)
    {
        if (Open)
        {
            controlsMenu.gameObject.SetActive(false);
            pauseMenu.gameObject.SetActive(true);
        }
        if (!Open)
        {
            controlsMenu.gameObject.SetActive(true);
            pauseMenu.gameObject.SetActive(false);
        }
    }
}
