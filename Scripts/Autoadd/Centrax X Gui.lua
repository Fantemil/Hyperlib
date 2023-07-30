--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Centrax X by JusstJohnny on Youtube.
-- Do not steal.
-- If you steal this script I will take action.
-- Enjoy screwing with those Roblos Kids.
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Centrax X", "DarkTheme")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local function setWalkspeed(walkspeed)
    while wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(walkspeed) or 16
    end
end

local function setJumppower(jumppower)
    while wait() do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(jumppower) or 50
    end
end

local function setGravity(gravity)
    while wait() do
        workspace.Gravity = tonumber(gravity) or 196.2
    end
end

local function setHealth(health)
    while wait() do
        game.Players.LocalPlayer.Character.Humanoid.Health = tonumber(health) or 100
    end
end

MainSection:NewTextBox("Walkspeed", "Changes your walkspeed.", function(s)
    spawn(function()
        setWalkspeed(s)
    end)
end)

MainSection:NewTextBox("Jumppower", "Changes your jumppower.", function(s)
    spawn(function()
        setJumppower(s)
    end)
end)

MainSection:NewTextBox("Health", "Changes your health.", function(s)
    spawn(function()
        setHealth(s)
    end)
end)

MainSection:NewTextBox("Gravity", "Changes the gravity value.", function(s)
    spawn(function()
        setGravity(s)
    end)
end)

MainSection:NewButton("Reset", "Kills/Resets you.", function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

local Universal = Window:NewTab("Universal")
local UniversalSection = Universal:NewSection("Universal")

UniversalSection:NewButton("Infinite Yield", "Loads Infinite Yield for you.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UniversalSection:NewButton("Nameless Admin", "Loads Nameless Admin for you.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
end)

UniversalSection:NewButton("BetterBypasser", "Loads BetterBypasser for you.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
        Method = 1,
        Keybind = "f",
        ShowMethodDictionary = true
    })
end)

local Games = Window:NewTab("Prison Life")
local GamesSection = Games:NewSection("Prison Life")

GamesSection:NewButton("Tiger Admin", "Loads Tiger Admin for you.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'), true))()
end)

GamesSection:NewButton("Prisonware", "Loads Prisonware for you.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

local MyScripts = Window:NewTab("My Scripts")
local MyScriptsSection = MyScripts:NewSection("My Scripts")

MyScriptsSection:NewButton("Safe Platform", "Makes a 100 x 100 platform 100000 studs into the air and teleports you on top of it.", function()
    -- Get the player and character
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Define the platform size and height
    local platformSize = Vector3.new(100, 1, 100)
    local platformHeight = 100000

    -- Calculate the new position
    local currentPosition = character.HumanoidRootPart.Position
    local newPosition = Vector3.new(currentPosition.X, currentPosition.Y + platformHeight, currentPosition.Z)

    -- Create the platform
    local platform = Instance.new("Part")
    platform.Size = platformSize
    platform.Position = newPosition
    platform.Anchored = true
    platform.Parent = game.Workspace

    -- Teleport the player
    character.HumanoidRootPart.CFrame = CFrame.new(platform.Position + Vector3.new(0, platform.Size.Y/2 + character.Humanoid.HipHeight, 0))

    print("Platform created and player teleported!")
end)

-- New section for My Spiel Scripts
local MySpielScriptsSection = MyScripts:NewSection("My Spiel Scripts")

MySpielScriptsSection:NewButton("Black Pencil Spiel", "Executes the Black Pencil Spiel script.", function()
    -- The original Black Pencil Spiel script here
    -- ... (previous code)
end)

MySpielScriptsSection:NewButton("Pookie Bear Spiel", "Executes the Pookie Bear Spiel script.", function()
    -- The original Pookie Bear Spiel script here
    -- ... (previous code)
end)

-- New button for "Sus Sounds" in the "My Spiel Scripts" section
MySpielScriptsSection:NewButton("Sus Sounds", "Executes the Sus Sounds script.", function()
    local chatMessages = {
        "Ah~",
        "Oh m-my~! Right there~!",
        "Uh~ Oh~ Ah~ DEEPER~!",
        "Nghhhhh~",
        "F-faster...",
        "I said faster...!",
        "Faster~!!",
        "Fill me uppies with your warmness~",
        "God i-it just feels so good!",
        "My nerves~.. mhmm...~",
        "I feel like.. urgh~ l-like I'm gonna coem soon...",
        "Oooh! I F-F-FEEL IT COMING!",
        "I C-CANT HOLD IT BACK!!",
        "HRGHHH~.. MHMMM~!!!.....!",
        "NGAHH~! DADDY~!! *SSPPLLRRUURRSSHH!!*"

    }

    local waitTime = 2.2 -- Adjust this value to control the time delay between each message

    for _, message in ipairs(chatMessages) do
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        wait(waitTime)
    end
end)
