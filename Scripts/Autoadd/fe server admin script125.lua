--GUI
local NetlessServerAdmin = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Outline = Instance.new("Frame")
local InfoButton = Instance.new("TextButton")
local Reanimation = Instance.new("TextButton")
local Credits = Instance.new("TextButton")
local EverythingFrame = Instance.new("ScrollingFrame")
local ReanimationFrame = Instance.new("Frame")
local PermanentReanimation = Instance.new("TextButton")
local BotReanimation = Instance.new("TextButton")
local ReanimInfo = Instance.new("TextLabel")
local InfoFrame = Instance.new("Frame")
local Info = Instance.new("TextLabel")
local CreditsFrame = Instance.new("Frame")
local CreditsText = Instance.new("TextLabel")
local CopiedLink = Instance.new("TextLabel")
local Discord = Instance.new("TextButton")

NetlessServerAdmin.Name = "NetlessServerAdmin"
NetlessServerAdmin.Parent = game.CoreGui
NetlessServerAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = NetlessServerAdmin
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
MainFrame.Position = UDim2.new(0.0645398498, 0, 0.427597612, 0)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 319, 0, 238)
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 318, 0, 19)
Title.Font = Enum.Font.Code
Title.Text = "FE Server Admin"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Outline.Name = "Outline"
Outline.Parent = MainFrame
Outline.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
Outline.BorderColor3 = Color3.fromRGB(0, 255, 0)
Outline.BorderSizePixel = 3
Outline.Position = UDim2.new(0.335000008, 0, 0.104999997, 0)
Outline.Size = UDim2.new(0, 101, 0, 28)

InfoButton.Name = "InfoButton"
InfoButton.Parent = MainFrame
InfoButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoButton.BackgroundTransparency = 1.000
InfoButton.Position = UDim2.new(0.752060294, 0, 0.105042018, 0)
InfoButton.Size = UDim2.new(0, 79, 0, 28)
InfoButton.Font = Enum.Font.SourceSans
InfoButton.Text = "Info"
InfoButton.TextColor3 = Color3.fromRGB(0, 0, 0)
InfoButton.TextSize = 20.000
InfoButton.TextWrapped = true

Reanimation.Name = "Reanimation"
Reanimation.Parent = MainFrame
Reanimation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reanimation.BackgroundTransparency = 1.000
Reanimation.Position = UDim2.new(0.317328781, 0, 0.105042025, 0)
Reanimation.Size = UDim2.new(0, 115, 0, 28)
Reanimation.Font = Enum.Font.SourceSans
Reanimation.Text = "Reanimation"
Reanimation.TextColor3 = Color3.fromRGB(0, 0, 0)
Reanimation.TextSize = 20.000
Reanimation.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(-0.000290811062, 0, 0.105042018, 0)
Credits.Size = UDim2.new(0, 79, 0, 28)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextSize = 20.000
Credits.TextWrapped = true

EverythingFrame.Name = "EverythingFrame"
EverythingFrame.Parent = MainFrame
EverythingFrame.Active = true
EverythingFrame.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
EverythingFrame.Position = UDim2.new(0, 0, 0.275999993, 0)
EverythingFrame.Size = UDim2.new(0, 319, 0, 172)
EverythingFrame.CanvasSize = UDim2.new(3, 0, 0, 0)
EverythingFrame.CanvasPosition = Vector2.new(319, 0)
EverythingFrame.ScrollingEnabled = false
EverythingFrame.ScrollBarImageTransparency = 1

ReanimationFrame.Name = "ReanimationFrame"
ReanimationFrame.Parent = EverythingFrame
ReanimationFrame.Active = true
ReanimationFrame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
ReanimationFrame.Position = UDim2.new(0.333000004, 0, 0, 0)
ReanimationFrame.Selectable = true
ReanimationFrame.Size = UDim2.new(0, 319, 0, 159)

PermanentReanimation.Name = "PermanentReanimation"
PermanentReanimation.Parent = ReanimationFrame
PermanentReanimation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
PermanentReanimation.Position = UDim2.new(0.0478076488, 0, 0.01581534, 0)
PermanentReanimation.Size = UDim2.new(0, 289, 0, 29)
PermanentReanimation.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
PermanentReanimation.Font = Enum.Font.SourceSans
PermanentReanimation.Text = "Permanent"
PermanentReanimation.TextColor3 = Color3.fromRGB(0, 0, 0)
PermanentReanimation.TextSize = 20.000
PermanentReanimation.TextWrapped = true
PermanentReanimation.TextXAlignment = Enum.TextXAlignment.Left

BotReanimation.Name = "BotReanimation"
BotReanimation.Parent = ReanimationFrame
BotReanimation.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BotReanimation.Position = UDim2.new(0.0477184951, 0, 0.232129261, 0)
BotReanimation.Size = UDim2.new(0, 289, 0, 29)
BotReanimation.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
BotReanimation.Font = Enum.Font.SourceSans
BotReanimation.Text = "Bot"
BotReanimation.TextColor3 = Color3.fromRGB(0, 0, 0)
BotReanimation.TextSize = 20.000
BotReanimation.TextWrapped = true
BotReanimation.TextXAlignment = Enum.TextXAlignment.Left

ReanimInfo.Name = "ReanimInfo"
ReanimInfo.Parent = ReanimationFrame
ReanimInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ReanimInfo.BackgroundTransparency = 1.000
ReanimInfo.Position = UDim2.new(0.0130000096, 0, 0.411194909, 0)
ReanimInfo.Size = UDim2.new(0, 311, 0, 91)
ReanimInfo.Font = Enum.Font.SourceSans
ReanimInfo.Text = [[Have Fun :)]]
ReanimInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
ReanimInfo.TextScaled = false
ReanimInfo.TextSize = 20.000
ReanimInfo.TextWrapped = true

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = EverythingFrame
InfoFrame.Active = true
InfoFrame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
InfoFrame.Position = UDim2.new(0.666999996, 0, 0, 0)
InfoFrame.Selectable = true
InfoFrame.Size = UDim2.new(0, 319, 0, 159)

