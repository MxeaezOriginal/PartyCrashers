using UnityEngine;
using UnityEngine.SceneManagement;
//using UnityEditor;
using System.Collections;


public class AdvancedBossAi : MonoBehaviour
{

    //Stats
    public float m_BaseMaxHealth;
    public float m_NumOfPlayersHealthMultiplier;
    private float m_Health;

    [Range(0.1f, 0.9f)]
    public float m_Difficulty;

    //Projectile
    public GameObject m_Projectile;
    public GameObject m_Lightning;
    private GameObject[] ProjectilesArray = { null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null };
    private GameObject[] LightningArray = { null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null };
    public int m_BulletsToShoot = 5;
    private int m_NumberOfBullets;

    

    //Frame
    private int frame;

    //States
    enum states
    {
        //Miscellaneous States
        idle,
        hurt,
        dead,
        teleport,
        //Attack states
        dash,
        earthquake,
        shoot,
        //Count... idunno why I put this here I never use it
        count
    }
    states currentState;
    states state;
    //Taking damage
    private bool m_Invincible;
    private float m_DamageTaken;
    private float m_KnockBackMagnitude;
    private float m_StunTime;
    private bool attacked = false;
    private bool attackerLeft = true;
    //Effects
    public GameObject m_HurtEffect;

    //Movement
    private Rigidbody m_Body;
    private Vector3 m_Velocity;
    public float m_Friction;

    //Get the players
    protected GameObject[] players;
    private Transform[] playerPositionsArray = { null, null, null, null };

    //Torches for knowing how big the room is
    public Transform[] torches;

    //Dashing bullshit
    Transform m_DashTarget;
    private Vector3 lookingDirection;

    // Use this for initialization
    void Start()
    {
        //Set framerate
        Application.targetFrameRate = 60;

        //Set the state
        state = states.idle;
        currentState = state;

        //Make surre boss isn't invincible 
        m_Invincible = false;
        //Set frame to some large negative number so the boss stays in his idle state a bit longer
        frame = -100;
        //Get the number of players
        players = GameManager.m_Instance.m_Players;

        //Set the health appropriately to match the number of players
        m_Health = m_BaseMaxHealth * (players.Length * m_NumOfPlayersHealthMultiplier);
        
        //Get the rigidbody
        m_Body = GetComponent<Rigidbody>();

        //Effect
        Instantiate(m_HurtEffect, transform.position, transform.rotation);
        m_HurtEffect.SetActive(false);

        //Projectiles
        for (int i = 0; i < ProjectilesArray.Length; i++)
        {
            ProjectilesArray[i] = (GameObject)Instantiate(m_Projectile, transform.position, transform.rotation);
            ProjectilesArray[i].gameObject.SetActive(false);
        }
        for (int i = 0; i < LightningArray.Length; i++)
        {
            LightningArray[i] = (GameObject)Instantiate(m_Lightning, transform.position, transform.rotation);
            LightningArray[i].gameObject.SetActive(false);
        }
        //Debug errors
        if (m_Projectile == null)
        {
            Debug.LogError("Boss projectile object not assigned to boss");
        }
        if (m_Lightning == null)
        {
            Debug.LogError("Lightning object not assigned to boss");
        }
        if(m_HurtEffect == null)
        {
            Debug.LogError("Hurt effect object not assigned to boss");
        }
        //Torches for the boss so he knows where to teleport
        if (torches[0] == null) Debug.LogError("First Torch not assigned to boss");
        if (torches[1] == null) Debug.LogError("Second Torch not assigned to boss");
        if (torches[2] == null) Debug.LogError("Third Torch not assigned to boss");
    }

    // Update is called once per frame
    void Update()
    {
        //Switch states
        switch (state)
        {
            case states.idle: Idle(); break;
            case states.hurt: Hurt(m_DamageTaken, m_StunTime); break;
            case states.teleport: Teleport(60, 60); break;
            //Attacks
            case states.shoot: BasicShoot(10, Mathf.RoundToInt(60 * m_Difficulty)); break;
            case states.dash: Dash(70, 10, 10); break;
            case states.earthquake: Earthquake(60, 60); break;
        }
        //Manage frame
        frame++;
        if (frame > 1000000) //Just in case the frame variable gets too big which I doubt it ever will BUT WHATEVER poopy butts stuff
        {
            frame = 0;
        }

        Move(); //Call the move function so the guy actually moves based on it's velocity

        //Dies
        if (m_Health <= 0)
        {
            //Load main menu
            SceneManager.LoadScene(0);
        }
    }

