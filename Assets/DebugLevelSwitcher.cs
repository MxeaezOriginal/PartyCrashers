using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class DebugLevelSwitcher : MonoBehaviour {

	void Update ()
    {
        if (Debug.isDebugBuild)
        {
            if (Input.GetKeyDown(KeyCode.Alpha1))
            {
                SceneManager.LoadScene("MainMenu");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha2))
            {
                SceneManager.LoadScene("Lobby_01");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha3))
            {
                SceneManager.LoadScene("Lobby_02");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha4))
            {
                SceneManager.LoadScene("Lobby_03");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha5))
            {
                SceneManager.LoadScene("DiningRoom");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha6))
            {
                SceneManager.LoadScene("BowlingRoom");
            }
            else if (Input.GetKeyDown(KeyCode.Alpha7))
            {
                SceneManager.LoadScene("KaminsRoom");
            }
        }

    }
}
