using UnityEngine;
using System.Collections;


public class PlayerController : MonoBehaviour
{
    public bool m_CantMove;
    public float m_Speed = 5.0f;
    public float m_MaxSpeed = 10f;
    public float m_Acceleration = 1f;
    public float m_Friction = 1f;
    public float m_TurnSpeed = 0.1f;
    public float m_NormalGravity = 70f;
    public float m_JumpGravity = 30f;
    public float m_Jump = 30.0f;

    public float m_MaxMovementX = 14f;
    public float m_MaxMovementZ = 18f;

    public string m_JumpButton = "Jump_";
    public string m_HorizontalButton = "JoystickLeftX_";
    public string m_VerticalButton = "JoystickLeftY_";

    public string m_HorizontalRotationButton = "JoystickRightY_";
    public string m_VerticalRotationButton = "JoystickRightX_";

    public bool m_UsingKeyboard = false;

    private float m_CurrentHorizontalRotation;
    private float m_CurrentVerticalRotation;

    private float m_CurrentAcceleration;
    private float m_CurrentMaxSpeed;
    private float m_CurrentGravity;

    private Vector3 m_MoveDir = Vector3.zero;
    private Vector3 m_Velocity = Vector3.zero;

    private bool m_StopMovementX = false;
    private bool m_StopMovementZ = false;

    //private Rigidbody rigidBody;
    CharacterController controller;