Info.Name = "Info"
Info.Parent = InfoFrame
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.Position = UDim2.new(0.0130000003, 0, 0.0199999996, 0)
Info.Size = UDim2.new(0, 311, 0, 155)
Info.Font = Enum.Font.SourceSans
Info.Text = [[- Since there's no hat fling, each reanimation is going to put you into perma death.
- You can use Stylish Aviators (as the glasses) with this script (but it's not required).
- The GUI now won't be destroyed when you die before reanimating.]]
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 20.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = EverythingFrame
CreditsFrame.Active = true
CreditsFrame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
CreditsFrame.Selectable = true
CreditsFrame.Size = UDim2.new(0, 319, 0, 159)

CreditsText.Name = "CreditsText"
CreditsText.Parent = CreditsFrame
CreditsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsText.BackgroundTransparency = 1.000
CreditsText.Position = UDim2.new(0.00940438919, 0, 0.0151445884, 0)
CreditsText.Size = UDim2.new(0, 308, 0, 87)
CreditsText.Font = Enum.Font.SourceSans
CreditsText.Text = [[- Orignal Script By SHACKLUSTER (Unsure)
- Converted To SS By SpaceAviator (Unsure)
- Converted To FE By ONEReverseCard#5311 With Help From ShownApe#1111]]
CreditsText.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsText.TextScaled = true
CreditsText.TextSize = 20.000
CreditsText.TextWrapped = true
CreditsText.TextXAlignment = Enum.TextXAlignment.Left
CreditsText.TextYAlignment = Enum.TextYAlignment.Top

CopiedLink.Name = "CopiedLink"
CopiedLink.Parent = CreditsFrame
CopiedLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopiedLink.BackgroundTransparency = 1.000
CopiedLink.Position = UDim2.new(0.184952974, 0, 0.746668756, 0)
CopiedLink.Size = UDim2.new(0, 200, 0, 35)
CopiedLink.Font = Enum.Font.SourceSans
CopiedLink.Text = "Copied Discord Server Link"
CopiedLink.TextColor3 = Color3.fromRGB(255, 255, 255)
CopiedLink.TextScaled = true
CopiedLink.TextSize = 14.000
CopiedLink.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = CreditsFrame
Discord.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Discord.Position = UDim2.new(0.0414489023, 0, 0.766720414, 0)
Discord.Size = UDim2.new(0, 289, 0, 29)
Discord.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Discord.Font = Enum.Font.SourceSans
Discord.Text = "Discord Server"
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.TextSize = 20.000
Discord.TextWrapped = true
Discord.TextXAlignment = Enum.TextXAlignment.Left

--Varibles
local permaDeath = false
local bot = false
local pressingShift = false
local reanimated = false
local botHats = {}

--Resetting GUI Value
if not game.CoreGui:FindFirstChild("ResetGUIValue") then
    local resetGUIValue = Instance.new("BoolValue", game.CoreGui)
    resetGUIValue.Name = "ResetGUIValue"
end

--Server Admin
local function ServerAdmin()
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character.HumanoidRootPart
    local torso = nil
    local reanimFolder = character.FakeCharacter
    local reanimation = reanimFolder.Reanimation
    local cTorso = reanimation.Torso
    local cHRP = reanimation.HumanoidRootPart
    --Reanimated
    reanimated = true
    
    if permaDeath == true and character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        torso = character.Torso
    end
        
    --Flinging
    local flinging = false
    local getChild = nil
    
    local function GetCHILD(CHILD)
        getChild = CHILD
    end
    
    --Netless--
    --Variables
    local glasses = nil
    local GWeld = nil
    local glasesPosition = nil
    local CFrame0 = nil
    local CFrame1 = nil
    local glassesReady = false
    local glassesList = "VarietyShades02", "e"
    
    --Glasses
    for i,v in pairs(character:GetChildren()) do
        if v.Name == glassesList then
            glasses = reanimation:FindFirstChild(v.Name)
        end
    end
    
    if character:FindFirstChild("VarietyShades02") then
        CFrame0 = CFrame.new(0, 0, 0)
        CFrame1 = CFrame.new(0, 0, 0)
        GWeld = glasses.Handle:FindFirstChildWhichIsA("Weld")
    end
    
    --Flinging (Hats)
    for i,v in pairs(character:GetChildren()) do
        
    end
    
    local bodyAngularVelocity = Instance.new("BodyAngularVelocity", hrp)
    bodyAngularVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    bodyAngularVelocity.P = 1000000000000000000000000000
    bodyAngularVelocity.AngularVelocity = Vector3.new(10000, 10000, 10000)
    
    local function Positioning()
        --Positioning BodyParts
        for i,v in pairs(character:GetChildren()) do
            if v:IsA("Part") and v.Name ~= "HumanoidRootPart" and character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                v.CFrame = reanimation:FindFirstChild(v.Name).CFrame
            end
        end
        
        --Flinging
        if flinging == true then
            if character.Humanoid.RigType == Enum.HumanoidRigType.R15 and bodyAngularVelocity.AngularVelocity == Vector3.new(0, 0, 0) then
                bodyAngularVelocity.AngularVelocity = Vector3.new(10000, 10000, 10000)
            end
            
            if getChild:FindFirstChild("Torso") then
                hrp.Position = getChild.Torso.Position
            end
            
            if getChild:FindFirstChild("UpperTorso") then
                hrp.Position = getChild.UpperTorso.Position
            end
        else
            if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                hrp.Position = Vector3.new(reanimation.Torso.Position.X, -50, reanimation.Torso.Position.Z)
            else
                hrp.Position = reanimation.Torso.Position
                if bodyAngularVelocity.AngularVelocity == Vector3.new(10000, 10000, 10000) then
                    bodyAngularVelocity.AngularVelocity = Vector3.new(0, 0, 0)
                end
            end
        end
        
        --R15
        if character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            --Head
            character.Head.CFrame = reanimation.Head.CFrame
            
            --Torso
            character.UpperTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, 0.185, 0)
            character.LowerTorso.CFrame = reanimation.Torso.CFrame * CFrame.new(0, -0.8, 0)
            
            --HumanoidRootPart
            --character.HumanoidRootPart.CFrame = cHRP.CFrame
            
            --Left Arm
            character.LeftUpperArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, 0.4, 0)
            character.LeftLowerArm.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.19, 0)
            character.LeftHand.CFrame = reanimation["Left Arm"].CFrame * CFrame.new(0, -0.84, 0)
            
            --Right Arm
            character.RightUpperArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, 0.4, 0)
            character.RightLowerArm.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.19, 0)
            character.RightHand.CFrame = reanimation["Right Arm"].CFrame * CFrame.new(0, -0.84, 0)
            
            --Left Leg
            character.LeftUpperLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, 0.55, 0)
            character.LeftLowerLeg.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.19, 0)
            character.LeftFoot.CFrame = reanimation["Left Leg"].CFrame * CFrame.new(0, -0.85, 0)
            
            --Right Leg
            character.RightUpperLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, 0.55, 0)
            character.RightLowerLeg.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.19, 0)
            character.RightFoot.CFrame = reanimation["Right Leg"].CFrame * CFrame.new(0, -0.85, 0)
        end
        
        --Positioning The Hats
        for i,v in pairs(character:GetChildren()) do
            if v:IsA("Accessory") and not v.Name ~= glasses then
                if bot == false then
                    v.Handle.CFrame = reanimation:FindFirstChild(v.Name).Handle.CFrame
                else
                    --Arms and Legs
                    if v.Name ~= "Head" and reanimation:FindFirstChild(v.Name) and v.Name ~= glasses.Name then
                        v.Handle.CFrame = reanimation:FindFirstChild(v.Name).CFrame * CFrame.Angles(1.5708, 0, 0)
                    end
                    
                    --Head
                    if v.Name == "Head" then
                        --Medi Hood
                        if v.Handle:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://617474228" then
                            v.Handle.CFrame = reanimation:FindFirstChild(v.Name).CFrame * CFrame.new(0, -0.025, 0.23)
                        end
                        
                        --Shadowed Head
                        if v.Handle:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://4904532191" then
                            v.Handle.CFrame = reanimation:FindFirstChild(v.Name).CFrame
                        end
                    end
                    
                    --Left Half Of The Torso
                    if v.Name == "Torso1" then
                        v.Handle.CFrame = reanimation.Torso.CFrame * CFrame.new(-0.5, 0, 0) * CFrame.Angles(1.5708, 0, 0)
                    end
                    
                    --Right Half Of The Torso
                    if v.Name == "Torso2" then
                        v.Handle.CFrame = reanimation.Torso.CFrame * CFrame.new(0.5, 0, 0) * CFrame.Angles(1.5708, 0, 0)
                    end
                end
            end
        end
        
        --Positioning The Glasses
        if glasses ~= nil then
            for i,v in pairs(character:GetChildren()) do
                if v.Name == glasses.Name and v:IsA("Accessory") then
                    if glassesReady == false then
                        v.Handle.CFrame = CFrame.new(0, -50, 0)
                    else
                        v.Handle.CFrame = glasses.Handle.CFrame
                    end
                end
            end
        end
        
        game:GetService("RunService").Heartbeat:wait()
    end
    
    --//====================================================\\--
    --||			   CREATED BY SHACKLUSTER
    --\\====================================================//--
    
    --wait(0.2)
    
    Player = game:GetService("Players").LocalPlayer
    PlayerGui = Player.PlayerGui
    Mouse = Player:GetMouse()
    Cam = workspace.CurrentCamera
    Backpack = Player.Backpack
    Character = Player.Character.FakeCharacter.Reanimation
    Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    RootPart = Character["HumanoidRootPart"]
    Torso = Character["Torso"]
    Head = Character["Head"]
    RightArm = Character["Right Arm"]
    LeftArm = Character["Left Arm"]
    RightLeg = Character["Right Leg"]
    LeftLeg = Character["Left Leg"]
    RootJoint = RootPart["RootJoint"]
    Neck = Torso["Neck"]
    RightShoulder = Torso["Right Shoulder"]
    LeftShoulder = Torso["Left Shoulder"]
    RightHip = Torso["Right Hip"]
    LeftHip = Torso["Left Hip"]
    
    local hrp = Player.Character.HumanoidRootPart
    hrp.Transparency = 0
    
    IT = Instance.new
    CF = CFrame.new
    VT = Vector3.new
    RAD = math.rad
    C3 = Color3.new
    UD2 = UDim2.new
    BRICKC = BrickColor.new
    ANGLES = CFrame.Angles
    EULER = CFrame.fromEulerAnglesXYZ
    COS = math.cos
    ACOS = math.acos
    SIN = math.sin
    ASIN = math.asin
    ABS = math.abs
    MRANDOM = math.random
    FLOOR = math.floor
    
    --//=================================\\
    --|| 	      USEFUL VALUES
    --\\=================================//
    
    Animation_Speed = 3
    Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
    local Speed = 16
    local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
    local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
    local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
    local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
    local DAMAGEMULTIPLIER = 1
    local ANIM = "Idle"
    local ATTACK = false
    local EQUIPPED = false
    local HOLD = false
    local COMBO = 1
    local Rooted = false
    local SINE = 0
    local KEYHOLD = false
    local CHANGE = 2 / Animation_Speed
    local WALKINGANIM = false
    local VALUE1 = false
    local VALUE2 = false
    local ROBLOXIDLEANIMATION = IT("Animation")
    ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
    ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
    --ROBLOXIDLEANIMATION.Parent = Humanoid
    local WEAPONGUI = IT("ScreenGui", PlayerGui)
    WEAPONGUI.Name = "Weapon GUI"
    local Effects = IT("Folder", Player.Character)
    Effects.Name = "Effects"
    --print("e")
    --local ANIMATOR = Humanoid.Animator
    --local ANIMATE = Character.Animate
    local UNANCHOR = true
    local SC = false
    
    --//=================================\\
    --\\=================================//
    
    
    --//=================================\\
    --|| SAZERENOS' ARTIFICIAL HEARTBEAT
    --\\=================================//
    
    ArtificialHB = Instance.new("BindableEvent", script)
    ArtificialHB.Name = "ArtificialHB"
    
    script:WaitForChild("ArtificialHB")
    
    frame = Frame_Speed
    tf = 0
    allowframeloss = false
    tossremainder = false
    lastframe = tick()
    script.ArtificialHB:Fire()
    
    game:GetService("RunService").Heartbeat:connect(function(s, p)
    	tf = tf + s
    	if tf >= frame then
    		if allowframeloss then
    			ArtificialHB:Fire()
    			lastframe = tick()
    		else
    			for i = 1, math.floor(tf / frame) do
    				ArtificialHB:Fire()
    			end
    			lastframe = tick()
    		end
    		if tossremainder then
    			tf = 0
    		else
    			tf = tf - frame * math.floor(tf / frame)
    		end
    	end
    end)
    
    --//=================================\\
    --\\=================================//
    
    --//=================================\\
    --|| 	      SOME FUNCTIONS
    --\\=================================//
    
    function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
    	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
    end
    
    function PositiveAngle(NUMBER)
    	if NUMBER >= 0 then
    		NUMBER = 0
    	end
    	return NUMBER
    end
    
    function NegativeAngle(NUMBER)
    	if NUMBER <= 0 then
    		NUMBER = 0
    	end
    	return NUMBER
    end
    
    function Swait(NUMBER)
    	if NUMBER == 0 or NUMBER == nil then
    		ArtificialHB.Event:wait()
    	else
    		for i = 1, NUMBER do
    			ArtificialHB.Event:wait()
    		end
    	end
    end
    
    function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
    	local NEWMESH = IT(MESH)
    	if MESH == "SpecialMesh" then
    		NEWMESH.MeshType = MESHTYPE
    		if MESHID ~= "nil" and MESHID ~= "" then
    			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
    		end
    		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
    			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
    		end
    	end
    	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
    	NEWMESH.Scale = SCALE
    	NEWMESH.Parent = PARENT
    	return NEWMESH
    end
    
    function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
    	local NEWPART = IT("Part")
    	NEWPART.formFactor = FORMFACTOR
    	NEWPART.Reflectance = REFLECTANCE
    	NEWPART.Transparency = TRANSPARENCY
    	NEWPART.CanCollide = false
    	NEWPART.Locked = true
    	NEWPART.Anchored = true
    	if ANCHOR == false then
    		NEWPART.Anchored = false
    	end
    	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
    	NEWPART.Name = NAME
    	NEWPART.Size = SIZE
    	NEWPART.Position = Torso.Position
    	NEWPART.Material = MATERIAL
    	NEWPART:BreakJoints()
    	NEWPART.Parent = PARENT
    	return NEWPART
    end
    
    	local function weldBetween(a, b)
    	    local weldd = Instance.new("ManualWeld")
    	    weldd.Part0 = a
    	    weldd.Part1 = b
    	    weldd.C0 = CFrame.new()
    	    weldd.C1 = b.CFrame:inverse() * a.CFrame
    	    weldd.Parent = a
    	    return weldd
    	end
    
    
    function QuaternionFromCFrame(cf)
    	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
    	local trace = m00 + m11 + m22
    	if trace > 0 then 
    		local s = math.sqrt(1 + trace)
    		local recip = 0.5 / s
    		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
    	else
    		local i = 0
    		if m11 > m00 then
    			i = 1
    		end
    		if m22 > (i == 0 and m00 or m11) then
    			i = 2
    		end
    		if i == 0 then
    			local s = math.sqrt(m00 - m11 - m22 + 1)
    			local recip = 0.5 / s
    			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
    		elseif i == 1 then
    			local s = math.sqrt(m11 - m22 - m00 + 1)
    			local recip = 0.5 / s
    			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
    		elseif i == 2 then
    			local s = math.sqrt(m22 - m00 - m11 + 1)
    			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
    		end
    	end
    end
     
    function QuaternionToCFrame(px, py, pz, x, y, z, w)
    	local xs, ys, zs = x + x, y + y, z + z
    	local wx, wy, wz = w * xs, w * ys, w * zs
    	local xx = x * xs
    	local xy = x * ys
    	local xz = x * zs
    	local yy = y * ys
    	local yz = y * zs
    	local zz = z * zs
    	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
    end
     
    function QuaternionSlerp(a, b, t)
    	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
    	local startInterp, finishInterp;
    	if cosTheta >= 0.0001 then
    		if (1 - cosTheta) > 0.0001 then
    			local theta = ACOS(cosTheta)
    			local invSinTheta = 1 / SIN(theta)
    			startInterp = SIN((1 - t) * theta) * invSinTheta
    			finishInterp = SIN(t * theta) * invSinTheta
    		else
    			startInterp = 1 - t
    			finishInterp = t
    		end
    	else
    		if (1 + cosTheta) > 0.0001 then
    			local theta = ACOS(-cosTheta)
    			local invSinTheta = 1 / SIN(theta)
    			startInterp = SIN((t - 1) * theta) * invSinTheta
    			finishInterp = SIN(t * theta) * invSinTheta
    		else
    			startInterp = t - 1
    			finishInterp = t
    		end
    	end
    	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
    end
    
    function Clerp(a, b, t)
    	local qa = {QuaternionFromCFrame(a)}
    	local qb = {QuaternionFromCFrame(b)}
    	local ax, ay, az = a.x, a.y, a.z
    	local bx, by, bz = b.x, b.y, b.z
    	local _t = 1 - t
    	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
    end
    
    function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
    	local frame = IT("Frame")
    	frame.BackgroundTransparency = TRANSPARENCY
    	frame.BorderSizePixel = BORDERSIZEPIXEL
    	frame.Position = POSITION
    	frame.Size = SIZE
    	frame.BackgroundColor3 = COLOR
    	frame.BorderColor3 = BORDERCOLOR
    	frame.Name = NAME
    	frame.Parent = PARENT
    	return frame
    end
    
    function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
    	local label = IT("TextLabel")
    	label.BackgroundTransparency = 1
    	label.Size = UD2(1, 0, 1, 0)
    	label.Position = UD2(0, 0, 0, 0)
    	label.TextColor3 = TEXTCOLOR
    	label.TextStrokeTransparency = STROKETRANSPARENCY
    	label.TextTransparency = TRANSPARENCY
    	label.FontSize = TEXTFONTSIZE
    	label.Font = TEXTFONT
    	label.BorderSizePixel = BORDERSIZEPIXEL
    	label.TextScaled = false
    	label.Text = TEXT
    	label.Name = NAME
    	label.Parent = PARENT
    	return label
    end
    
    function NoOutlines(PART)
    	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
    end
    
    function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
    	local NEWWELD = IT(TYPE)
    	NEWWELD.Part0 = PART0
    	NEWWELD.Part1 = PART1
    	NEWWELD.C0 = C0
    	NEWWELD.C1 = C1
    	NEWWELD.Parent = PARENT
    	return NEWWELD
    end
    
    local S = IT("Sound")
    function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
    	local NEWSOUND = nil
    	coroutine.resume(coroutine.create(function()
    		NEWSOUND = S:Clone()
    		NEWSOUND.Parent = PARENT
    		NEWSOUND.Volume = VOLUME
    		NEWSOUND.Pitch = PITCH
    		NEWSOUND.SoundId = "rbxassetid://"..ID
    		NEWSOUND:play()
    		if DOESLOOP == true then
    			NEWSOUND.Looped = true
    		else
    			repeat wait(1) until NEWSOUND.Playing == false
    			NEWSOUND:remove()
    		end
    	end))
    	return NEWSOUND
    end
    
    function CFrameFromTopBack(at, top, back)
    	local right = top:Cross(back)
    	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
    end
    
    --WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
    function WACKYEFFECT(Table)
    	local TYPE = (Table.EffectType or "Sphere")
    	local SIZE = (Table.Size or VT(1,1,1))
    	local ENDSIZE = (Table.Size2 or VT(0,0,0))
    	local TRANSPARENCY = (Table.Transparency or 0)
    	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
    	local CFRAME = (Table.CFrame or Torso.CFrame)
    	local MOVEDIRECTION = (Table.MoveToPos or nil)
    	local ROTATION1 = (Table.RotationX or 0)
    	local ROTATION2 = (Table.RotationY or 0)
    	local ROTATION3 = (Table.RotationZ or 0)
    	local MATERIAL = (Table.Material or "Neon")
    	local COLOR = (Table.Color or C3(1,1,1))
    	local TIME = (Table.Time or 45)
    	local SOUNDID = (Table.SoundID or nil)
    	local SOUNDPITCH = (Table.SoundPitch or nil)
    	local SOUNDVOLUME = (Table.SoundVolume or nil)
    	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
    	local BOOMERANG = (Table.Boomerang or 0)
    	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
    	coroutine.resume(coroutine.create(function()
    		local PLAYSSOUND = false
    		local SOUND = nil
    		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
    		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
    			PLAYSSOUND = true
    			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
    		end
    		EFFECT.Color = COLOR
    		local MSH = nil
    		if TYPE == "Sphere" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
    		elseif TYPE == "Block" or TYPE == "Box" then
    			MSH = IT("BlockMesh",EFFECT)
    			MSH.Scale = SIZE
    		elseif TYPE == "Wave" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
    		elseif TYPE == "Ring" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
    		elseif TYPE == "Slash" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
    		elseif TYPE == "Round Slash" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
    		elseif TYPE == "Swirl" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
    		elseif TYPE == "Skull" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
    		elseif TYPE == "Crystal" then
    			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
    		end
    		if MSH ~= nil then
    			local BOOMR1 = 1+BOOMERANG/50
    			local BOOMR2 = 1+SIZEBOOMERANG/50
    			local MOVESPEED = nil
    			if MOVEDIRECTION ~= nil then
    				if USEBOOMERANGMATH == true then
    					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
    				else
    					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
    				end
    			end
    			local GROWTH = nil
    			if USEBOOMERANGMATH == true then
    				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
    			else
    				GROWTH = (SIZE - ENDSIZE)
    			end
    			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
    			if TYPE == "Block" then
    				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    			else
    				EFFECT.CFrame = CFRAME
    			end
    			if USEBOOMERANGMATH == true then
    				for LOOP = 1, TIME+1 do
    					Swait()
    					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
    					if TYPE == "Wave" then
    						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
    					end
    					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
    					if TYPE == "Block" then
    						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    					else
    						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
    					end
    					if MOVEDIRECTION ~= nil then
    						local ORI = EFFECT.Orientation
    						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
    						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
    					end
    				end
    			else
    				for LOOP = 1, TIME+1 do
    					Swait()
    					MSH.Scale = MSH.Scale - GROWTH/TIME
    					if TYPE == "Wave" then
    						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
    					end
    					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
    					if TYPE == "Block" then
    						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    					else
    						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
    					end
    					if MOVEDIRECTION ~= nil then
    						local ORI = EFFECT.Orientation
    						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
    						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
    					end
    				end
    			end
    			EFFECT.Transparency = 1
    			if PLAYSSOUND == false then
    				EFFECT:remove()
    			else
    				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
    				EFFECT:remove()
    			end
    		else
    			if PLAYSSOUND == false then
    				EFFECT:remove()
    			else
    				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
    				EFFECT:remove()
    			end
    		end
    	end))
    end
    
    function MakeForm(PART,TYPE)
    	if TYPE == "Cyl" then
    		local MSH = IT("CylinderMesh",PART)
    	elseif TYPE == "Ball" then
    		local MSH = IT("SpecialMesh",PART)
    		MSH.MeshType = "Sphere"
    	elseif TYPE == "Wedge" then
    		local MSH = IT("SpecialMesh",PART)
    		MSH.MeshType = "Wedge"
    	end
    end
    
    Debris = game:GetService("Debris")
    
    function CastProperRay(StartPos, EndPos, Distance, Ignore)
    	local DIRECTION = CF(StartPos,EndPos).lookVector
    	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
    	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
    end
    
    --Debree({Delay = 1.5,Variant = "",Location = Torso.Position,Color = C3(1,1,1),Size = 1,Distance = 1,Material = "Slate",Scatter = 1,Amount = 1,DebreeCount = 1})
    function Debree(Table)
    	local KindOf = (Table.Variant or "Ring")
    	local Position = (Table.Location or Torso.Position)
    	local Coloration = (Table.Color or C3(1,1,1))
    	local Texture = (Table.Material or "Slate")
    	local Fling = (Table.Scatter or 1)
    	local Number = (Table.Amount or 1)
    	local Rocks = (Table.DebreeCount or 1)
    	local Range = (Table.Distance or 1)
    	local Scale = (Table.Size or 1)
    	local Timer = (Table.Delay or 1.5)
    	coroutine.resume(coroutine.create(function()
    		local ScaleVector = VT(Scale,Scale,Scale)
    		local Boulders = {}
    		Position = CF(Position)
    		if KindOf == "Ring" or KindOf == "Both" then
    			for RockValue = 1, Number do
    				local LOCATION = Position * ANGLES(RAD(0), RAD((360/Number)*RockValue), RAD(0))*CF(0,MRANDOM(-math.ceil(Scale/4),math.ceil(Scale/4)),Range)
    				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
    				BOULDER.CanCollide = true
    				BOULDER.CFrame = LOCATION*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    				BOULDER.Color = Coloration
    				table.insert(Boulders,BOULDER)
    			end
    		end
    		if KindOf == "Loose" or KindOf == "Both" then
    			for RockValue = 1, Rocks do
    				local LOCATION = Position * ANGLES(RAD(0), RAD((360/Number)*RockValue), RAD(0))*CF(0,MRANDOM(-math.ceil(Scale-(Scale/2)),math.ceil(Scale-(Scale/2))),0.7)
    				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
    				BOULDER.CanCollide = true
    				BOULDER.CFrame = LOCATION*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    				BOULDER.Velocity = CF(BOULDER.Position-VT(0,4,0),BOULDER.CFrame*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,5,0).p).lookVector*MRANDOM(Fling-(Fling/1.5),Fling+(Fling/1.5))
    				BOULDER.Color = Coloration
    				table.insert(Boulders,BOULDER)
    			end
    		end
    		if KindOf == "Random" then
    			for RockValue = 1, Number do
    				local LOCATION = Position * ANGLES(RAD(0), RAD((360/Number)*RockValue), RAD(0))*CF(0,MRANDOM(-math.ceil(Scale/4),math.ceil(Scale/4)),MRANDOM(0,Range))
    				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
    				BOULDER.CanCollide = true
    				BOULDER.CFrame = LOCATION*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
    				BOULDER.Color = Coloration
    				table.insert(Boulders,BOULDER)
    			end
    		end
    		wait(Timer)
    		for E = 1, 45 do
    			Swait()
    			for A = 1, #Boulders do
    				Boulders[A].Transparency = Boulders[A].Transparency + 1/45
    			end
    		end
    		for A = 1, #Boulders do
    			Boulders[A]:Destroy()
    		end
    	end))
    end
    
    --//=================================\\
    --||	   MUSIC AND COLORS
    --\\=================================//
    
    local BASECOLOR = C3(0,0,0)
    local BMUSIC = IT("Sound",RootPart)
    local VOLUME = 1
    local PITCH = 1
    local SONGID = 1442022177
    local PLAYING = false
    local INTRO = false
    local SCREENS = {}
    local SCREENWELDS = {}
    local GUISTEXT = {}
    
    --//=================================\\
    --||			DAMAGING
    --\\=================================//
    
    function ApplyDamage(Humanoid,Damage)
    	if Damage > 0 then
    		Damage = Damage * DAMAGEMULTIPLIER
    		if Humanoid.Health < 2000 then
    			if Humanoid.Health - Damage > 0 then
    				Humanoid.Health = Humanoid.Health - Damage
    			else
    				Humanoid.Parent:BreakJoints()
    			end
    		else
    			Humanoid.Parent:BreakJoints()
    		end
    	end
    end
    
    function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
    	for index, CHILD in pairs(workspace:GetDescendants()) do
    		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Name ~= Player.Name and CHILD.Name ~= "" then
    			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
    			if HUM then
    				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
    				if TORSO then
    					if (TORSO.Position - POSITION).Magnitude <= RANGE then
    						if INSTAKILL == true then
    							--CHILD:BreakJoints()
    						else
    							--local DMG = MRANDOM(MINDMG,MAXDMG)
    							--ApplyDamage(HUM,DMG)
    						end
    						if FLING > 0 then
    						    flinging = true
    						    GetCHILD(CHILD)
                                --print("a")
                                ---bodyPosition.Position = CHILD.Torso.Position
    						end
    					end
    				end
    			end
    		end
    	end
    end
    
    --//=================================\\
    --||	ATTACK FUNCTIONS AND STUFF
    --\\=================================//
    
    local GLASSESWLD = nil
    function IntroThing()
    	ATTACK = true
    	Rooted = true
    	RootJoint.C0 = CF(0,250,0)
    	CONNECT = Mouse.KeyDown:connect(function(NEWKEY)
    		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character and character)
    		if HITFLOOR then
    			CONNECT:Disconnect()
    			local SOUND = CreateSound(606241996, Effects, 5, 1)
    			coroutine.resume(coroutine.create(function()
    				repeat Swait() SOUND.Parent = Effects until SOUND.Playing == false
    				PLAYING = true
    			end))
    			for i=0, 0.4, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.31, -0.65 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -1.4) * ANGLES(RAD(65), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.1 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			for i = 1, 3 do
    				WACKYEFFECT({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,1,1), SoundID = 765590102, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 5, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
    			end
    			Debree({Delay = 4,Variant = "Ring",Location = HITPOS,Color = HITFLOOR.Color,Size = 3,Distance = 15,Material = HITFLOOR.Material,Scatter = 1,Amount = 30,DebreeCount = 8})
    			for i=0, 0.85, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.31, -0.65 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -1.4) * ANGLES(RAD(65), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.1 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			for i=0, 1, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.31, -0.65 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-50 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.2 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -1.4) * ANGLES(RAD(65), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.1 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			for i=0, 1, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-45)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, 0.7) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			local GLASSES = CreatePart(3, Effects, "Fabric", 0, 1, BRICKC("Pearl"), "Glasses", VT(0,0,0), false)
    			
    			if glasses ~= nil then
        			GWeld.Part1 = GLASSES
        			GWeld.C0 = CFrame0
        			GWeld.C1 = CFrame1
        			glassesReady = true
    			end
    			
    			CreateMesh("SpecialMesh", GLASSES, "FileMesh", "1577360", "1577349", VT(1, 1.3, 1), VT(0,0,0))
    			local HELDWELD = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, GLASSES, CF(0,-1.4,0) * ANGLES(RAD(90), RAD(0), RAD(180)), CF(0,0,0))
    			CreateSound(147722227, GLASSES, 2, 1.3, false)
    			for i=0, 0.25, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(-35)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.45, -0.1) * ANGLES(RAD(30), RAD(-5), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			for i=0, 0.3, 0.1 / Animation_Speed do
    				Swait()
    				HELDWELD.C1 = Clerp(HELDWELD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(-35)), 0.1)
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.2, -0.8) * ANGLES(RAD(160), RAD(-5), RAD(-46)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.15, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			HELDWELD.Part0 = Head
    			HELDWELD.Parent = Head
    			HELDWELD.C0 = CF(0,0.1,-0.15)
    			HELDWELD.C1 = CF(0,0,0)
    			for i = 1, 3 do
    				for i=0, 0.4, 0.1 / Animation_Speed do
    					Swait()
    					HELDWELD.C1 = Clerp(HELDWELD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(-5)), 0.25)
    					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.2, -0.3) * ANGLES(RAD(160), RAD(-5), RAD(-12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.1, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				end
    				for i=0, 0.4, 0.1 / Animation_Speed do
    					Swait()
    					HELDWELD.C1 = Clerp(HELDWELD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(5)), 0.25)
    					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.1, -0.3) * ANGLES(RAD(160), RAD(-5), RAD(-12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.2, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				end
    			end
    			for i = 1, 4 do
    				Swait()
    				local SCREEN = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Cyan"), "SCREEN", VT(2.5,0.8,0)*2, false)
    				local SCREENWELD = CreateWeldOrSnapOrMotor("Weld", RootPart, RootPart, SCREEN, CF(0,0,0) * ANGLES(RAD(0),RAD((360/6)*i),RAD(0)) * CF(0,0,3+(i/1.5)), CF(0,0,0))
    				table.insert(SCREENS,SCREEN)
    				table.insert(SCREENWELDS,SCREENWELD)
    				local GUI = IT("SurfaceGui",SCREEN)
    				for i = 1, 5 do
    					local SCREENFRAME = CreateFrame(GUI, 1, 2, UD2(0, 0, ((1/5)*i)-1/5, 0), UD2(1, 0, 1/5, 0), C3(0,0,0), C3(0,0,0), "TESTING.exe")
    					local TEXT = CreateLabel(SCREENFRAME, "[BOOTING UP...]", C3(1,1,1), Enum.FontSize.Size48, "Code", 0.5, 1, 1, "RunningTests")
    					TEXT.TextXAlignment = "Left"
    					TEXT.TextWrapped = true
    					table.insert(GUISTEXT,TEXT)
    				end
    			end
    			for i=0, 1, 0.1 / Animation_Speed do
    				Swait()
    				HELDWELD.C1 = Clerp(HELDWELD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(0)), 0.4)
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.15, -0.25) * ANGLES(RAD(160), RAD(-5), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.15, -0.25) * ANGLES(RAD(160), RAD(5), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			for i=0, 0.1, 0.1 / Animation_Speed do
    				Swait()
    				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-5), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
    				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
    				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
    			end
    			GLASSESWLD = HELDWELD
    			ATTACK = false
    			Rooted = false
    		end
    	end)
    end
    function Screening(Text,FinishesMoveEnd,WaitTillFinished)
        if reanimated == true then
        	local SCREEN = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Cyan"), "SCREEN", VT(2.5,0.8,0)*1.5, false)
        	local SCREENWELD = CreateWeldOrSnapOrMotor("Weld", RootPart, RootPart, SCREEN, CF(0,0,0) * ANGLES(RAD(-12),RAD(180),RAD(0)) * CF(0,0,1.5), CF(0,0,0))
        	local GUI = IT("SurfaceGui",SCREEN)
        	local SCREENFRAME = CreateFrame(GUI, 1, 2, UD2(0, 0, 0, 0), UD2(1, 0, 1, 0), C3(0,0,0), C3(0,0,0), "TESTING.exe")
        	local TEXT = CreateLabel(SCREENFRAME, Text, C3(1,1,1), Enum.FontSize.Size48, "Code", 0.5, 1, 1, "RunningTests")
        	TEXT.TextScaled = true
        	coroutine.resume(coroutine.create(function()
        		coroutine.resume(coroutine.create(function()
        			for i = 1, 5 do
        				Swait()
        				SCREEN.Transparency = SCREEN.Transparency - 0.1/5
        			end
        		end))
        		if WaitTillFinished == false then
        			for i=0, 1.7, 0.1 / Animation_Speed do
        				Swait()
        				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 7 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.45 + 0.1 * COS(SINE / 12), -0.2) * ANGLES(RAD(45), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-44 - 1.5 * COS(SINE / 12)), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			end
        		elseif WaitTillFinished == true then
        			repeat
        				Swait()
        				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 7 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.45 + 0.1 * COS(SINE / 12), -0.2) * ANGLES(RAD(45), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-44 - 1.5 * COS(SINE / 12)), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			until ATTACK == false
        		end
        		coroutine.resume(coroutine.create(function()
        			SCREENWELD:Remove()
        			SCREEN.Anchored = true
        			for i = 1, 5 do
        				Swait()
        				SCREEN.Transparency = SCREEN.Transparency + 0.1/5
        			end
        			SCREEN:Remove()
        		end))
        		if FinishesMoveEnd == true then
        			ATTACK = false
        			Rooted = false
        		end
        	end))
        	return SCREEN,TEXT
        end
    end
    local Fling = function()
        if reanimated == true then
        	ATTACK = true
        	Rooted = false
        	Screening(";Fling",true,false)
        	wait(0.25)
        	RightShoulder.C0 = RightShoulder.C0 * CF(0,-0.12,0)
        	CreateSound(138204323, RightArm, 2, 1.3, false)
        	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character and character)
        	if HITFLOOR then
        		Debree({Delay = 4,Variant = "Ring",Location = HITPOS,Color = HITFLOOR.Color,Size = 4,Distance = 75,Material = HITFLOOR.Material,Scatter = 1,Amount = MRANDOM(75,85),DebreeCount = 8})
        	end
        	ApplyAoE(RootPart.Position-VT(0,4,0),75,5,12,550,false)
        	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(150,150,150), Transparency = 0.75, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = 610359590, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 5})
        	
        	wait(1)
        	flinging = false
        	--bodyPosition.Position = Vector3.new(Player.Character.Torso.Position.X, -10, Player.Character.Torso.Position.Z)
        end
    end
    local TpTo = function()
        if reanimated == true then
        	ATTACK = true
        	Rooted = true
        	
        	teleporting = true
        	
        	local SCR, TEXT = Screening("",false,true)
        	for i = 1, 35 do
        		Swait()
        		local TPSPOT = "TPTO: ["..math.ceil(Mouse.Hit.p.X).."."..math.ceil(Mouse.Hit.p.Y+3.15).."."..math.ceil(Mouse.Hit.p.Z).."]"
        		TEXT.Text = TPSPOT
        	end
        	RightShoulder.C0 = RightShoulder.C0 * CF(0,-0.12,0)
        	CreateSound(138204323, RightArm, 2, 1.3, false)
        	CreateSound(1127492102, Torso, 2, 1, false)
        	RootPart.CFrame = CF(Mouse.Hit.p+VT(0,3.15,0)) * ANGLES(RAD(0), RAD(RootPart.Orientation.Y), RAD(0))
        	reanimation:FindFirstChildWhichIsA("Humanoid").WalkToPoint = RootPart.CFrame.Position
        	ATTACK = false
            Rooted = false
        end
    end
    local Hurl = function()
        if reanimated == true then
        	ATTACK = true
        	Rooted = false
        	local SCREEN = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Cyan"), "SCREEN", VT(2.5,0.8,0)*1.5, false)
        	local SCREENWELD = CreateWeldOrSnapOrMotor("Weld", RootPart, RootPart, SCREEN, CF(0,0,0) * ANGLES(RAD(-12),RAD(180),RAD(0)) * CF(0,0,1.5), CF(0,0,0))
        	local GUI = IT("SurfaceGui",SCREEN)
        	local SCREENFRAME = CreateFrame(GUI, 1, 2, UD2(0, 0, 0, 0), UD2(1, 0, 1, 0), C3(0,0,0), C3(0,0,0), "TESTING.exe")
        	local TEXT = CreateLabel(SCREENFRAME, "[COLLECTING DEBREE]", C3(1,1,1), Enum.FontSize.Size48, "Code", 0.5, 1, 1, "RunningTests")
        	local ROCKS = {}
        	coroutine.resume(coroutine.create(function()
        		for i = 1, 5 do
        			Swait()
        			SCREEN.Transparency = SCREEN.Transparency - 0.1/5
        		end
        	end))
        	for i = 1, 12 do
        		local SPOT = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * CF(0,0,MRANDOM(4,15))
        		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character and character)
        		if HITFLOOR then
        			coroutine.resume(coroutine.create(function()
        				local BOULDER = CreatePart(3, Effects, HITFLOOR.Material, 0, 0, BRICKC("Cyan"), "Debree", VT(1,1,1)*(MRANDOM(5,25)/10), true)
        				BOULDER.Color = HITFLOOR.Color
        				BOULDER.CFrame = CF(HITPOS-VT(0,5,0)) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0))
        				local CFRAME = SPOT*CF(0,MRANDOM(7,12),0)
        				table.insert(ROCKS,BOULDER)
        				for i = 1, 35 do
        					Swait()
        					BOULDER.CFrame = Clerp(BOULDER.CFrame,CFRAME,0.1)
        				end
        			end))
        		end
        	end
        	for i=0, 1.7, 0.1 / Animation_Speed do
        		Swait()
        		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 7 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.75 + 0.1 * COS(SINE / 12), -0.1) * ANGLES(RAD(145), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-44 - 1.5 * COS(SINE / 12)), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        	end
        	if #ROCKS > 0 then
        		TEXT.Text = "[HURLING DEBREE]"
        		local GYRO = IT("BodyGyro",RootPart)
        		GYRO.D = 2
        		GYRO.P = 20000
        		GYRO.MaxTorque = VT(0,4000000,0)
        		GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
        		coroutine.resume(coroutine.create(function()
        			repeat
        				Swait()
        				GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
        			until ATTACK == false
        			GYRO:Remove()
        		end))
        		local THROWING = true
        		coroutine.resume(coroutine.create(function()
        			repeat
        				Swait()
        				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(25)), 1 / Animation_Speed)
        				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 7 * COS(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
        				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.45 + 0.1 * COS(SINE / 12), -0.2) * ANGLES(RAD(90), RAD(0), RAD(25)) * ANGLES(RAD(0), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.45 + 0.1 * COS(SINE / 12), -0.2) * ANGLES(RAD(44 - 1.5 * COS(SINE / 12)), RAD(0), RAD(25)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			until THROWING == false
        		end))
        		for E = 1, #ROCKS do
        			wait(0.05)
        			local ROCK = ROCKS[E]
        			coroutine.resume(coroutine.create(function()
        				ROCK.CFrame = CF(ROCK.Position,Mouse.Hit.p)
        				CreateSound(147722227, ROCK, 2, 1.3, false)
        				local KILL = false
        				for i = 1, 70 do
        					Swait()
        					for i = 1, 4 do
        						ROCK.CFrame = ROCK.CFrame * CF(0,0,-ROCK.Size.Z/2)
        						local HIT,POS,NORMAL = Raycast(ROCK.Position,ROCK.CFrame.lookVector,ROCK.Size.Z/1.5,Character)
        						if HIT then
        							KILL = true
        							CreateSound(174580476, ROCK, 2, 1.6, false)
        							ApplyAoE(ROCK.Position,6*ROCK.Size.Z,25,35,12,false)
        							for E = 1, 2 do
        								for i = 1, 4 do
        									WACKYEFFECT({Time = 50, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = (VT(E,0,E)/15)*ROCK.Size.Z, Transparency = 0.8, Transparency2 = 1, CFrame = CF(ROCK.Position) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
        								end
        							end
        							Debree({Delay = 0.8,Variant = "Loose",Location = ROCK.Position,Color = ROCK.Color,Size = ROCK.Size.Z/3,Distance = 75,Material = ROCK.Material,Scatter = 35,Amount = MRANDOM(75,85),DebreeCount = 8})
        							break
        						else
        							WACKYEFFECT({Time = 6, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(3,1,3)*ROCK.Size.Z, Transparency = 0.97, Transparency2 = 1, CFrame = ROCK.CFrame*CF(0,0,-ROCK.Size.Z/2) * ANGLES(RAD(90), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = MRANDOM(-1,1), RotationY = MRANDOM(-1,1), RotationZ = MRANDOM(-1,1), Material = "Neon", Color = BRICKC"Cyan".Color, SoundID = nil, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 25})
        						end
        					end
        					if KILL == true then
        						break
        					end
        				end
        				ROCK.Transparency = 1
        				Debris:AddItem(ROCK,5)
        			end))
        			wait(0.05)
        		end
        		THROWING = false
        	end
        	coroutine.resume(coroutine.create(function()
        		SCREENWELD:Remove()
        		SCREEN.Anchored = true
        		for i = 1, 5 do
        			Swait()
        			SCREEN.Transparency = SCREEN.Transparency + 0.1/5
        		end
        		SCREEN:Remove()
        	end))
        	ATTACK = false
        	Rooted = false
        	
        	wait(1)
        	flinging = false
        	--bodyPosition.Position = Vector3.new(Player.Character.Torso.Position.X, -10, Player.Character.Torso.Position.Z)
        end
    end
    local Kill = function()
        if reanimated == true then
        	local TARGET = Mouse.Target
        	if TARGET ~= nil then
        		if TARGET.Parent:FindFirstChildOfClass("Humanoid") then
        			local HUM = TARGET.Parent:FindFirstChildOfClass("Humanoid")
        			local ROOT = HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso") --HUM.Parent:FindFirstChild("HumanoidRootPart") or 
        			if ROOT then -- and HUM.Health > 0
        				local FOE = ROOT.Parent
        				ATTACK = true
        				Rooted = false
        				Screening(";Kill",true,false)
        				wait(0.25)
        				RightShoulder.C0 = RightShoulder.C0 * CF(0,-0.12,0)
        				CreateSound(138204323, RightArm, 2, 1.3, false)
        				for index, CHILD in pairs(FOE:GetChildren()) do
        					if CHILD:IsA("BasePart") then
        						if CHILD.Name == "Head" then
        							WACKYEFFECT({Time = MRANDOM(10,30), EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)*2, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
        						elseif CHILD.Name ~= "HumanoidRootPart" then
        							WACKYEFFECT({Time = MRANDOM(10,30), EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size*2, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 35})
        						end
        					end
        				end
        				--bodyPosition.Position = ROOT.Position --FOE:BreakJoints()
        				flinging = true
        				GetCHILD(ROOT.Parent)
        				wait(1)
        				flinging = false
        				--bodyPosition.Position = Vector3.new(Player.Character.Torso.Position.X, -10, Player.Character.Torso.Position.Z)
        			end
        		end
        	end
        end
    end
    local ATTAC = function()
        if reanimated == true then
        	ATTACK = true
        	Rooted = false
        	for i=0, 1, 0.1 / Animation_Speed do
        		Swait()
        		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-5), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(5), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        	end
        	ATTACK = false
        	Rooted = false
        end
    end
    local LITTLEIDLE = false
    function UniqueIdleAnimation()
        if reanimated == true then
        	coroutine.resume(coroutine.create(function()
        		for i=0, 0.1, 0.1 / Animation_Speed do
        			Swait()
        			if ATTACK == true or ANIM ~= "Idle" then
        				break
        			end
        			GLASSESWLD.C1 = Clerp(GLASSESWLD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(0)), 0.25)
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.1, -0.3) * ANGLES(RAD(80), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        		for i=0, 0.4, 0.1 / Animation_Speed do
        			Swait()
        			if ATTACK == true or ANIM ~= "Idle" then
        				break
        			end
        			GLASSESWLD.C1 = Clerp(GLASSESWLD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(0)), 0.25)
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.1, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        		for i=0, 1.3, 0.1 / Animation_Speed do
        			Swait()
        			if ATTACK == true or ANIM ~= "Idle" then
        				break
        			end
        			GLASSESWLD.C1 = Clerp(GLASSESWLD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(5)), 0.2 / Animation_Speed)
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.15, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        		for i=0, 0.3, 0.1 / Animation_Speed do
        			Swait()
        			if ATTACK == true or ANIM ~= "Idle" then
        				break
        			end
        			GLASSESWLD.C1 = Clerp(GLASSESWLD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(0)), 1 / Animation_Speed)
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.05, -0.3) * ANGLES(RAD(160), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        		for i=0, 0.1, 0.1 / Animation_Speed do
        			Swait()
        			if ATTACK == true or ANIM ~= "Idle" then
        				break
        			end
        			GLASSESWLD.C1 = Clerp(GLASSESWLD.C1, CF(0,0,0) * ANGLES(RAD(0),RAD(0),RAD(0)), 0.25)
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.1, -0.3) * ANGLES(RAD(80), RAD(5), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        		LITTLEIDLE = false
        	end))
        end
    end
    
    --//=================================\\
    --||	     GUIS AND KEYS
    --\\=================================//
    
    local COLOR = C3(1,1,1)
    local SKILLFONT = "Legacy"
    local SIZE = 2.5
    local MOUSE = 2097542191
    local MELEE = 2097543015
    local BODY = 2097543382
    local PROJECTILE = 2097544084
    local AOE = 2097544884
    local ULTIMATE = 2097545381
    
    local ATTACKS = {{"Switch ScreenBehaviour","m"},{";Fling","z",AOE,Fling},{";TpTo","x",BODY,TpTo},{";Hurl","c",PROJECTILE,Hurl},{";Kill","v",MOUSE,Kill}}
    local GUIS = {}
    
    for i = 1, #ATTACKS do
    	local SKILLFRAME = CreateFrame(WEAPONGUI, 0.8, 2, UD2(1-(0.3*(SIZE/5)), 0, 1-((0.08*(SIZE/5))*i), 0), UD2(0.3*(SIZE/5), 0, 0.06*(SIZE/4), 0), C3(0,0,0), COLOR, "Skill Frame")
    	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i][1].."]", COLOR, SIZE, SKILLFONT, 0, 2, 0, "Skill text")
    	SKILLTEXT.TextXAlignment = "Right"
    	local BUTTONDISPLAY = CreateLabel(SKILLFRAME, "["..string.upper(ATTACKS[i][2]).."]", COLOR, SIZE-1, SKILLFONT, 0, 2, 0, "Skill text")
    	BUTTONDISPLAY.TextXAlignment = "Left"
    	if ATTACKS[i][3] then
    		local IMAGETODISPLAY = IT("ImageLabel",SKILLFRAME)
    		IMAGETODISPLAY.Image = "rbxassetid://"..ATTACKS[i][3]
    		IMAGETODISPLAY.Size = UD2(0.2,0,1,0)
    		IMAGETODISPLAY.Position = UD2(0.065,0,0,0)
    		IMAGETODISPLAY.BackgroundTransparency = 1
    		IMAGETODISPLAY.ZIndex = 0
    	end
    	table.insert(GUIS,SKILLTEXT)
    end
    
    Mouse.Button1Down:connect(function(NEWKEY)
    	
    end)
    Mouse.Button1Up:connect(function(NEWKEY)
    	
    end)
    Mouse.KeyDown:connect(function(NEWKEY)
    	KEYHOLD = true
    	if NEWKEY == "m" then
    		if SC == false then
    			SC = true
    		else
    			SC = false
    		end
    	end
    	if ATTACK == false then
    		for E = 1, #ATTACKS do
    			if ATTACKS[E][4] ~= nil then
    				if NEWKEY == ATTACKS[E][2] then
    					ATTACKS[E][4]()
    				end
    			end
    		end
    	end
    end)
    Mouse.KeyUp:connect(function(NEWKEY)
    	KEYHOLD = false
    end)
    
    --//=================================\\
    --\\=================================//
    
    function unanchor()
    	for _, c in pairs(Character:GetChildren()) do
    		if c:IsA("BasePart") and c ~= RootPart then
    			c.Anchored = false
    		end
    	end
    	if UNANCHOR == true then
    		RootPart.Anchored = false
    	else
    		RootPart.Anchored = true
    	end
    end
    
    --//=================================\\
    --||	WRAP THE WHOLE SCRIPT UP
    --\\=================================//
    
    Humanoid.Changed:connect(function(Jump)
    	if Jump == "Jump" and (Disable_Jump == true) then
    		Humanoid.Jump = false
    	end
    end)
    
    local MOVINGSCREENS = false
    local TIMESTAMP = 0
    game:GetService('RunService').Stepped:Connect(function()
        if reanimated == true then
            Swait()
        	--script.Parent = WEAPONGUI
        	--ANIMATE.Parent = nil
        	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
        	    v:Stop();
        	end
        	SINE = SINE + CHANGE
        	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
        	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
        	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character and character)
        	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
        	if ANIM == "Walk" and TORSOVELOCITY > 1 then
        		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
        		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
        	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
        		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
        		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
        	end
        	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then --
        		ANIM = "Jump"
        		if ATTACK == false then
        			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then --
        		ANIM = "Fall"
        		if ATTACK == false then
        			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        		end
        	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
        		ANIM = "Idle"
        		if ATTACK == false then
        			if MRANDOM(1,650) == 1 and LITTLEIDLE == false then
        				LITTLEIDLE = true
        				UniqueIdleAnimation()
        			end
        			if LITTLEIDLE == false then
        				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * COS(SINE / 24), 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0 - 2.5 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
        				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(3 - 7 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-45 - 1.5 * COS(SINE / 12)), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.35 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(-44 - 1.5 * COS(SINE / 12)), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-2 - 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.035 * COS(SINE / 24) - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2 + 2.5 * COS(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
        			end
        		end
        	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
        		ANIM = "Walk"
        		if ATTACK == false then
        			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(-7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
        			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
        			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(-5), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
        			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(5), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
        			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
        			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
        		end
        	end
        	unanchor()
        	Humanoid.MaxHealth = 1e3
        	Humanoid.Health = 1e3
        	if Rooted == false then
        		Disable_Jump = false
        		Humanoid.WalkSpeed = Speed
        	elseif Rooted == true then
        		Disable_Jump = true
        		Humanoid.WalkSpeed = 0
        	end
        	BMUSIC.SoundId = "rbxassetid://"..SONGID
        	BMUSIC.Looped = true
        	BMUSIC.Pitch = PITCH
        	BMUSIC.Volume = VOLUME
        	BMUSIC.Playing = PLAYING
        	BMUSIC.EmitterSize = 50
        	if BMUSIC.Parent ~= RootPart then
        		print("Fixing music")
        		BMUSIC = IT("Sound",RootPart)
        		BMUSIC.SoundId = "rbxassetid://"..SONGID
        		BMUSIC.Looped = true
        		BMUSIC.Pitch = PITCH
        		BMUSIC.Volume = VOLUME
        		BMUSIC.Playing = true
        		BMUSIC.EmitterSize = 50
        		BMUSIC.TimePosition = TIMESTAMP
        		FIXING = true
        	else
        		if FIXING == false then
        			TIMESTAMP = BMUSIC.TimePosition
        		else
        			FIXING = false
        		end
        	end
        	if Head:FindFirstChild("face") then
        		Head.face.Texture = "rbxassetid://62682458"
        	end
        	Humanoid.Name = "ADMIN"
        	if INTRO == false and ATTACK == false then
        		INTRO = true
        		coroutine.resume(coroutine.create(function()
        			IntroThing()
        		end))
        	end
        	if #SCREENS > 0 then
        		for E = 1, #SCREENS do
        			SCREENS[E].Transparency = MRANDOM(90,99)/100
        		end
        	end
        	if #SCREENWELDS > 0 then
        		if SC == true then
        			if MRANDOM(1,75) == 1 and MOVINGSCREENS == false then
        				MOVINGSCREENS = true
        				coroutine.resume(coroutine.create(function()
        					wait(1)
        					MOVINGSCREENS = false
        				end))
        				for E = 1, #SCREENWELDS do
        					coroutine.resume(coroutine.create(function()
        						local MATH1 = MRANDOM(-25,25)/10+1
        						local MATH2 = MRANDOM(-45,45)
        						for i = 1, 55 do
        							Swait()
        							SCREENWELDS[E].C0 = Clerp(SCREENWELDS[E].C0, CF(0,MATH1,0) * ANGLES(RAD(0), RAD(MATH2+180), RAD(0)) * CF(0,0,3+(E/1.5)),0.1)
        						end
        					end))
        				end
        			end
        		elseif SC == false then
        			for E = 1, #SCREENWELDS do
        				if E == 1 then
        					SCREENWELDS[E].C0 = Clerp(SCREENWELDS[E].C0, CF(0,-1 + 0.05 * COS(SINE / 12),0) * ANGLES(RAD(0), RAD(-40+180), RAD(0)) * CF(0,0,3.4),0.1)
        				elseif E == 2 then
        					SCREENWELDS[E].C0 = Clerp(SCREENWELDS[E].C0, CF(0,-1 + 0.05 * SIN(SINE / 12),0) * ANGLES(RAD(0), RAD(40+180), RAD(0)) * CF(0,0,3.4),0.1)
        				elseif E == 3 then
        					SCREENWELDS[E].C0 = Clerp(SCREENWELDS[E].C0, CF(0,1.3 + 0.05 * SIN(SINE / 12),0) * ANGLES(RAD(0), RAD(-38+180), RAD(0)) * CF(0,0,3.4),0.1)
        				elseif E == 4 then
        					SCREENWELDS[E].C0 = Clerp(SCREENWELDS[E].C0, CF(0,1.3 + 0.05 * COS(SINE / 12),0) * ANGLES(RAD(0), RAD(38+180), RAD(0)) * CF(0,0,3.4),0.1)
        				end
        			end
        		end
        	end
        	local SECONDS = math.floor(workspace.DistributedGameTime)
        	local MINUTES = math.floor(workspace.DistributedGameTime/60)
        	local HOURS = math.floor(workspace.DistributedGameTime/60/60)
        	local SECONDS = SECONDS - (MINUTES * 60)
        	local MINUTES = MINUTES - (HOURS * 60)
        	if #GUISTEXT > 0 then
        		for E = 1, #GUISTEXT do
        			local TXT = GUISTEXT[E]
        			if E == 1 then
        				TXT.Text = "SERVER STATS;"
        			elseif E == 2 then
        				TXT.Text = "SERVER TIME = ["..SECONDS..":"..MINUTES..":"..HOURS.."]"
        			elseif E == 3 then
        				TXT.Text = "WORKSPACE GRAVITY = ["..workspace.Gravity.."]"
        			elseif E == 4 then
        				TXT.Text = "SERVER JOBID = ["..game.JobId.."]"
        			elseif E == 5 then
        				TXT.Text = "SERVER VERSION = ["..game.PlaceVersion.."]"
        			end
        		end
        	end
        	local SPACEJECTS = {}
        	for index, CHILD in pairs(workspace:GetChildren()) do
        		table.insert(SPACEJECTS,CHILD)
        	end
        	table.insert(SPACEJECTS,game.Lighting)
        	table.insert(SPACEJECTS,game.Workspace)
        	local MALWARE = {"BlurEffect","BloomEffect","Fire","ParticleEmitter","Smoke"}
        	if #GUISTEXT > 0 then
        		if MRANDOM(1,125) == 1 then
        			for E = 1, #GUISTEXT do
        				local TXT = GUISTEXT[E]
        				local TEXT = ""
        				local DOINGS = {"MONITORING","CHECKING"}
        				local OLDTEXT = string.sub(TXT.Text,3)
        				if E > 5 then
        					if E <= 15 then
        						if MRANDOM(1,3) == 1 then
        							repeat
        								local MONITORME = SPACEJECTS[MRANDOM(1,#SPACEJECTS)]
        								if MRANDOM(1,2) == 1 then
        									TEXT = DOINGS[MRANDOM(1,#DOINGS)].."; ["..MONITORME.Name.."]..."
        									for Z = 1, #MALWARE do
        										if MONITORME:FindFirstChildOfClass(MALWARE[Z]) then
        											TEXT = "!FOUND MALICIOUS CONTENT IN ["..MONITORME.Name.."]; FOUND: ["..MALWARE[Z].."]"
        											if TEXT ~= OLDTEXT then
        												CreateSound(136075117, TXT.Parent.Parent, 0.6, MRANDOM(8,12)/10)
        											end
        											TXT.TextColor3 = C3(1,0,0)
        											break
        										else
        											TXT.TextColor3 = C3(1,1,1)
        										end
        									end
        									break
        								end
        								if MRANDOM(1,6) == 1 and TXT.TextColor3 == C3(1,1,1) then
        									local ES = {"SUCCES.","!FAILURE!"}
        									TEXT = "TESTING FILE #"..MRANDOM(100,999).." ["..ES[MRANDOM(1,#ES)].."]"
        								end
        							until TEXT ~= ""
        							local DESIREDTEXT = ">>"..TEXT
        							TXT.Text = DESIREDTEXT
        						end
        					elseif E > 15 then
        						local N = E-15
        						local POP = 0
        						repeat
        							for index, CHILD in pairs(game:GetService("Players"):GetChildren()) do
        								POP = POP + 1
        								if POP == N then
        									TEXT = "MONITORING USER; ".."["..CHILD.Name.."]..."
        									break
        								else
        									TEXT = "NOP"
        								end
        							end
        						until TEXT ~= ""
        						if TEXT ~= "NOP" then
        							local DESIREDTEXT = ">>"..TEXT
        							TXT.Text = DESIREDTEXT
        						else
        							TXT.Text = ""
        						end
        					end
        				end
        			end
        		end
        	end
        end
    end)
    
    --//=================================\\
    --\\=================================//
    
    while reanimated == true do
        Positioning()
    end
    
    
    
    --//====================================================\\--
    --||			  		 END OF SCRIPT
    --\\====================================================//--
end


--Functions--
--Information
local function Information(title, description, scaled)
    -- Instances:
    
    local Information = Instance.new("Frame")
    local DescriptionFrame = Instance.new("Frame")
    local Description = Instance.new("TextLabel")
    local Title = Instance.new("TextLabel")
    
    --Properties:
    
    Information.Name = "Information"
    Information.Parent = MainFrame
    Information.Active = true
    Information.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
    Information.Position = UDim2.new(1.02117348, 0, -0.000556112325, 0)
    Information.Selectable = true
    Information.Size = UDim2.new(0, 240, 0, 238)
    
    DescriptionFrame.Name = "DescriptionFrame"
    DescriptionFrame.Parent = Information
    DescriptionFrame.Active = true
    DescriptionFrame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    DescriptionFrame.Position = UDim2.new(0, 0, 0.276556075, 0)
    DescriptionFrame.Selectable = true
    DescriptionFrame.Size = UDim2.new(0, 240, 0, 159)
    
    Description.Name = "Description"
    Description.Parent = DescriptionFrame
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1.000
    Description.Position = UDim2.new(0.0170000009, 0, 0.016, 0)
    Description.Size = UDim2.new(0, 233, 0, 154)
    Description.Font = Enum.Font.SourceSans
    Description.Text = description
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.TextScaled = scaled
    Description.TextSize = 20.000
    Description.TextWrapped = true
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextYAlignment = Enum.TextYAlignment.Top
    
    Title.Name = "Title"
    Title.Parent = Information
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0, 0, 0.0350000001, 0)
    Title.Size = UDim2.new(0, 240, 0, 41)
    Title.Font = Enum.Font.SourceSans
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(0, 0, 0)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
end

--Resetting
local function ResetGUI()
    --Value
    game.CoreGui:FindFirstChild("ResetGUIValue").Value = true
    
    --GUI
    local Resetting = Instance.new("ScreenGui")
    local MFReset = Instance.new("Frame")
    local TextFrame = Instance.new("Frame")
    local ResetText = Instance.new("TextLabel")
    
    Resetting.Name = "Resetting"
    Resetting.Parent = game.CoreGui
    Resetting.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MFReset.Name = "MFReset"
    MFReset.Parent = Resetting
    MFReset.Active = true
    MFReset.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
    MFReset.Position = UDim2.new(-0.25, 0, 0.00999999978, 0)
    MFReset.Selectable = true
    MFReset.Size = UDim2.new(0, 271, 0, 91)
    
    TextFrame.Name = "TextFrame"
    TextFrame.Parent = MFReset
    TextFrame.Active = true
    TextFrame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    TextFrame.BorderSizePixel = 0
    TextFrame.Position = UDim2.new(0, 0, 0.127000004, 0)
    TextFrame.Selectable = true
    TextFrame.Size = UDim2.new(0, 271, 0, 68)
    
    ResetText.Name = "ResetText"
    ResetText.Parent = TextFrame
    ResetText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ResetText.BackgroundTransparency = 1.000
    ResetText.Position = UDim2.new(0.0544351302, 0, 0.178778589, 0)
    ResetText.Size = UDim2.new(0, 241, 0, 45)
    ResetText.Font = Enum.Font.SourceSans
    ResetText.Text = "Press Shift + R to reset."
    ResetText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ResetText.TextScaled = true
    ResetText.TextSize = 20.000
    ResetText.TextWrapped = true
    
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local model = character:FindFirstChild("FakeCharacter").Reanimation
    local reanimation = model
    
    --Movement
    --Permanent Death 
    MFReset:TweenPosition(UDim2.new(0.408, 0, 0.01, 0), "Out", "Quad", 1, false)
    game.Players.LocalPlayer.Character = model
    wait(2.5)
    game.Players.LocalPlayer.Character = character
    wait(1.5)
    MFReset:TweenPosition(UDim2.new(1.25, 0, 0.01, 0), "In", "Quad", 1, false)
    wait(1.5)
    if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        character:BreakJoints()
    end
    character.Humanoid.AutoRotate = false
    reanimation.Humanoid.WalkSpeed = 16
    reanimation.Humanoid.JumpPower = 50
    character.Humanoid.WalkSpeed = 16
    character.Humanoid.JumpPower = 50
    if character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        character.Humanoid.BreakJointsOnDeath = false
        for i,v in pairs(character:GetDescendants()) do
            if v:IsA("Motor6D") and v.Parent.Parent.Name ~= "Reanimation" then
                v:Destroy()
            end
            
            if v.Name == "Handle" and v.Parent.Parent.Name ~= "Reanimation" then
                v:FindFirstChildWhichIsA("Weld"):Destroy()
            end
        end
    end
    Resetting:Destroy()
end
-------------

--Reanimation Functions--
local function R6FakeCharacter()----------------------------------------------------------------------
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character.HumanoidRootPart
    local torso = character.Torso
    local glassesList = "VarietyShades02", "e"

    for i,v in pairs(character:GetChildren()) do
        if v:IsA("LocalScript") then
            v:Destroy()
        end
    end
    
    local camera = workspace.CurrentCamera
    
    local reanimFolder = Instance.new("Folder", character)
    reanimFolder.Name = "FakeCharacter"
    
    local model = Instance.new("Model", reanimFolder)
    model.Name = "Reanimation"
    --local humanoidClone = Instance.new("Humanoid", model)
    
    --Making Fake Character
    for i,v in pairs(character:GetChildren()) do
        if v:IsA("Part") or v:IsA("BodyColors") or v.Name == "Humanoid" then --v.Name ~= --and not v:
            local clone = v:Clone()
            clone.Parent = model
            if clone:FindFirstChildWhichIsA("Decal") then
                clone:FindFirstChildWhichIsA("Decal"):Destroy()
            end
            if clone:FindFirstChildWhichIsA("Sound") then
               clone:FindFirstChildWhichIsA("Sound"):Destroy() 
            end
        end
    end
    
    --Fixing Joints For The Fake Character
    local reanimation = reanimFolder.Reanimation
    local cTorso = reanimation.Torso
    local cHRP = reanimation.HumanoidRootPart

    cTorso["Right Shoulder"].Part0 = cTorso
    cTorso["Right Shoulder"].Part1 = reanimation["Right Arm"]
    
    cTorso["Left Shoulder"].Part0 = cTorso
    cTorso["Left Shoulder"].Part1 = reanimation["Left Arm"]
    
    cTorso["Right Hip"].Part0 = cTorso
    cTorso["Right Hip"].Part1 = reanimation["Right Leg"]
    
    cTorso["Left Hip"].Part0 = cTorso
    cTorso["Left Hip"].Part1 = reanimation["Left Leg"]
    
    cTorso.Neck.Part0 = cTorso
    cTorso.Neck.Part1 = reanimation.Head
    
    reanimation.Humanoid.DisplayDistanceType = "None"
    reanimation.Humanoid.Health = 0
    
    cHRP.RootJoint.Part0 = cHRP
    cHRP.RootJoint.Part1 = cTorso
    
    reanimation.PrimaryPart = character.Head
    
    --character.Torso.Anchored = true
    reanimation.Humanoid.WalkSpeed = 0
    reanimation.Humanoid.JumpPower = 0
    character.Humanoid.WalkSpeed = 0
    character.Humanoid.JumpPower = 0
    
    --Transparency
    for i,v in pairs(reanimation:GetChildren()) do
        if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
            v.Transparency = 1
        end
    end
    
    --Cloning Hats (For Netless)
    if bot == false then
        for i,v in pairs(character:GetChildren()) do
            if v:IsA("Accessory") then
                local clone = v:Clone()
                local weld = v.Handle:FindFirstChildWhichIsA("Weld")
                local weldPart1 = weld.Part1
                local newWeld = Instance.new("Weld", clone.Handle)
                local CFrame0 = v.Handle.AccessoryWeld.C0
                local CFrame1 = v.Handle.AccessoryWeld.C1
                
                clone.Parent = reanimation
                newWeld.Name = "AccessoryWeld"
                newWeld.C0 = CFrame0
                newWeld.C1 = CFrame1
                newWeld.Part0 = clone.Handle
                newWeld.Part1 = reanimation:FindFirstChild(weldPart1.Name)
                clone.Handle.Transparency = 1
            end
        end
    elseif character:FindFirstChild(glassesList) then
        local g = character:FindFirstChild(glassesList)
        local clone = g:Clone()
        local weld = g.Handle:FindFirstChildWhichIsA("Weld")
        local weldPart1 = weld.Part1
        local newWeld = Instance.new("Weld", clone.Handle)
        local CFrame0 = g.Handle.AccessoryWeld.C0
        local CFrame1 = g.Handle.AccessoryWeld.C1
        
        clone.Parent = reanimation
        newWeld.Name = "AccessoryWeld"
        newWeld.C0 = CFrame0
        newWeld.C1 = CFrame1
        newWeld.Part0 = clone.Handle
        newWeld.Part1 = reanimation:FindFirstChild(weldPart1.Name)
        clone.Handle.Transparency = 1
    end
end----------------------------------------------------------------------

local function R15FakeCharacter()
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character.HumanoidRootPart
    --local torso = character.Torso

    for i,v in pairs(character:GetChildren()) do
        if v:IsA("LocalScript") then
            v:Destroy()
        end
    end
    
    local camera = workspace.CurrentCamera
    
    local reanimFolder = Instance.new("Folder", character)
    reanimFolder.Name = "FakeCharacter"
    
    local model = Instance.new("Model", reanimFolder)
    model.Name = "Reanimation"
    
    local userInputService = game:GetService("UserInputService")
    local movingW, movingA, movingS, movingD, jumping = false
    
    --Body Parts--
    --Head
    local cHead = Instance.new("Part", model)
    cHead.Size = Vector3.new(2, 1, 1)
    cHead.Name = "Head"
    --cHead.Transparency = 0.5
    
    --Torso
    local cTorso = Instance.new("Part", model)
    cTorso.Size = Vector3.new(2, 2, 1)
    cTorso.Name = "Torso"
    --cTorso.Transparency = 0.5
    
    --Left Arm
    local cLArm = Instance.new("Part", model)
    cLArm.Size = Vector3.new(1, 2, 1)
    cLArm.Name = "Left Arm"
    --cLArm.Transparency = 0.5
    
    --Right Arm
    local cRArm = Instance.new("Part", model)
    cRArm.Size = Vector3.new(1, 2, 1)
    cRArm.Name = "Right Arm"
    --cRArm.Transparency = 0.5
    
    --Left Leg
    local cLLeg = Instance.new("Part", model)
    cLLeg.Size = Vector3.new(1, 2, 1)
    cLLeg.Name = "Left Leg"
    --cLLeg.Transparency = 0.5
    
    --Right Leg
    local cRLeg = Instance.new("Part", model)
    cRLeg.Size = Vector3.new(1, 2, 1)
    cRLeg.Name = "Right Leg"
    --cRLeg.Transparency = 0.5
    
    --HumanoidRootPart
    local cHRP = Instance.new("Part", model)
    cHRP.Size = Vector3.new(2, 2, 1)
    cHRP.Name = "HumanoidRootPart"
    cHRP.Transparency = 1
    cHRP.CanCollide = false
    
    --Transparency
    for i,v in pairs(model:GetChildren()) do
        if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
            v.Transparency = 1--0.5
        end
    end
    
    --Joints--
    --Right Shoulder
    local rShoulder = Instance.new("Motor6D", cTorso)
    rShoulder.Part0 = cTorso
    rShoulder.Part1 = cRArm
    rShoulder.Name = "Right Shoulder"
    rShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    rShoulder.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    
    --Left Shoulder
    local lShoulder = Instance.new("Motor6D", cTorso)
    lShoulder.Part0 = cTorso
    lShoulder.Part1 = cLArm
    lShoulder.Name = "Left Shoulder"
    lShoulder.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    lShoulder.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    
    --Right Hip
    local rHip = Instance.new("Motor6D", cTorso)
    rHip.Part0 = cTorso
    rHip.Part1 = cRLeg
    rHip.Name = "Right Hip"
    rHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    rHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    
    --Left Hip
    local lHip = Instance.new("Motor6D", cTorso)
    lHip.Part0 = cTorso
    lHip.Part1 = cLLeg
    lHip.Name = "Left Hip"
    lHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    lHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    
    --Neck
    local neck = Instance.new("Motor6D", cTorso)
    neck.Part0 = cTorso
    neck.Part1 = cHead
    neck.Name = "Neck"
    neck.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    neck.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    
    --RootJoint
    local rootJoint = Instance.new("Motor6D", cHRP)
    rootJoint.Part0 = cHRP
    rootJoint.Part1 = cTorso
    rootJoint.Name = "RootJoint"
    rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    rootJoint.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    
    --Humanoid--
    local cHumanoid = Instance.new("Humanoid", model)
    cHumanoid.DisplayDistanceType = "None"
    
    --Head Mesh--
    local headMesh = Instance.new("SpecialMesh", cHead)
    headMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
    
    local reanimation = model
    
    --Cloning Hats (For Netless)
    if permaDeath == true then
        for i,v in pairs(character:GetChildren()) do
            if v:IsA("Accessory") then
                local clone = v:Clone()
                local weld = v.Handle:FindFirstChildWhichIsA("Weld")
                local weldPart1 = weld.Part1
                local newWeld = Instance.new("Weld", clone.Handle)
                local CFrame0 = v.Handle.AccessoryWeld.C0
                local CFrame1 = v.Handle.AccessoryWeld.C1
                
                clone.Handle:FindFirstChild("AccessoryWeld"):Destroy()
                clone.Parent = reanimation
                newWeld.Name = "AccessoryWeld"
                newWeld.C0 = CFrame0
                newWeld.C1 = CFrame1
                newWeld.Part0 = clone.Handle
                newWeld.Part1 = character:FindFirstChild(weldPart1.Name)
                clone.Handle.Transparency = 1
            end
        end
    end
    
    cHRP.CFrame = hrp.CFrame
end

local function ReanimationMovement()----------------------------------------------------------------------
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local reanimation = character:WaitForChild("FakeCharacter").Reanimation
    local camera = workspace.CurrentCamera
    
    local userInputService = game:GetService("UserInputService")
    local movingW, movingA, movingS, movingD, jumping = false
    
    userInputService.InputBegan:Connect(function(key, chatting)
        if reanimated == true then
            --Activate Jumping
            if key.KeyCode == Enum.KeyCode.Space and not chatting then
                jumping = true
            end
            
            --Activate Movement
            if key.KeyCode == Enum.KeyCode.W and not chatting then
                movingW = true
            end
            
            if key.KeyCode == Enum.KeyCode.A and not chatting then
                movingA = true
            end
            
            if key.KeyCode == Enum.KeyCode.S and not chatting then
                movingS = true
            end
             
            if key.KeyCode == Enum.KeyCode.D and not chatting then
                movingD = true
            end
            
            --Resetting
            if key.KeyCode == Enum.KeyCode.LeftShift and not chatting then
                pressingShift = true
            end
            
            if key.KeyCode == Enum.KeyCode.R and not chatting and pressingShift == true then
                player.Character = reanimation
                reanimation:BreakJoints()
                reanimated = false
                if player.PlayerGui:FindFirstChild("Weapon GUI") then
                    player.PlayerGui:FindFirstChild("Weapon GUI"):Destroy()
                end
                if bot == false and character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                    if character:FindFirstChild("Head") then
                        camera.CameraSubject = character.Head
                    end
                end
            end
        end
    end)
    
    userInputService.InputEnded:Connect(function(key, chatting)
        if reanimated == true then
            --Deactivate Jumping
            if key.KeyCode == Enum.KeyCode.Space and not chatting then
                jumping = false
            end
            
            --Deactivate Movement
            if key.KeyCode == Enum.KeyCode.W and not chatting then
                movingW = false
            end
            
            if key.KeyCode == Enum.KeyCode.A and not chatting then
                movingA = false
            end
            
            if key.KeyCode == Enum.KeyCode.S and not chatting then
                movingS = false
            end
             
            if key.KeyCode == Enum.KeyCode.D and not chatting then
                movingD = false
            end
            
            --Resetting
            if key.KeyCode == Enum.KeyCode.LeftShift and not chatting then
                pressingShift = false
            end
        end
    end)
    
    
    game:GetService('RunService').Stepped:Connect(function()
        if reanimated == true then
            --Movement
            if movingW == true or movingA == true or movingS == true or movingD == true then
                reanimation:FindFirstChildWhichIsA("Humanoid").WalkToPoint = character:FindFirstChildWhichIsA("Humanoid").MoveDirection * 10000
            else
                reanimation:FindFirstChildWhichIsA("Humanoid").WalkToPoint = reanimation.Torso.Position
            end
            
            --Jumping
            if jumping == true then
                reanimation:FindFirstChildWhichIsA("Humanoid").Jump = true
            end
            
            --Resetting
            if not character:FindFirstChild("Humanoid") then
                player.Character = nil
                reanimated = false
            end
        end
    end)
end----------------------------------------------------------------------

local function Loops()----------------------------------------------------------------------
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    
    game:GetService('RunService').Stepped:Connect(function()
        if reanimated == true then
            --Character Collision
            for i,v in pairs(character:GetChildren()) do
                if v:IsA("Part") or v:IsA("MeshPart") then --  --  and v.Name ~= "HumanoidRootPart"
                    v.CanCollide = false
                end
            end
        end
    end)
    
    game:GetService("RunService").Heartbeat:Connect(function()
        if reanimated == true then
            --Netless Velocity
            --Flinging
            for i,v in pairs(character:GetChildren()) do
                --Body Parts
                if (v:IsA("Part") or v:IsA("MeshPart")) and bot == false then
                    v.Velocity = Vector3.new(-17.7, 0, -17.7)
                end
                
                if v:IsA("Part") and v.Name == "HumanoidRootPart" then
                    v.Velocity = Vector3.new(20, 0, 20)
                end
                
                --Hats
                if v:IsA("Accessory") then
                    if bot == false then
                        if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                            v.Handle.Velocity = Vector3.new(20, 0, 20)
                        else
                            v.Handle.Velocity = Vector3.new(40, 0, 40)
                        end
                    else
                        if v.Name == botHats[1] or v.Name == botHats[2] or v.Name == botHats[3] or v.Name == botHats[4] or v.Name == botHats[7] or v.Name == botHats[8] then
                            v.Handle.Velocity = Vector3.new(50, 0, 50)
                        end
                        
                        if v.Name == botHats[5] or v.Name == botHats[6] then
                            v.Handle.Velocity = Vector3.new(75, 0, 75)
                        end
                    end
                end
            end
        end
    end)
end----------------------------------------------------------------------

local function PermaDeath()----------------------------------------------------------------------
    --Destroying The GUI
    NetlessServerAdmin:Destroy()
    
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character.HumanoidRootPart
    local camera = workspace.CurrentCamera
    
    permaDeath = true
    
    if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        R6FakeCharacter()
    else
        R15FakeCharacter()
    end
    
    local reanimation = character:WaitForChild("FakeCharacter").Reanimation
    
    --Permanent Death 
    if game.CoreGui.ResetGUIValue.Value == false then
        ResetGUI()
    else
        game.Players.LocalPlayer.Character = reanimation
        wait(2.5)
        game.Players.LocalPlayer.Character = character
        wait(3)
        if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            character:BreakJoints()
        end
        character.Humanoid.AutoRotate = false
        reanimation.Humanoid.WalkSpeed = 16
        reanimation.Humanoid.JumpPower = 50
        --hrp.Transparency = 0.5
        character.Humanoid.WalkSpeed = 16
        character.Humanoid.JumpPower = 50
        if character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            character.Humanoid.BreakJointsOnDeath = false
            for i,v in pairs(character:GetDescendants()) do
                if v:IsA("Motor6D") and v.Parent.Parent.Name ~= "Reanimation" then
                    v:Destroy()
                end
                
                if v.Name == "Handle" and v.Parent.Parent.Name ~= "Reanimation" then
                    v:FindFirstChildWhichIsA("Weld"):Destroy()
                end
            end
        end
    end
    
    ReanimationMovement()
    
    Loops()
    
    camera.CameraSubject = reanimation:FindFirstChildWhichIsA("Humanoid")
    --character.Torso.Anchored = false
    
    ServerAdmin()
end----------------------------------------------------------------------

local function Bot()----------------------------------------------------------------------
    --Variables
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local hrp = character.HumanoidRootPart
    local camera = workspace.CurrentCamera
    
    local glassesList = "VarietyShades02", "e"
    
    if character:FindFirstChild("Robloxclassicred") and (character:FindFirstChild("MediHood") or character:FindFirstChild("MeshPartAccessory")) and character:FindFirstChild("Hat1") and character:FindFirstChild("Pal Hair") and character:FindFirstChild("Kate Hair") and character:FindFirstChild("Pink Hair") and character:FindFirstChild("LavanderHair") then
        if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            --Destroying The GUI
            NetlessServerAdmin:Destroy()
            
            bot = true        
            
            R6FakeCharacter()
            
            local reanimation = character.FakeCharacter.Reanimation
            
            --Attachments and Alignments (Hat Character) [Function]
            local function HatAlignment(ACCESSORY)
                local name = ACCESSORY.Name
                if ACCESSORY.Handle:FindFirstChildWhichIsA("SpecialMesh") and ACCESSORY.Name ~= "Head" and (name == botHats[1] or name == botHats[4] or name == botHats[5] or name == botHats[6] or name == botHats[7] or name == botHats[8]) then
                    ACCESSORY.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
                end
                if ACCESSORY.Handle:FindFirstChildWhichIsA("Weld") then
                    ACCESSORY.Handle:FindFirstChildWhichIsA("Weld"):Destroy()
                end
                if ACCESSORY.Handle:FindFirstChildWhichIsA("Attachment") then
                    ACCESSORY.Handle:FindFirstChildWhichIsA("Attachment"):Destroy()
                end
            end
            
            --Permanent Death 
            if game.CoreGui.ResetGUIValue.Value == false then
                ResetGUI()
            else
                game.Players.LocalPlayer.Character = reanimation
                wait(2.5)
                game.Players.LocalPlayer.Character = character
                wait(3)
                if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    character:BreakJoints()
                end
                character.Humanoid.AutoRotate = false
                reanimation.Humanoid.WalkSpeed = 16
                reanimation.Humanoid.JumpPower = 50
                character.Humanoid.WalkSpeed = 16
                character.Humanoid.JumpPower = 50
                if character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                    character.Humanoid.BreakJointsOnDeath = false
                    for i,v in pairs(character:GetDescendants()) do
                        if v:IsA("Motor6D") and v.Parent.Parent.Name ~= "Reanimation" then
                            v:Destroy()
                        end
                        
                        if v.Name == "Handle" and v.Parent.Parent.Name ~= "Reanimation" then
                            v:FindFirstChildWhichIsA("Weld"):Destroy()
                        end
                    end
                end
            end
            
            --Attachments and Alignments (Hat Character)
            for i,v in pairs(character:GetChildren()) do
                if v:IsA("Accessory") then
                    if v.Name == "Robloxclassicred" then
                        v.Name = "Left Arm"
                        botHats[1] = v.Name
                    end
                    
                    if v.Name == "MediHood" then
                        v.Name = "Head"
                        botHats[2] = v.Name
                    end
    
                    if v.Name == "MeshPartAccessory" and v.Handle:FindFirstChildWhichIsA("SpecialMesh").MeshId == "rbxassetid://4904532191" then
                        v.Name = "Head"
                        botHats[3] = v.Name
                    end
                    
                    if v.Name == "Hat1" then
                        v.Name = "Right Arm"
                        botHats[4] = v.Name
                    end
                    
                    if v.Name == "Pal Hair" then
                        v.Name = "Left Leg"
                        botHats[5] = v.Name
                    end
                    
                    if v.Name == "Kate Hair" then
                        v.Name = "Right Leg"
                        botHats[6] = v.Name
                    end
                    
                    if v.Name == "Pink Hair" then
                        v.Name = "Torso1"
                        botHats[7] = v.Name
                    end
                    
                    if v.Name == "LavanderHair" then
                        v.Name = "Torso2"
                        botHats[8] = v.Name
                    end
                    
                    HatAlignment(v)
                end
            end
            
            for i,v in pairs(character:GetChildren()) do
                if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                    v:Destroy()
                end
            end
            
            ReanimationMovement()
            
            Loops()
            
            --Changing Character
            character.Humanoid.AutoRotate = false
            
            camera.CameraSubject = reanimation:FindFirstChildWhichIsA("Humanoid")
            
            ServerAdmin()
        end
    end
end----------------------------------------------------------------------
-------------------------

--Tweening and Canvase Position--
local switching = false
local currentTab = "Reanimation"

local copiedLink = false

--Credits
Credits.MouseButton1Click:Connect(function()
    if switching == false then
        switching = true
        Outline:TweenSizeAndPosition(
            UDim2.new(0, 65, 0, 28), -- End Size
            UDim2.new(0.022, 0, 0.105, 0), --End Position
            "In",
            "Sine",
            0.5,
            false
        )
        
        local frame = EverythingFrame
        local scrollSpeed = 0
        local add = 0
        
        if currentTab == "Reanimation" then
            scrollSpeed = 3
            add = 3
        end
        
        if currentTab == "Info" then
            scrollSpeed = 5
            add = 5
        end
        
        while true do
            frame.CanvasPosition = Vector2.new(frame.CanvasPosition.X - scrollSpeed, 0)
            
            if frame.CanvasPosition.X > 159.5 then
                scrollSpeed = scrollSpeed + add 
            end
            
            if frame.CanvasPosition.X <= 0 then
                currentTab = "Credits"
                switching = false
                break
            end
            wait()
        end
    end
end)

--Info
InfoButton.MouseButton1Click:Connect(function()
    if switching == false then
        switching = true
        Outline:TweenSizeAndPosition(
            UDim2.new(0, 47, 0, 28), -- End Size
            UDim2.new(0.803, 0, 0.105, 0), --End Position
            "In",
            "Sine",
            0.5,
            false
        )
        
        local frame = EverythingFrame
        local scrollSpeed = 0
        local add = 0
        
        if currentTab == "Reanimation" then
            scrollSpeed = 3
            add = 3
        end
        
        if currentTab == "Credits" then
            scrollSpeed = 5
            add = 5
        end
        
        while true do
            frame.CanvasPosition = Vector2.new(frame.CanvasPosition.X + scrollSpeed, 0)
            
            if frame.CanvasPosition.X < 478.5 then
                scrollSpeed = scrollSpeed + add 
            end
            
            if frame.CanvasPosition.X >= 638 then
                currentTab = "Info"
                switching = false
                break
            end
            wait()
        end
    end
end)

--Reanimation
Reanimation.MouseButton1Click:Connect(function()
    if switching == false then
        switching = true
        Outline:TweenSizeAndPosition(
            UDim2.new(0, 101, 0, 28), --End Size
            UDim2.new(0.335, 0, 0.105, 0), --End Position
            "In",
            "Sine",
            0.5,
            false
        )
        
        local frame = EverythingFrame
        local scrollSpeed = 3
        
        while true do
            if currentTab == "Credits" then
                frame.CanvasPosition = Vector2.new(frame.CanvasPosition.X + scrollSpeed, 0)
                
                if frame.CanvasPosition.X < 159.5 then
                    scrollSpeed = scrollSpeed + 3 
                end
                
                if frame.CanvasPosition.X >= 319 then
                    frame.CanvasPosition = Vector2.new(319, 0)
                    currentTab = "Reanimation"
                    switching = false
                    break
                end
            end
            
            if currentTab == "Info" then
                frame.CanvasPosition = Vector2.new(frame.CanvasPosition.X - scrollSpeed, 0)
                
                if frame.CanvasPosition.X > 478.5 then
                    scrollSpeed = scrollSpeed + 3 
                end
                
                if frame.CanvasPosition.X <= 319 then
                    frame.CanvasPosition = Vector2.new(319, 0)
                    currentTab = "Reanimation"
                    switching = false
                    break
                end
            end
            wait()
        end
    end
end)
---------------------------------

--Copying Discord Server Link--
Discord.MouseButton1Click:Connect(function()
    if copiedLink == false then
        copiedLink = true
        setclipboard("https://discord.gg/Hbq3TgAJbB")
        CopiedLink:TweenPosition(
            UDim2.new(0.185, 0, 0.545, 0), --End Position
            "Out",
            "Back",
            0.25,
            true
        )
        wait(3)
        CopiedLink:TweenPosition(
            UDim2.new(0.185, 0, 0.747, 0), --End Position
            "Out",
            "Back",
            0.25,
            true
        )
        wait(0.25)
        copiedLink = false
    end
end)
-------------------------------

--Info For Reanimations--
--Bot
BotReanimation.MouseMoved:Connect(function()
    if not MainFrame:FindFirstChild("Information") then
        Information("Bot", [[- Same thing as perma death, but uses hats instead of your body parts.
- Hats Needed: (Medieval Hood of Mystery or Shadowed Head or both), Red Roblox Cap, ROBLOX Girl - Hair, Chestnut Bun, Lavender Updo, Pal Hair, and Brown Hair.]], true)
    end
end)

BotReanimation.MouseLeave:Connect(function()
    if MainFrame:FindFirstChild("Information") then
        MainFrame.Information:Destroy()
    end
end)

--Perma Death
PermanentReanimation.MouseMoved:Connect(function()
    if not MainFrame:FindFirstChild("Information") then
         Information("Perma Death", "This is a reanimation where you die permanently and teleport your body parts repeatedly to a 'fake character' that does all the animations.", false)
    end
end)

PermanentReanimation.MouseLeave:Connect(function()
    if MainFrame:FindFirstChild("Information") then
        MainFrame.Information:Destroy()
    end
end)
-------------------------

--Reanimating--
PermanentReanimation.MouseButton1Click:Connect(function()
    if permaDeath == false and bot == false then
        PermaDeath()
    end
end)

BotReanimation.MouseButton1Click:Connect(function()
    if permaDeath == false and bot == false then
        Bot()
    end
end)
---------------