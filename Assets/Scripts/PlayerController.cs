using UnityEngine;
using System.Collections;


public class PlayerController : MonoBehaviour
{

    public float m_Speed = 5.0f;
    public float m_TurnSpeed = 5.0f;
    public float m_Gravity = 100f;
    public float m_Jump = 30.0f;

    public float m_MaxMovementX = 14f;
    public float m_MaxMovementZ = 18f;

    public string m_JumpButton = "Jump_";
    public string m_HorizontalButton = "JoystickLeftX_";
    public string m_VerticalButton = "JoystickLeftY_";

    public string m_HorizontalRotationButton = "JoystickRightY_";
    public string m_VerticalRotationButton = "JoystickRightX_";

    private float m_CurrentHorizontalRotation;
    private float m_CurrentVerticalRotation;

    private Vector3 m_MoveDir = Vector3.zero;

    private GameObject[] m_Players;

    private bool m_StopMovementX = false;
    private bool m_StopMovementZ = false;

    //private Rigidbody rigidBody;
    CharacterController controller;

    // Use this for initialization
    void Start()
    {
        //rigidBody = gameObject.GetComponent<Rigidbody>();
        controller = gameObject.GetComponent<CharacterController>();
        m_Players = GameObject.FindGameObjectsWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        checkMovement();
        if (controller.isGrounded)
        {
            if (m_StopMovementX == false && m_StopMovementZ == false)
            {
                m_MoveDir = new Vector3(Input.GetAxis(m_HorizontalButton), 0, Input.GetAxis(m_VerticalButton));
            }
            //cant move in x direction
            else if(m_StopMovementX == true && m_StopMovementZ == false)
            {
                m_MoveDir = new Vector3(0, 0, Input.GetAxis(m_VerticalButton));
            }
            //cant move in z direction
            else if(m_StopMovementX == false && m_StopMovementZ == true)
            {
                m_MoveDir = new Vector3(Input.GetAxis(m_HorizontalButton), 0, 0);
            }
            //cant move in either direction
            else if(m_StopMovementX == true && m_StopMovementZ == true)
            {
                m_MoveDir = new Vector3(0, 0, 0);
            }
            //moveDir = transform.TransformDirection(moveDir);
            m_MoveDir *= m_Speed;
            if (Input.GetButton(m_JumpButton))
                m_MoveDir.y = m_Jump;

        }
        if (Input.GetAxis(m_HorizontalRotationButton) != 0)
        {
            m_CurrentHorizontalRotation = Input.GetAxis(m_HorizontalRotationButton);
        }
        if(Input.GetAxis(m_VerticalRotationButton) != 0)
        {
            m_CurrentVerticalRotation = Input.GetAxis(m_VerticalRotationButton);
        }
        m_MoveDir.y -= m_Gravity * Time.deltaTime;
        controller.Move(m_MoveDir * Time.deltaTime);
        //transform.rotation = Quaternion.LookRotation(new Vector3(m_CurrentHorizontalRotation, 0, m_CurrentVerticalRotation), Vector3.up);
        float angle = Mathf.Atan2(m_CurrentHorizontalRotation, m_CurrentVerticalRotation) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(0, angle, 0), m_TurnSpeed * Time.deltaTime);
    }

    void LateUpdate()
    {
        Vector3 pos = Camera.main.WorldToViewportPoint(transform.position);
        pos.x = Mathf.Clamp01(pos.x);
        pos.y = Mathf.Clamp01(pos.y);
        transform.position = Camera.main.ViewportToWorldPoint(pos);
    }

    void checkMovement()
    {
        float x = -1;
        float z = -1;

        GameObject otherPlayerX = null;
        GameObject otherPlayerZ = null;

        //Loop through players and set x to greatest x distance, and y to greatest y distance between current player and any other player
        for (int i = 0; i < m_Players.Length; i++)
        {
            if (Mathf.Abs(transform.position.x - m_Players[i].transform.position.x) > x) // if the distance is greater than current
            {
                x = Mathf.Abs(transform.position.x - m_Players[i].transform.position.x); // update x to the new greatest distance
                otherPlayerX = m_Players[i]; // set this gamobject to the other player that this player has the greatest distance with
            }

            if (Mathf.Abs(transform.position.z - m_Players[i].transform.position.z) > z)
            {
                z = Mathf.Abs(transform.position.z - m_Players[i].transform.position.z);
                otherPlayerZ = m_Players[i];
            }
        }

        if (x >= m_MaxMovementX) // if the greatest distance if greater than what is allowed, stop movement
        {
            m_StopMovementX = true;

            float playerXInput = Input.GetAxis(m_HorizontalButton) * m_Speed; // sets this variable to the current input the player is giving for horizontal movement

            if (Mathf.Abs((transform.position.x + playerXInput) - otherPlayerX.transform.position.x) < m_MaxMovementX) // if the input the player is giving plus his current x position is less than max movement
            {
                m_StopMovementX = false; // the player is allowed to move again because they will be less than the max movement allowed
            }
        }
        else // if the greatest distance is still lower than what is allowed the player can move
        {
            m_StopMovementX = false;
        }

        if (z >= m_MaxMovementZ)
        {
            m_StopMovementZ = true;

            float playerZInput = Input.GetAxis(m_VerticalButton) * m_Speed; //Players input for Z axis

            if (Mathf.Abs((transform.position.z + playerZInput) - otherPlayerZ.transform.position.z) < m_MaxMovementZ)
            {
                m_StopMovementZ = false;
            }
        }
        else
        {
            m_StopMovementZ = false;
        }
    }
}