    // Use this for initialization
    void Start()
    {
        //rigidBody = gameObject.GetComponent<Rigidbody>();
        controller = gameObject.GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!m_CantMove)
        {
            checkMovement();

            if (m_StopMovementX == false && m_StopMovementZ == false)
            {
                if (!m_UsingKeyboard)
                {
                    m_MoveDir = new Vector3(Input.GetAxis(m_HorizontalButton), 0, Input.GetAxis(m_VerticalButton));
                    Debug.Log("Hey");
                }
                else
                {
                    m_MoveDir = new Vector3(Input.GetAxis("Horizontal_Keyboard"), 0, Input.GetAxis("Vertical_Keyboard"));
                }
            }
            //cant move in x direction
            else if (m_StopMovementX == true && m_StopMovementZ == false)
            {
                if (!m_UsingKeyboard)
                {
                    m_MoveDir = new Vector3(0, 0, Input.GetAxis(m_VerticalButton));
                }
                else
                {
                    m_MoveDir = new Vector3(0, 0, Input.GetAxis("Vertical_Keyboard"));
                }
            }
            //cant move in z direction
            else if (m_StopMovementX == false && m_StopMovementZ == true)
            {
                if (!m_UsingKeyboard)
                {
                    m_MoveDir = new Vector3(Input.GetAxis(m_HorizontalButton), 0, 0);
                }
                else
                {
                    m_MoveDir = new Vector3(Input.GetAxis("Horizontal_Keyboard"), 0, 0);
                }
            }
            //cant move in either direction
            else if (m_StopMovementX == true && m_StopMovementZ == true)
            {
                m_MoveDir = new Vector3(0, 0, 0);
            }
            //moveDir = transform.TransformDirection(moveDir);


            //Move

            //Jump
            if (controller.isGrounded)
            {
                if (!m_UsingKeyboard)
                {
                    if (Input.GetButtonDown(m_JumpButton))
                    {
                        m_Velocity.y = m_Jump;
                    }
                }
                else
                {
                    if (Input.GetButtonDown("Jump_Keyboard"))
                    {
                        m_Velocity.y = m_Jump;
                    }
                }
                m_CurrentGravity = 0f;
            }
            else
            {
                if (!m_UsingKeyboard)
                {
                    if (Input.GetButton(m_JumpButton))
                    {
                        m_CurrentGravity = m_JumpGravity;
                    }
                    else
                    {
                        m_CurrentGravity = m_NormalGravity;
                    }
                }
                else
                {
                    if (Input.GetButton("Jump_Keyboard"))
                    {
                        m_CurrentGravity = m_JumpGravity;
                    }
                    else
                    {
                        m_CurrentGravity = m_NormalGravity;
                    }
                }
            }

            //Horizontal
            if (controller.isGrounded)
            {
                m_CurrentAcceleration = m_MoveDir.x * m_Acceleration;
            }
            else
            {
                m_CurrentAcceleration = (m_MoveDir.x * m_Acceleration) / 2;
            }
            m_CurrentMaxSpeed = m_MoveDir.x * m_MaxSpeed;
            if (Mathf.Abs(m_Velocity.x) <= Mathf.Abs(m_CurrentMaxSpeed))
            {
                m_Velocity.x += m_CurrentAcceleration;
            }
            if (Mathf.Abs(m_Velocity.x) > Mathf.Abs(m_CurrentMaxSpeed))
            {
                m_Velocity.x -= m_Friction * Mathf.Sign(m_Velocity.x);
            }

            if (m_MoveDir.x == 0f && Mathf.Abs(m_Velocity.x) < m_Friction)
            {
                m_Velocity.x = 0f;
            }


            //Vertical
            if (controller.isGrounded)
            {
                m_CurrentAcceleration = m_MoveDir.z * m_Acceleration;
            }
            else
            {
                m_CurrentAcceleration = (m_MoveDir.z * m_Acceleration) / 2;
            }
            m_CurrentMaxSpeed = m_MoveDir.z * m_MaxSpeed;
            if (Mathf.Abs(m_Velocity.z) <= Mathf.Abs(m_CurrentMaxSpeed))
            {
                m_Velocity.z += m_CurrentAcceleration;
            }
            if (Mathf.Abs(m_Velocity.z) > Mathf.Abs(m_CurrentMaxSpeed))
            {
                m_Velocity.z -= m_Friction * Mathf.Sign(m_Velocity.z);
            }

            if (m_MoveDir.z == 0f && Mathf.Abs(m_Velocity.z) < m_Friction)
            {
                m_Velocity.z = 0f;
            }

            //Rotate / Aim


            if (!m_UsingKeyboard)
            {
                if (Input.GetAxis(m_HorizontalRotationButton) != 0 || Input.GetAxis(m_VerticalRotationButton) != 0)
                {
                    m_CurrentHorizontalRotation = Input.GetAxis(m_HorizontalRotationButton);
                    m_CurrentVerticalRotation = Input.GetAxis(m_VerticalRotationButton);
                }
                else if (Input.GetAxis(m_HorizontalButton) != 0 || Input.GetAxis(m_VerticalButton) != 0)
                {
                    m_CurrentHorizontalRotation = Input.GetAxis(m_HorizontalButton);
                    m_CurrentVerticalRotation = Input.GetAxis(m_VerticalButton) * -1f;
                }
            }
            else
            {
                if (Input.GetAxis("RotateHorizontal_Keyboard") != 0 || Input.GetAxis("RotateVertical_Keyboard") != 0)
                {
                    m_CurrentHorizontalRotation = Input.GetAxis("RotateHorizontal_Keyboard");
                    m_CurrentVerticalRotation = Input.GetAxis("RotateVertical_Keyboard") * -1f;
                }
                else if (Input.GetAxis("Horizontal_Keyboard") != 0 || Input.GetAxis("Vertical_Keyboard") != 0)
                {
                    m_CurrentHorizontalRotation = Input.GetAxis("Horizontal_Keyboard");
                    m_CurrentVerticalRotation = Input.GetAxis("Vertical_Keyboard") * -1f;
                }
            }

            //Gravity
            m_Velocity.y -= m_CurrentGravity * Time.deltaTime;
            //MOVE
            controller.Move(m_Velocity * Time.deltaTime);
            //transform.rotation = Quaternion.LookRotation(new Vector3(m_CurrentHorizontalRotation, 0, m_CurrentVerticalRotation), Vector3.up);
            float angle = Mathf.Atan2(m_CurrentHorizontalRotation * -1, m_CurrentVerticalRotation * -1) * Mathf.Rad2Deg;
            //transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(0, angle, 0), m_TurnSpeed * Time.deltaTime);


            transform.rotation = Quaternion.AngleAxis(angle * -1, Vector3.up);


        }
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
        for (int i = 0; i < GameManager.m_Instance.m_Players.Length; i++)
        {
            if (Mathf.Abs(transform.position.x - GameManager.m_Instance.m_Players[i].transform.position.x) > x) // if the distance is greater than current
            {
                x = Mathf.Abs(transform.position.x - GameManager.m_Instance.m_Players[i].transform.position.x); // update x to the new greatest distance
                otherPlayerX = GameManager.m_Instance.m_Players[i]; // set this gamobject to the other player that this player has the greatest distance with
            }

            if (Mathf.Abs(transform.position.z - GameManager.m_Instance.m_Players[i].transform.position.z) > z)
            {
                z = Mathf.Abs(transform.position.z - GameManager.m_Instance.m_Players[i].transform.position.z);
                otherPlayerZ = GameManager.m_Instance.m_Players[i];
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