    void LateUpdate()
    {
        if (state != currentState) //Reset the frame variable back to zero every time the boss changes it's state
        {
            frame = 0;
            currentState = state;
        }
    }
    void Move()
    {
        m_Body.velocity = m_Velocity; //The rigidBody's velocity will always be set to the local Velocity
    }

    void Friction(float friction)
    {
        //Friction
        if (m_Velocity.magnitude > 0)
        {
            m_Velocity.x -= friction * (m_Velocity.x / m_Velocity.magnitude);
            if (Mathf.Abs(m_Velocity.x) < friction * (m_Velocity.x / m_Velocity.magnitude))
            {
                m_Velocity.x = 0;
            }
            m_Velocity.z -= friction * (m_Velocity.z / m_Velocity.magnitude);
            if (Mathf.Abs(m_Velocity.z) < friction * (m_Velocity.z / m_Velocity.magnitude))
            {
                m_Velocity.z = 0;
            }
        }
    }

    #region states
    void Idle()
    {
        //Look at next player

        GameObject closestPlayer = getClosestPlayer();

        transform.LookAt(closestPlayer.transform.position);
        //Friction
        Friction(1f);

        //Choose attack
        if (frame > 60 * m_Difficulty)
        {
            state = DecideAttack();
        }

    }
    void Teleport(int framesBeforeTP, int recoverFrames)
    {
        //Friction
        Friction(2f);
        //Windup
        if (frame < framesBeforeTP)
        {
            transform.Rotate(new Vector3(transform.rotation.x - 10, transform.rotation.y, transform.rotation.z));
        }
        if (frame == framesBeforeTP)
        {
            Vector3 teleportTargetPosition = transform.position; //Set variable for target position
            int xdir = Random.Range(-1, 1);
            int zdir = Random.Range(-1, 1);
            for (int i = 0; i < players.Length; i++) //Loop through the number of players 
            {
                playerPositionsArray[i] = players[i].transform; //Set the index's of the player positions array to the transforms of the respective player objects
            }

            teleportTargetPosition = new Vector3(Random.Range(torches[0].position.x, torches[1].position.x), transform.position.y, Random.Range(torches[0].position.z, torches[2].position.z));

            for (int i = 0; i < playerPositionsArray.Length; i++)//Loop through the player positions and if the teleport position is close to a player, move the teleport position. Will keep looping until it's not close to a player
            {
                if (playerPositionsArray[i] != null)
                {
                    float xdif = teleportTargetPosition.x - playerPositionsArray[i].position.x;
                    float zdif = teleportTargetPosition.z - playerPositionsArray[i].position.z;
                    if (new Vector3(xdif, zdif).magnitude <= 5f)
                    {
                        teleportTargetPosition.x += Mathf.Abs(xdif) * xdir;
                        teleportTargetPosition.z += Mathf.Abs(zdif) * zdir;
                        i = 0;
                    }
                }
            }

            transform.position = teleportTargetPosition;
        }
        //Recover
        if (frame > framesBeforeTP && frame < recoverFrames + framesBeforeTP)
        {
            transform.Rotate(new Vector3(transform.rotation.x - 10, transform.rotation.y, transform.rotation.z));
        }
        //Change state
        if (frame > recoverFrames + framesBeforeTP)
        {
            state = states.idle;
        }

    }
    #region Getting hurt
    void Hurt(float damageTaken, float stunTime)
    {
        //Leave state
        if (frame > stunTime)
        {
            state = states.idle;

            if (m_HurtEffect.active)
            {
                m_HurtEffect.SetActive(false);
            }
        }
        transform.Rotate(transform.rotation.x + Random.Range(0f, 120f), transform.rotation.y + Random.Range(0f, 120f), transform.rotation.z + Random.Range(0f, 120f));
        if (m_HurtEffect.active == false)
        {
            m_HurtEffect.SetActive(true);
        }

    }
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.GetComponent<Sword>() != null)
        {
            Sword sword = other.gameObject.GetComponent<Sword>();
            bool attacking = sword.attack;
            attacked = false;
        }

        
    }

    //CHANGE THIS ONCE ANIMATIONS ARE IN    FUUUUUUCCKK
    public void OnTriggerStay(Collider other)
    {
        if (!m_Invincible)
        {
            if (other.gameObject.GetComponent<Damage>() != null)
            {
                Damage attacker = other.gameObject.GetComponent<Damage>();
                StateEffect attackerEffect = other.gameObject.GetComponent<StateEffect>();
                float dmg = 0;
                float knockBack = 0f;
                float stun = 0f;
                if (other.gameObject.GetComponent<Sword>() != null)
                {
                    Sword sword = other.gameObject.GetComponent<Sword>();
                    bool attacking = sword.attack;
                    if (attacking)
                    {
                        if (!attacked)
                        {
                            attacked = true;
                            dmg = attacker.m_Damage;
                            knockBack = 10f;
                            stun = 10f;

                            m_Velocity = knockBack * Vector3.Normalize(transform.position - other.transform.position);
                            m_Health -= dmg;
                            m_StunTime = stun;
                            state = states.hurt;
                        }
                        else
                        {
                            dmg = 0;
                            knockBack = 0f;
                            stun = 0f;
                        }
                    }
                    else
                    {

                        dmg = 0;
                        knockBack = 0f;
                        stun = 0f;
                    }
                }
                else
                {
                    //dmg = attacker.m_Damage;
                    knockBack = 10f;
                    stun = 10f;
                }


                //float knockBack = attackerEffect.m_KnockBack; //These two is how this code is supposed to work but for whatever reason it's not getting these or the values just don't exist
                //float stun = attackerEffect.m_StunTime;
                
            }
        }
        #endregion//ALL THIS NEEDS TO CHANGE ONCE ANIMATIONS ARE IN
    }
    #region Attack states

    void Dash(int windup, int active, int recover)
    {
        frame++;
        m_Invincible = true;

        if (frame == 2)
        {
            GameObject playerToTarget = GetTargetPlayer();
            m_DashTarget = playerToTarget.transform;
        }

        //Windup
        if (frame <= windup)
        {
            //Apply friction
            Friction(2f);
            //Look at target player

            Vector3 targetPosition = m_DashTarget.position;
            targetPosition = new Vector3(targetPosition.x, 0, targetPosition.z);
            transform.LookAt(targetPosition);
            lookingDirection = Vector3.Normalize(targetPosition - transform.position);

        }
        //Active
        if (frame > windup && frame <= active + windup)
        {
            float chargeSpeed = 50;
            m_Velocity = chargeSpeed * lookingDirection;

        }
        //Recover
        if (frame > windup + active && frame <= windup + active + recover)
        {
            Friction(1f);
        }
        //Exit dash
        if (frame > windup + active + recover)
        {
            m_Invincible = false;
            state = states.idle;
        }

    }
    void BasicShoot(int shootFrame, int recoverFrame)
    {

        //Get Player to shoot at and target where the player is going 
        GameObject player = GetTargetPlayer();
        Vector3 pPosition = player.transform.position;
        float shootSpeed = 22f;
        Vector3 bv = (pPosition - transform.position).normalized * shootSpeed;
        float distance = Vector3.Magnitude(pPosition - transform.position);


        PlayerController p = player.GetComponent<PlayerController>();
        Vector3 pVelocity = new Vector3(p.m_Velocity.x, 0f, p.m_Velocity.z);

        float velocityDistance = Vector3.Magnitude((pPosition + pVelocity) - transform.position);

        Vector3 BossPlayerVector = pPosition - transform.position;
        float BossToPlayerPositionTime = BossPlayerVector.magnitude / shootSpeed;

        float totalTime = BossToPlayerPositionTime * (pVelocity.magnitude - shootSpeed);
        float totalDistance = shootSpeed * totalTime;

        Vector3 totalVector = totalDistance * BossPlayerVector.normalized;

        float AnswerDistance = totalVector.magnitude - BossPlayerVector.magnitude;

        Vector3 shootTarget = transform.position + BossPlayerVector + (pVelocity * BossToPlayerPositionTime);

        Vector3 targetPosition;

        if (pVelocity.magnitude > 1f) //If the players velocity is bigger than 1, aim at the shoot target
        {
            transform.LookAt(shootTarget);
            targetPosition = shootTarget;
        }
        else //Otherwise just aim at the player
        {
            transform.LookAt(pPosition);
            targetPosition = pPosition;
        }

        //Windup
        if (frame < shootFrame)
        {
            transform.Rotate(transform.rotation.x - (frame * 50), transform.rotation.y, transform.rotation.z);
        }

        //Actually shoot something

        if (frame == shootFrame)
        {
            transform.LookAt(shootTarget);
            m_BulletsToShoot -= 1; //Subtract number of bullets to shoot
            for (int i = 0; i < LightningArray.Length; i++)
            {
                if (LightningArray[i].active == false)
                {
                    LightningArray[i].SetActive(true);
                    LightningArray[i].transform.position = transform.position + (targetPosition - transform.position).normalized * 3;
                    LightningArray[i].transform.position = new Vector3(LightningArray[i].transform.position.x, LightningArray[i].transform.position.y + 5.3f, LightningArray[i].transform.position.z);


                    Vector3 direction = (new Vector3(targetPosition.x, 0, targetPosition.z) - new Vector3(transform.position.x, 0, transform.position.z).normalized);
                    Vector3 projectileVelocity = (targetPosition - transform.position).normalized * shootSpeed;

                    BossLightningKamin script = LightningArray[i].GetComponent<BossLightningKamin>();
                    script.m_ProjectileVelocity = projectileVelocity;
                    break;
                }

            }
        }
        if (frame > recoverFrame)
        {
            frame = 0;
        }

        //Change state
        if (m_BulletsToShoot <= 0)
        {
            m_BulletsToShoot = 5;
            state = states.idle;
        }

    }
    void Earthquake(int windup, int recover)
    {

        float shootSpeed = 25f;
        //windup
        if (frame <= windup)
        {
            transform.Rotate(new Vector3(transform.rotation.x, transform.rotation.y - 10, transform.rotation.z));
        }
        //Shoot
        if (frame == windup + 1)
        {
            Vector3 targetPosition = getClosestPlayer().transform.position;
            Vector3 pointVectorAngle = new Vector3(targetPosition.x - transform.position.x, 0, targetPosition.x - transform.position.z).normalized;
            //shoot everywhere
            for (int i = 0; i < ProjectilesArray.Length; i++)
            {
                //Get the angle to point at
                pointVectorAngle = Quaternion.AngleAxis(-360 / 40, Vector3.up) * pointVectorAngle;

                //Set projectile active
                ProjectilesArray[i].SetActive(true);
                //Position projectile
                ProjectilesArray[i].transform.position = transform.position + pointVectorAngle * 3;

                Vector3 projectileVelocity = pointVectorAngle * shootSpeed;
                BossProjectileKamin script = ProjectilesArray[i].GetComponent<BossProjectileKamin>();
                script.m_ProjectileVelocity = projectileVelocity;
            }
        }

        //Recover
        if (frame > windup)
        {
            transform.Rotate(new Vector3(transform.rotation.x, transform.rotation.y - 10, transform.rotation.z));
        }
        //Change state
        if (frame > windup + recover)
        {
            state = states.idle;
        }
    }

    #endregion

    #endregion


    //This is where the decision making for the target player will happen
    GameObject GetTargetPlayer()
    {
        //Right now this whole function is really basic but I'll make it more complicated later

        //Get closest player
        GameObject closestPlayer = getClosestPlayer();
        //Get player with the most health
        GameObject playerWithMostHealth = getPlayerWithMostHealth();
        //Get the player with the least amount of health
        GameObject playerWithLeastHealth = getPlayerWithLeastHealth();
        //Get the difference between the player with the largest amount of health and the least
        HeartSystem mostHearts = playerWithMostHealth.GetComponent<HeartSystem>();
        HeartSystem leastHearts = playerWithLeastHealth.GetComponent<HeartSystem>();

        float mostHealth = mostHearts.curHealth;
        float leastHealth = leastHearts.curHealth;

        float healthDifference = mostHealth - leastHealth;
        //Do math with this shit to figure out who to target ... SHOULD STILL BE KINDA RANDOM... We don't want people figuring out how the boss chooses it's targets
      

        GameObject target;

        target = getClosestPlayer();

        return target;
    }

    #region Decision making for which attack to perform

    private int m_DashPriority = 0;
    private int m_TeleportPriority = 100;
    private int m_EarthquakePriority = 0;
    private int m_ShootPriority = 0;
    states DecideAttack()
    {

        int totalPriority = m_DashPriority + m_TeleportPriority + m_ShootPriority + m_EarthquakePriority;
        int attackNumber = Random.Range(0, totalPriority);

        while (true)
        {
            if (attackNumber <= m_DashPriority) { attackNumber = 0; break; }
            if (attackNumber > m_DashPriority && attackNumber <= m_DashPriority + m_TeleportPriority) { attackNumber = 1; break; }
            if (attackNumber > m_DashPriority + m_TeleportPriority && attackNumber <= m_DashPriority + m_TeleportPriority + m_ShootPriority) { attackNumber = 2; break; }
            if (attackNumber > m_DashPriority + m_TeleportPriority + m_ShootPriority && attackNumber <= totalPriority) { attackNumber = 3; break; }
        }

        switch (attackNumber)
        {
            case 0:
                m_DashPriority = 1;
                m_TeleportPriority += 1;
                m_EarthquakePriority++;
                m_ShootPriority++;
                return states.dash;
            case 1:
                m_DashPriority += 1;
                m_TeleportPriority = 1;
                m_EarthquakePriority++;
                m_ShootPriority++;
                return states.teleport;
            case 2:
                m_DashPriority = 1;
                m_TeleportPriority += 1;
                m_EarthquakePriority += 1;
                m_ShootPriority = 1;
                return states.shoot;
            case 3:
                m_DashPriority += 1;
                m_TeleportPriority += 1;
                m_EarthquakePriority = 1;
                m_ShootPriority += 1;
                return states.earthquake;
        }
        return states.shoot;
    }

    #endregion
    //Don't change this please it works pretty well
    GameObject getClosestPlayer()
    {
        float distance = 0f;
        GameObject target = null;
        for (int i = 0; i < players.Length; i++)
        {
            if (i == 0)
            {
                distance = Vector3.Distance(players[i].transform.position, transform.position);
                target = players[i];
            }
            else
            {
                if (Vector3.Distance(players[i].transform.position, transform.position) < distance)
                {
                    distance = Vector3.Distance(players[i].transform.position, transform.position);
                    target = players[i];
                }
            }
        }
        return target;
    }

    GameObject getPlayerWithMostHealth()
    {
        GameObject target = null;
        GameObject finalTarget = players[0];
        float health = 0f;

        for(int i = 0; i < players.Length; i++)
        {
            target = players[i];
            HeartSystem hearts = players[i].GetComponent<HeartSystem>();
            health = hearts.curHealth;
            if(i > 0)
            {
                HeartSystem lastHearts = players[i-1].GetComponent<HeartSystem>();
                float lastHealth = lastHearts.curHealth;
                if (health > lastHealth)
                {
                    finalTarget = target;
                }
            }

        }

        return finalTarget;
    }
    GameObject getPlayerWithLeastHealth()
    {
        GameObject target = null;
        GameObject finalTarget = players[0];
        float health = 0f;

        for (int i = 0; i < players.Length; i++)
        {
            target = players[i];
            HeartSystem hearts = players[i].GetComponent<HeartSystem>();
            health = hearts.curHealth;
            if (i > 0)
            {
                HeartSystem lastHearts = players[i - 1].GetComponent<HeartSystem>();
                float lastHealth = lastHearts.curHealth;
                if (health < lastHealth)
                {
                    finalTarget = target;
                }
            }

        }

        return finalTarget;
    }
    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.GetComponent<Player>() != null)
        {
            //Hit player
            PlayerController playerScript = other.gameObject.GetComponent<PlayerController>();
            if(m_Velocity.magnitude > 10f)
            {
                playerScript.m_Velocity = new Vector3(0f,30f,0f);
                HeartSystem health = other.gameObject.GetComponent<HeartSystem>();
                health.TakeDamage(1);
            }
        }
    }
}
