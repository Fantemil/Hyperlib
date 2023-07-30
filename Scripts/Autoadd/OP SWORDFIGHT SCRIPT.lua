--[[
juul.lua - swordfight script
     __            .__       .__                
    |__|__ __ __ __|  |      |  |  __ _______   
    |  |  |  \  |  \  |      |  | |  |  \__  \  
    |  |  |  /  |  /  |__    |  |_|  |  // __ \_
/\__|  |____/|____/|____/ /\ |____/____/(____  /
\______|                  \/                 \/

Loader UI: CasualDev, focat
Script: focat
]]--

--[[
◈══════════════════════════════◈
[            juul.lua           ]
◈══════════════════════════════◈
[ Made by focat#1687            ]
[ Configure options below.      ]
[ discord.gg/varity             ]
◈══════════════════════════════◈
]]--

getgenv().Options = {
    -- [[ ◈ Options ◈ ]]--
    ------------------------------------------------
    -- Fast load just loads the script even before the UI loading is finished
    fastload = false, -- not recommended for showcases, but good for quick loading

    -- Toxic mode does what it says... be toxic
    toxicmode = false,
    
    -- Key to press to bring the player your mouse is hovering over
    keybring = Enum.KeyCode.LeftBracket,

    -- [BRING ONLY] TPs you and target to void (BUGGY AS HELL)
    silentkill = false, -- [!] BUGGY [!] --

    -- Key to press to teleport to the player your mouse is hovering over
    keytp = Enum.KeyCode.RightBracket,

    -- [TP ONLY] Uses reach and tps you behind so the victim cannot hit you
    safemode = false,

    -- Enter USERNAMES here to make sure they don't die. (case sensitive)
    whitelisted_users = {"username1", "username2"},

    -- true = mouse1click (basically like an autoclicker) (CANNOT DO ANYTHING ELSE WHILE USING THE SCRIPT)
    -- false = you can chat while using the script but u need to click by urself
    Mouse1Click = true
    ------------------------------------------------
} -- [[ ! If both usemouse and usekey are true, the script will use usemouse ! ]] --

loadstring(game:HttpGetAsync 'https://github.com/Code1Tech/juul.lua/raw/main/juul.lua')()