--RELOAD GUI
if game.CoreGui:FindFirstChild("SysBroker") then
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "I NEED MY HERO",Text = "https://discord.gg/GnjUrTnd",Duration = 5;})
    return
end
local version = 2
--VARIABLES
_G.AntiFlingToggled = false
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Light = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local mouse = plr:GetMouse()
local ScriptWhitelist = {}
local ForceWhitelist = {}
local TargetedPlayer = nil
local FlySpeed = 50
local PotionTool = nil
local SavedCheckpoint = nil
local MinesFolder = nil
local FreeEmotesEnabled = false
local CannonsFolders = {}

pcall(function()
    MinesFolder = game:GetService("Workspace").Landmines
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Cannons" then
            table.insert(CannonsFolders, v)
        end
    end
end)
--FUNCTIONS
_G.shield = function(id)
    if not table.find(ForceWhitelist,id) then
        table.insert(ForceWhitelist, id)
    end
end

local function RandomChar()
    local length = math.random(1,5)
    local array = {}
    for i = 1, length do
        array[i] = string.char(math.random(32, 126))
    end
    return table.concat(array)
end

local function ChangeToggleColor(Button)
    led = Button.Ticket_Asset
    if led.ImageColor3 == Color3.fromRGB(255, 0, 0) then
        led.ImageColor3 = Color3.fromRGB(0, 255, 0)
    else
        led.ImageColor3 = Color3.fromRGB(255, 0, 0)
    end
end

local function GetPing()
    return (game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())/1000
end

local function GetPlayer(UserDisplay)
    if UserDisplay ~= "" then
        for i,v in pairs(Players:GetPlayers()) do
            if v.Name:lower():match(UserDisplay) or v.DisplayName:lower():match(UserDisplay) then
                return v
            end
        end
        return nil
    else
        return nil
    end
end

local function GetCharacter(Player)
    if Player.Character then
        return Player.Character
    end
end

local function GetRoot(Player)
    if GetCharacter(Player):FindFirstChild("HumanoidRootPart") then
        return GetCharacter(Player).HumanoidRootPart
    end
end

local function TeleportTO(posX,posY,posZ,player,method)
    pcall(function()
        if method == "safe" then
            task.spawn(function()
                for i = 1,30 do
                    task.wait()
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                    if player == "pos" then
                        GetRoot(plr).CFrame = CFrame.new(posX,posY,posZ)
                    else
                        GetRoot(plr).CFrame = CFrame.new(GetRoot(player).Position)+Vector3.new(0,2,0)
                    end
                end
            end)
        else
            GetRoot(plr).Velocity = Vector3.new(0,0,0)
            if player == "pos" then
                GetRoot(plr).CFrame = CFrame.new(posX,posY,posZ)
            else
                GetRoot(plr).CFrame = CFrame.new(GetRoot(player).Position)+Vector3.new(0,2,0)
            end
        end
    end)
end

local function PredictionTP(player,method)
    local root = GetRoot(player)
    local pos = root.Position
    local vel = root.Velocity
    GetRoot(plr).CFrame = CFrame.new((pos.X)+(vel.X)*(GetPing()*3.5),(pos.Y)+(vel.Y)*(GetPing()*2),(pos.Z)+(vel.Z)*(GetPing()*3.5))
    if method == "safe" then
        task.wait()
        GetRoot(plr).CFrame = CFrame.new(pos)
        task.wait()
        GetRoot(plr).CFrame = CFrame.new((pos.X)+(vel.X)*(GetPing()*3.5),(pos.Y)+(vel.Y)*(GetPing()*2),(pos.Z)+(vel.Z)*(GetPing()*3.5))
    end
end

local function Touch(x,root)
    pcall(function()
        x = x:FindFirstAncestorWhichIsA("Part")
        if x then
            if firetouchinterest then
                task.spawn(function()
                    firetouchinterest(x, root, 1)
                    task.wait()
                    firetouchinterest(x, root, 0)
                end)
            end
        end
    end)
end


local function GetPush()
    local TempPush = nil
    pcall(function()
        if plr.Backpack:FindFirstChild("Push") then
            PushTool = plr.Backpack.Push
            PushTool.Parent = plr.Character
            TempPush = PushTool
        end
        for i,v in pairs(Players:GetPlayers()) do
            if v.Character:FindFirstChild("Push") then
                TempPush = v.Character.Push
            end
        end
    end)
    return TempPush
end

local function CheckPotion()
    if plr.Backpack:FindFirstChild("potion") then
        PotionTool = plr.Backpack:FindFirstChild("potion")
        return true
    elseif plr.Character:FindFirstChild("potion") then
        PotionTool = plr.Character:FindFirstChild("potion")
        return true
    else
        return false
    end
end

local function Push(Target)
    local Push = GetPush()
    local FixTool = nil
    if Push ~= nil then
        local args = {[1] = Target.Character}
        GetPush().PushTool:FireServer(unpack(args))
    end
    if plr.Character:FindFirstChild("Push") then
        plr.Character.Push.Parent = plr.Backpack
    end
    if plr.Character:FindFirstChild("ModdedPush") then
        FixTool = plr.Character:FindFirstChild("ModdedPush")
        FixTool.Parent = plr.Backpack
        FixTool.Parent = plr.Character
    end
    if plr.Character:FindFirstChild("ClickTarget") then
        FixTool = plr.Character:FindFirstChild("ClickTarget")
        FixTool.Parent = plr.Backpack
        FixTool.Parent = plr.Character
    end
    if plr.Character:FindFirstChild("potion") then
        FixTool = plr.Character:FindFirstChild("potion")
        FixTool.Parent = plr.Backpack
        FixTool.Parent = plr.Character
    end
end

local function ToggleRagdoll(bool)
    pcall(function()
        plr.Character["Falling down"].Disabled = bool
        plr.Character["Swimming"].Disabled = bool
        plr.Character["StartRagdoll"].Disabled = bool
        plr.Character["Pushed"].Disabled = bool
        plr.Character["RagdollMe"].Disabled = bool
    end)
end

local function ToggleVoidProtection(bool)
    if bool then
        game.Workspace.FallenPartsDestroyHeight = 0/0
    else
        game.Workspace.FallenPartsDestroyHeight = -500
    end
end

local function PlayAnim(id,time,speed)
    pcall(function()
        plr.Character.Animate.Disabled = false
        local hum = plr.Character.Humanoid
        local animtrack = hum:GetPlayingAnimationTracks()
        for i,track in pairs(animtrack) do
            track:Stop()
        end
        plr.Character.Animate.Disabled = true
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"..id
        local loadanim = hum:LoadAnimation(Anim)
        loadanim:Play()
        loadanim.TimePosition = time
        loadanim:AdjustSpeed(speed)
        loadanim.Stopped:Connect(function()
            plr.Character.Animate.Disabled = false
            for i, track in pairs (animtrack) do
                track:Stop()
            end
        end)
    end)
end

local function StopAnim()
    plr.Character.Animate.Disabled = false
    local animtrack = plr.Character.Humanoid:GetPlayingAnimationTracks()
    for i, track in pairs (animtrack) do
        track:Stop()
    end
end

local function SendNotify(title, message, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = title,Text = message,Duration = duration;})
end

--LOAD GUI
task.wait(0.1)
local SysBroker = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local TitleBarLabel = Instance.new("TextLabel")
local SectionList = Instance.new("Frame")
local Home_Section_Button = Instance.new("TextButton")
local Game_Section_Button = Instance.new("TextButton")
local Character_Section_Button = Instance.new("TextButton")
local Target_Section_Button = Instance.new("TextButton")
local Animations_Section_Button = Instance.new("TextButton")
local Misc_Section_Button = Instance.new("TextButton")
local Credits_Section_Button = Instance.new("TextButton")
local Game_Section = Instance.new("ScrollingFrame")
local AntiRagdoll_Button = Instance.new("TextButton")
local PotionFling_Button = Instance.new("TextButton")
local SpamMines_Button = Instance.new("TextButton")
local PushAura_Button = Instance.new("TextButton")
local BreakCannons_Button = Instance.new("TextButton")
local LethalCannons_Button = Instance.new("TextButton")
local ChatAlert_Button = Instance.new("TextButton")
local PotionDi_Button = Instance.new("TextButton")
local VoidProtection_Button = Instance.new("TextButton")
local PushAll_Button = Instance.new("TextButton")
local TouchFling_Button = Instance.new("TextButton")
local CMDBar = Instance.new("TextBox")
local CannonTP1_Button = Instance.new("TextButton")
local CannonTP2_Button = Instance.new("TextButton")
local CannonTP3_Button = Instance.new("TextButton")
local MinefieldTP_Button = Instance.new("TextButton")
local BallonTP_Button = Instance.new("TextButton")
local NormalStairsTP_Button = Instance.new("TextButton")
local MovingStairsTP_Button = Instance.new("TextButton")
local SpiralStairsTP_Button = Instance.new("TextButton")
local SkyscraperTP_Button = Instance.new("TextButton")
local PoolTP_Button = Instance.new("TextButton")
local FreePushTool_Button = Instance.new("TextButton")
local Home_Section = Instance.new("ScrollingFrame")
local Profile_Image = Instance.new("ImageLabel")
local Welcome_Label = Instance.new("TextLabel")
local Announce_Label = Instance.new("TextLabel")
local Character_Section = Instance.new("ScrollingFrame")
local WalkSpeed_Button = Instance.new("TextButton")
local WalkSpeed_Input = Instance.new("TextBox")
local ClearCheckpoint_Button = Instance.new("TextButton")
local JumpPower_Input = Instance.new("TextBox")
local JumpPower_Button = Instance.new("TextButton")
local SaveCheckpoint_Button = Instance.new("TextButton")
local Respawn_Button = Instance.new("TextButton")
local FlySpeed_Button = Instance.new("TextButton")
local FlySpeed_Input = Instance.new("TextBox")
local Fly_Button = Instance.new("TextButton")
local Target_Section = Instance.new("ScrollingFrame")
local TargetImage = Instance.new("ImageLabel")
local ClickTargetTool_Button = Instance.new("ImageButton")
local TargetName_Input = Instance.new("TextBox")
local UserIDTargetLabel = Instance.new("TextLabel")
local ViewTarget_Button = Instance.new("TextButton")
local FlingTarget_Button = Instance.new("TextButton")
local FocusTarget_Button = Instance.new("TextButton")
local BenxTarget_Button = Instance.new("TextButton")
local PushTarget_Button = Instance.new("TextButton")
local WhitelistTarget_Button = Instance.new("TextButton")
local TeleportTarget_Button = Instance.new("TextButton")
local HeadsitTarget_Button = Instance.new("TextButton")
local StandTarget_Button = Instance.new("TextButton")
local BackpackTarget_Button = Instance.new("TextButton")
local DoggyTarget_Button = Instance.new("TextButton")
local DragTarget_Button = Instance.new("TextButton")
local Animations_Section = Instance.new("ScrollingFrame")
local VampireAnim_Button = Instance.new("TextButton")
local HeroAnim_Button = Instance.new("TextButton")
local ZombieClassicAnim_Button = Instance.new("TextButton")
local MageAnim_Button = Instance.new("TextButton")
local GhostAnim_Button = Instance.new("TextButton")
local ElderAnim_Button = Instance.new("TextButton")
local LevitationAnim_Button = Instance.new("TextButton")
local AstronautAnim_Button = Instance.new("TextButton")
local NinjaAnim_Button = Instance.new("TextButton")
local WerewolfAnim_Button = Instance.new("TextButton")
local CartoonAnim_Button = Instance.new("TextButton")
local PirateAnim_Button = Instance.new("TextButton")
local SneakyAnim_Button = Instance.new("TextButton")
local ToyAnim_Button = Instance.new("TextButton")
local KnightAnim_Button = Instance.new("TextButton")
--NEWS
local ConfidentAnim_Button = Instance.new("TextButton")
local PopstarAnim_Button = Instance.new("TextButton")
local PrincessAnim_Button = Instance.new("TextButton")
local CowboyAnim_Button = Instance.new("TextButton")
local PatrolAnim_Button = Instance.new("TextButton")
local ZombieFEAnim_Button = Instance.new("TextButton")
--NEWS
local Misc_Section = Instance.new("ScrollingFrame")
local AntiFling_Button = Instance.new("TextButton")
local AntiChatSpy_Button = Instance.new("TextButton")
local AntiAFK_Button = Instance.new("TextButton")
local Shaders_Button = Instance.new("TextButton")
local Day_Button = Instance.new("TextButton")
local Night_Button = Instance.new("TextButton")
local Rejoin_Button = Instance.new("TextButton")
local CMDX_Button = Instance.new("TextButton")
local InfYield_Button = Instance.new("TextButton")
local Serverhop_Button = Instance.new("TextButton")
local Explode_Button = Instance.new("TextButton")
local FreeEmotes_Button = Instance.new("TextButton")
local ChatBox_Input = Instance.new("TextBox")
local Credits_Section = Instance.new("ScrollingFrame")
local Credits_Label = Instance.new("TextLabel")
local Crown = Instance.new("ImageLabel")
local Assets = Instance.new("Folder")
local Ticket_Asset = Instance.new("ImageButton")
local Click_Asset = Instance.new("ImageButton")
local Velocity_Asset = Instance.new("BodyAngularVelocity")
local Fly_Pad = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local FlyAButton = Instance.new("TextButton")
local FlyDButton = Instance.new("TextButton")
local FlyWButton = Instance.new("TextButton")
local FlySButton = Instance.new("TextButton")
local OpenClose = Instance.new("ImageButton")
local UICornerOC = Instance.new("UICorner")

local function CreateToggle(Button)
    local NewToggle = Ticket_Asset:Clone()
    NewToggle.Parent = Button
end

local function CreateClicker(Button)
    local NewClicker = Click_Asset:Clone()
    NewClicker.Parent = Button
end

SysBroker.Name = "SysBroker"
SysBroker.Parent = game.CoreGui
SysBroker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = SysBroker
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Background.BorderColor3 = Color3.fromRGB(0, 255, 255)
Background.Position = UDim2.new(0.5, 0, 0.5, 0)
Background.Size = UDim2.new(0, 500, 0, 350)
Background.ZIndex = 9
Background.Image = "rbxassetid://159991693"
Background.ImageColor3 = Color3.fromRGB(0, 255, 255)
Background.ImageTransparency = 0.600
Background.ScaleType = Enum.ScaleType.Tile
Background.SliceCenter = Rect.new(0, 256, 0, 256)
Background.TileSize = UDim2.new(0, 30, 0, 30)
Background.Active = true
Background.Draggable = true

TitleBarLabel.Name = "TitleBarLabel"
TitleBarLabel.Parent = Background
TitleBarLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TitleBarLabel.BackgroundTransparency = 0.250
TitleBarLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleBarLabel.BorderSizePixel = 0
TitleBarLabel.Size = UDim2.new(1, 0, 0, 30)
TitleBarLabel.Font = Enum.Font.Unknown
TitleBarLabel.Text = "____/SYSTEMBROKEN\\___"
TitleBarLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TitleBarLabel.TextScaled = true
TitleBarLabel.TextSize = 14.000
TitleBarLabel.TextWrapped = true
TitleBarLabel.TextXAlignment = Enum.TextXAlignment.Left

SectionList.Name = "SectionList"
SectionList.Parent = Background
SectionList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SectionList.BackgroundTransparency = 0.500
SectionList.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionList.BorderSizePixel = 0
SectionList.Position = UDim2.new(0, 0, 0, 30)
SectionList.Size = UDim2.new(0, 105, 0, 320)

Home_Section_Button.Name = "Home_Section_Button"
Home_Section_Button.Parent = SectionList
Home_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Home_Section_Button.BackgroundTransparency = 0.500
Home_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_Section_Button.BorderSizePixel = 0
Home_Section_Button.Position = UDim2.new(0, 0, 0, 25)
Home_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Home_Section_Button.Font = Enum.Font.Oswald
Home_Section_Button.Text = "Home"
Home_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Home_Section_Button.TextScaled = true
Home_Section_Button.TextSize = 14.000
Home_Section_Button.TextWrapped = true

Game_Section_Button.Name = "Game_Section_Button"
Game_Section_Button.Parent = SectionList
Game_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Game_Section_Button.BackgroundTransparency = 0.500
Game_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game_Section_Button.BorderSizePixel = 0
Game_Section_Button.Position = UDim2.new(0, 0, 0, 65)
Game_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Game_Section_Button.Font = Enum.Font.Oswald
Game_Section_Button.Text = "Game"
Game_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Game_Section_Button.TextScaled = true
Game_Section_Button.TextSize = 14.000
Game_Section_Button.TextWrapped = true

Character_Section_Button.Name = "Character_Section_Button"
Character_Section_Button.Parent = SectionList
Character_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Character_Section_Button.BackgroundTransparency = 0.500
Character_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Character_Section_Button.BorderSizePixel = 0
Character_Section_Button.Position = UDim2.new(0, 0, 0, 105)
Character_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Character_Section_Button.Font = Enum.Font.Oswald
Character_Section_Button.Text = "Character"
Character_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Character_Section_Button.TextScaled = true
Character_Section_Button.TextSize = 14.000
Character_Section_Button.TextWrapped = true

Target_Section_Button.Name = "Target_Section_Button"
Target_Section_Button.Parent = SectionList
Target_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Target_Section_Button.BackgroundTransparency = 0.500
Target_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target_Section_Button.BorderSizePixel = 0
Target_Section_Button.Position = UDim2.new(0, 0, 0, 145)
Target_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Target_Section_Button.Font = Enum.Font.Oswald
Target_Section_Button.Text = "Target"
Target_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Target_Section_Button.TextScaled = true
Target_Section_Button.TextSize = 14.000
Target_Section_Button.TextWrapped = true

Animations_Section_Button.Name = "Animations_Section_Button"
Animations_Section_Button.Parent = SectionList
Animations_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Animations_Section_Button.BackgroundTransparency = 0.500
Animations_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section_Button.BorderSizePixel = 0
Animations_Section_Button.Position = UDim2.new(0, 0, 0, 185)
Animations_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Animations_Section_Button.Font = Enum.Font.Oswald
Animations_Section_Button.Text = "Animations"
Animations_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section_Button.TextScaled = true
Animations_Section_Button.TextSize = 14.000
Animations_Section_Button.TextWrapped = true

Misc_Section_Button.Name = "Misc_Section_Button"
Misc_Section_Button.Parent = SectionList
Misc_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Misc_Section_Button.BackgroundTransparency = 0.500
Misc_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section_Button.BorderSizePixel = 0
Misc_Section_Button.Position = UDim2.new(0, 0, 0, 225)
Misc_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Misc_Section_Button.Font = Enum.Font.Oswald
Misc_Section_Button.Text = "Misc"
Misc_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section_Button.TextScaled = true
Misc_Section_Button.TextSize = 14.000
Misc_Section_Button.TextWrapped = true

Credits_Section_Button.Name = "Credits_Section_Button"
Credits_Section_Button.Parent = SectionList
Credits_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Credits_Section_Button.BackgroundTransparency = 0.500
Credits_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section_Button.BorderSizePixel = 0
Credits_Section_Button.Position = UDim2.new(0, 0, 0, 265)
Credits_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Credits_Section_Button.Font = Enum.Font.Oswald
Credits_Section_Button.Text = "Credits"
Credits_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section_Button.TextScaled = true
Credits_Section_Button.TextSize = 14.000
Credits_Section_Button.TextWrapped = true

Game_Section.Name = "Game_Section"
Game_Section.Parent = Background
Game_Section.Active = true
Game_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game_Section.BackgroundTransparency = 1.000
Game_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game_Section.BorderSizePixel = 0
Game_Section.Position = UDim2.new(0, 105, 0, 30)
Game_Section.Size = UDim2.new(0, 395, 0, 320)
Game_Section.Visible = false
Game_Section.CanvasSize = UDim2.new(0, 0, 1.85, 0)
Game_Section.ScrollBarThickness = 5

AntiRagdoll_Button.Name = "AntiRagdoll_Button"
AntiRagdoll_Button.Parent = Game_Section
AntiRagdoll_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiRagdoll_Button.BackgroundTransparency = 0.500
AntiRagdoll_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiRagdoll_Button.BorderSizePixel = 0
AntiRagdoll_Button.Position = UDim2.new(0, 25, 0, 25)
AntiRagdoll_Button.Size = UDim2.new(0, 150, 0, 30)
AntiRagdoll_Button.Font = Enum.Font.Oswald
AntiRagdoll_Button.Text = "Anti ragdoll"
AntiRagdoll_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiRagdoll_Button.TextScaled = true
AntiRagdoll_Button.TextSize = 14.000
AntiRagdoll_Button.TextWrapped = true

PotionFling_Button.Name = "PotionFling_Button"
PotionFling_Button.Parent = Game_Section
PotionFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PotionFling_Button.BackgroundTransparency = 0.500
PotionFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PotionFling_Button.BorderSizePixel = 0
PotionFling_Button.Position = UDim2.new(0, 210, 0, 75)
PotionFling_Button.Size = UDim2.new(0, 150, 0, 30)
PotionFling_Button.Font = Enum.Font.Oswald
PotionFling_Button.Text = "Potion Fling"
PotionFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PotionFling_Button.TextScaled = true
PotionFling_Button.TextSize = 14.000
PotionFling_Button.TextWrapped = true

SpamMines_Button.Name = "SpamMines_Button"
SpamMines_Button.Parent = Game_Section
SpamMines_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SpamMines_Button.BackgroundTransparency = 0.500
SpamMines_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpamMines_Button.BorderSizePixel = 0
SpamMines_Button.Position = UDim2.new(0, 25, 0, 75)
SpamMines_Button.Size = UDim2.new(0, 150, 0, 30)
SpamMines_Button.Font = Enum.Font.Oswald
SpamMines_Button.Text = "Spam mines"
SpamMines_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SpamMines_Button.TextScaled = true
SpamMines_Button.TextSize = 14.000
SpamMines_Button.TextWrapped = true

PushAura_Button.Name = "PushAura_Button"
PushAura_Button.Parent = Game_Section
PushAura_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushAura_Button.BackgroundTransparency = 0.500
PushAura_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushAura_Button.BorderSizePixel = 0
PushAura_Button.Position = UDim2.new(0, 210, 0, 25)
PushAura_Button.Size = UDim2.new(0, 150, 0, 30)
PushAura_Button.Font = Enum.Font.Oswald
PushAura_Button.Text = "Push aura"
PushAura_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushAura_Button.TextScaled = true
PushAura_Button.TextSize = 14.000
PushAura_Button.TextWrapped = true

BreakCannons_Button.Name = "BreakCannons_Button"
BreakCannons_Button.Parent = Game_Section
BreakCannons_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BreakCannons_Button.BackgroundTransparency = 0.500
BreakCannons_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BreakCannons_Button.BorderSizePixel = 0
BreakCannons_Button.Position = UDim2.new(0, 25, 0, 225)
BreakCannons_Button.Size = UDim2.new(0, 150, 0, 30)
BreakCannons_Button.Font = Enum.Font.Oswald
BreakCannons_Button.Text = "Break Cannons"
BreakCannons_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BreakCannons_Button.TextScaled = true
BreakCannons_Button.TextSize = 14.000
BreakCannons_Button.TextWrapped = true

LethalCannons_Button.Name = "LethalCannons_Button"
LethalCannons_Button.Parent = Game_Section
LethalCannons_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LethalCannons_Button.BackgroundTransparency = 0.500
LethalCannons_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
LethalCannons_Button.BorderSizePixel = 0
LethalCannons_Button.Position = UDim2.new(0, 25, 0, 275)
LethalCannons_Button.Size = UDim2.new(0, 150, 0, 30)
LethalCannons_Button.Font = Enum.Font.Oswald
LethalCannons_Button.Text = "Lethal Cannons"
LethalCannons_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
LethalCannons_Button.TextScaled = true
LethalCannons_Button.TextSize = 14.000
LethalCannons_Button.TextWrapped = true

ChatAlert_Button.Name = "ChatAlert_Button"
ChatAlert_Button.Parent = Game_Section
ChatAlert_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ChatAlert_Button.BackgroundTransparency = 0.500
ChatAlert_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatAlert_Button.BorderSizePixel = 0
ChatAlert_Button.Position = UDim2.new(0, 210, 0, 275)
ChatAlert_Button.Size = UDim2.new(0, 150, 0, 30)
ChatAlert_Button.Font = Enum.Font.Oswald
ChatAlert_Button.Text = "Chat alert"
ChatAlert_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ChatAlert_Button.TextScaled = true
ChatAlert_Button.TextSize = 14.000
ChatAlert_Button.TextWrapped = true

PotionDi_Button.Name = "PotionDi_Button"
PotionDi_Button.Parent = Game_Section
PotionDi_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PotionDi_Button.BackgroundTransparency = 0.500
PotionDi_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PotionDi_Button.BorderSizePixel = 0
PotionDi_Button.Position = UDim2.new(0, 210, 0, 125)
PotionDi_Button.Size = UDim2.new(0, 150, 0, 30)
PotionDi_Button.Font = Enum.Font.Oswald
PotionDi_Button.Text = "Potion dick"
PotionDi_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PotionDi_Button.TextScaled = true
PotionDi_Button.TextSize = 14.000
PotionDi_Button.TextWrapped = true

VoidProtection_Button.Name = "VoidProtection_Button"
VoidProtection_Button.Parent = Game_Section
VoidProtection_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
VoidProtection_Button.BackgroundTransparency = 0.500
VoidProtection_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
VoidProtection_Button.BorderSizePixel = 0
VoidProtection_Button.Position = UDim2.new(0, 25, 0, 175)
VoidProtection_Button.Size = UDim2.new(0, 150, 0, 30)
VoidProtection_Button.Font = Enum.Font.Oswald
VoidProtection_Button.Text = "Void protection"
VoidProtection_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
VoidProtection_Button.TextScaled = true
VoidProtection_Button.TextSize = 14.000
VoidProtection_Button.TextWrapped = true

PushAll_Button.Name = "PushAll_Button"
PushAll_Button.Parent = Game_Section
PushAll_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushAll_Button.BackgroundTransparency = 0.500
PushAll_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushAll_Button.BorderSizePixel = 0
PushAll_Button.Position = UDim2.new(0, 210, 0, 225)
PushAll_Button.Size = UDim2.new(0, 150, 0, 30)
PushAll_Button.Font = Enum.Font.Oswald
PushAll_Button.Text = "Push all"
PushAll_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushAll_Button.TextScaled = true
PushAll_Button.TextSize = 14.000
PushAll_Button.TextWrapped = true

TouchFling_Button.Name = "TouchFling_Button"
TouchFling_Button.Parent = Game_Section
TouchFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TouchFling_Button.BackgroundTransparency = 0.500
TouchFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
TouchFling_Button.BorderSizePixel = 0
TouchFling_Button.Position = UDim2.new(0, 25, 0, 125)
TouchFling_Button.Size = UDim2.new(0, 150, 0, 30)
TouchFling_Button.Font = Enum.Font.Oswald
TouchFling_Button.Text = "Touch fling"
TouchFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
TouchFling_Button.TextScaled = true
TouchFling_Button.TextSize = 14.000
TouchFling_Button.TextWrapped = true

CMDBar.Name = "CMDBar"
CMDBar.Parent = Game_Section
CMDBar.AnchorPoint = Vector2.new(0.5, 0.5)
CMDBar.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
CMDBar.BackgroundTransparency = 0.300
CMDBar.BorderColor3 = Color3.fromRGB(0, 255, 255)
CMDBar.Position = UDim2.new(0.5, 0, 0, 350)
CMDBar.Size = UDim2.new(0, 275, 0, 40)
CMDBar.Font = Enum.Font.Gotham
CMDBar.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
CMDBar.PlaceholderText = "CMD BAR..."
CMDBar.Text = ""
CMDBar.TextColor3 = Color3.fromRGB(20, 20, 20)
CMDBar.TextSize = 14.000
CMDBar.TextWrapped = true

CannonTP1_Button.Name = "CannonTP1_Button"
CannonTP1_Button.Parent = Game_Section
CannonTP1_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP1_Button.BackgroundTransparency = 0.500
CannonTP1_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP1_Button.BorderSizePixel = 0
CannonTP1_Button.Position = UDim2.new(0, 25, 0, 400)
CannonTP1_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP1_Button.Font = Enum.Font.Oswald
CannonTP1_Button.Text = "TP Cannon 1"
CannonTP1_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP1_Button.TextScaled = true
CannonTP1_Button.TextSize = 14.000
CannonTP1_Button.TextWrapped = true

CannonTP2_Button.Name = "CannonTP2_Button"
CannonTP2_Button.Parent = Game_Section
CannonTP2_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP2_Button.BackgroundTransparency = 0.500
CannonTP2_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP2_Button.BorderSizePixel = 0
CannonTP2_Button.Position = UDim2.new(0, 210, 0, 400)
CannonTP2_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP2_Button.Font = Enum.Font.Oswald
CannonTP2_Button.Text = "TP Cannon 2"
CannonTP2_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP2_Button.TextScaled = true
CannonTP2_Button.TextSize = 14.000
CannonTP2_Button.TextWrapped = true

CannonTP3_Button.Name = "CannonTP3_Button"
CannonTP3_Button.Parent = Game_Section
CannonTP3_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP3_Button.BackgroundTransparency = 0.500
CannonTP3_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP3_Button.BorderSizePixel = 0
CannonTP3_Button.Position = UDim2.new(0, 25, 0, 450)
CannonTP3_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP3_Button.Font = Enum.Font.Oswald
CannonTP3_Button.Text = "TP Cannon 3"
CannonTP3_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP3_Button.TextScaled = true
CannonTP3_Button.TextSize = 14.000
CannonTP3_Button.TextWrapped = true

MinefieldTP_Button.Name = "MinefieldTP_Button"
MinefieldTP_Button.Parent = Game_Section
MinefieldTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MinefieldTP_Button.BackgroundTransparency = 0.500
MinefieldTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinefieldTP_Button.BorderSizePixel = 0
MinefieldTP_Button.Position = UDim2.new(0, 210, 0, 450)
MinefieldTP_Button.Size = UDim2.new(0, 150, 0, 30)
MinefieldTP_Button.Font = Enum.Font.Oswald
MinefieldTP_Button.Text = "TP Minefield"
MinefieldTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MinefieldTP_Button.TextScaled = true
MinefieldTP_Button.TextSize = 14.000
MinefieldTP_Button.TextWrapped = true

BallonTP_Button.Name = "BallonTP_Button"
BallonTP_Button.Parent = Game_Section
BallonTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BallonTP_Button.BackgroundTransparency = 0.500
BallonTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BallonTP_Button.BorderSizePixel = 0
BallonTP_Button.Position = UDim2.new(0, 25, 0, 500)
BallonTP_Button.Size = UDim2.new(0, 150, 0, 30)
BallonTP_Button.Font = Enum.Font.Oswald
BallonTP_Button.Text = "TP Ballon"
BallonTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BallonTP_Button.TextScaled = true
BallonTP_Button.TextSize = 14.000
BallonTP_Button.TextWrapped = true

NormalStairsTP_Button.Name = "NormalStairsTP_Button"
NormalStairsTP_Button.Parent = Game_Section
NormalStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
NormalStairsTP_Button.BackgroundTransparency = 0.500
NormalStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
NormalStairsTP_Button.BorderSizePixel = 0
NormalStairsTP_Button.Position = UDim2.new(0, 210, 0, 500)
NormalStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
NormalStairsTP_Button.Font = Enum.Font.Oswald
NormalStairsTP_Button.Text = "TP Stairs"
NormalStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
NormalStairsTP_Button.TextScaled = true
NormalStairsTP_Button.TextSize = 14.000
NormalStairsTP_Button.TextWrapped = true

MovingStairsTP_Button.Name = "MovingStairsTP_Button"
MovingStairsTP_Button.Parent = Game_Section
MovingStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MovingStairsTP_Button.BackgroundTransparency = 0.500
MovingStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MovingStairsTP_Button.BorderSizePixel = 0
MovingStairsTP_Button.Position = UDim2.new(0, 25, 0, 550)
MovingStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
MovingStairsTP_Button.Font = Enum.Font.Oswald
MovingStairsTP_Button.Text = "TP Moving Stairs"
MovingStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MovingStairsTP_Button.TextScaled = true
MovingStairsTP_Button.TextSize = 14.000
MovingStairsTP_Button.TextWrapped = true

SpiralStairsTP_Button.Name = "SpiralStairsTP_Button"
SpiralStairsTP_Button.Parent = Game_Section
SpiralStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SpiralStairsTP_Button.BackgroundTransparency = 0.500
SpiralStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpiralStairsTP_Button.BorderSizePixel = 0
SpiralStairsTP_Button.Position = UDim2.new(0, 210, 0, 550)
SpiralStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
SpiralStairsTP_Button.Font = Enum.Font.Oswald
SpiralStairsTP_Button.Text = "TP Spiral Stairs"
SpiralStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SpiralStairsTP_Button.TextScaled = true
SpiralStairsTP_Button.TextSize = 14.000
SpiralStairsTP_Button.TextWrapped = true

SkyscraperTP_Button.Name = "SkyscraperTP_Button"
SkyscraperTP_Button.Parent = Game_Section
SkyscraperTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SkyscraperTP_Button.BackgroundTransparency = 0.500
SkyscraperTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkyscraperTP_Button.BorderSizePixel = 0
SkyscraperTP_Button.Position = UDim2.new(0, 25, 0, 600)
SkyscraperTP_Button.Size = UDim2.new(0, 150, 0, 30)
SkyscraperTP_Button.Font = Enum.Font.Oswald
SkyscraperTP_Button.Text = "TP Skyscraper"
SkyscraperTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SkyscraperTP_Button.TextScaled = true
SkyscraperTP_Button.TextSize = 14.000
SkyscraperTP_Button.TextWrapped = true

PoolTP_Button.Name = "PoolTP_Button"
PoolTP_Button.Parent = Game_Section
PoolTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PoolTP_Button.BackgroundTransparency = 0.500
PoolTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PoolTP_Button.BorderSizePixel = 0
PoolTP_Button.Position = UDim2.new(0, 210, 0, 600)
PoolTP_Button.Size = UDim2.new(0, 150, 0, 30)
PoolTP_Button.Font = Enum.Font.Oswald
PoolTP_Button.Text = "TP Pool"
PoolTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PoolTP_Button.TextScaled = true
PoolTP_Button.TextSize = 14.000
PoolTP_Button.TextWrapped = true

FreePushTool_Button.Name = "FreePushTool_Button"
FreePushTool_Button.Parent = Game_Section
FreePushTool_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FreePushTool_Button.BackgroundTransparency = 0.500
FreePushTool_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FreePushTool_Button.BorderSizePixel = 0
FreePushTool_Button.Position = UDim2.new(0, 210, 0, 175)
FreePushTool_Button.Size = UDim2.new(0, 150, 0, 30)
FreePushTool_Button.Font = Enum.Font.Oswald
FreePushTool_Button.Text = "Modded push"
FreePushTool_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FreePushTool_Button.TextScaled = true
FreePushTool_Button.TextSize = 14.000
FreePushTool_Button.TextWrapped = true

Home_Section.Name = "Home_Section"
Home_Section.Parent = Background
Home_Section.Active = true
Home_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home_Section.BackgroundTransparency = 1.000
Home_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_Section.BorderSizePixel = 0
Home_Section.Position = UDim2.new(0, 105, 0, 30)
Home_Section.Size = UDim2.new(0, 395, 0, 320)
Home_Section.CanvasSize = UDim2.new(0, 0, 0, 0)
Home_Section.ScrollBarThickness = 5

Profile_Image.Name = "Profile_Image"
Profile_Image.Parent = Home_Section
Profile_Image.BackgroundColor3 = Color3.fromRGB(30,30,30)
Profile_Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Profile_Image.BorderSizePixel = 0
Profile_Image.Position = UDim2.new(0, 25, 0, 25)
Profile_Image.Size = UDim2.new(0, 100, 0, 100)
Profile_Image.Image = Players:GetUserThumbnailAsync(plr.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)

Welcome_Label.Name = "Welcome_Label"
Welcome_Label.Parent = Home_Section
Welcome_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome_Label.BackgroundTransparency = 1.000
Welcome_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcome_Label.BorderSizePixel = 0
Welcome_Label.Position = UDim2.new(0, 150, 0, 25)
Welcome_Label.Size = UDim2.new(0, 200, 0, 100)
Welcome_Label.Font = Enum.Font.SourceSans
Welcome_Label.Text = ("Â¡Hello @"..plr.Name.."!\nPress [B] to open/close gui.")
Welcome_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Welcome_Label.TextSize = 24.000
Welcome_Label.TextWrapped = true
Welcome_Label.TextXAlignment = Enum.TextXAlignment.Left
Welcome_Label.TextYAlignment = Enum.TextYAlignment.Top

Announce_Label.Name = "Announce_Label"
Announce_Label.Parent = Home_Section
Announce_Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Announce_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Announce_Label.BorderSizePixel = 0
Announce_Label.Position = UDim2.new(0, 25, 0, 150)
Announce_Label.Size = UDim2.new(0, 350, 0, 150)
Announce_Label.Font = Enum.Font.SourceSans
Announce_Label.Text = loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/announce"))()
Announce_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Announce_Label.TextSize = 24.000
Announce_Label.TextWrapped = true
Announce_Label.TextXAlignment = Enum.TextXAlignment.Left
Announce_Label.TextYAlignment = Enum.TextYAlignment.Top

Character_Section.Name = "Character_Section"
Character_Section.Parent = Background
Character_Section.Active = true
Character_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Character_Section.BackgroundTransparency = 1.000
Character_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Character_Section.BorderSizePixel = 0
Character_Section.Position = UDim2.new(0, 105, 0, 30)
Character_Section.Size = UDim2.new(0, 395, 0, 320)
Character_Section.Visible = false
Character_Section.CanvasSize = UDim2.new(0, 0, 1, 0)
Character_Section.ScrollBarThickness = 5

WalkSpeed_Button.Name = "WalkSpeed_Button"
WalkSpeed_Button.Parent = Character_Section
WalkSpeed_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WalkSpeed_Button.BackgroundTransparency = 0.500
WalkSpeed_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Button.BorderSizePixel = 0
WalkSpeed_Button.Position = UDim2.new(0, 25, 0, 25)
WalkSpeed_Button.Size = UDim2.new(0, 150, 0, 30)
WalkSpeed_Button.Font = Enum.Font.Oswald
WalkSpeed_Button.Text = "Walk Speed"
WalkSpeed_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Button.TextScaled = true
WalkSpeed_Button.TextSize = 14.000
WalkSpeed_Button.TextWrapped = true

WalkSpeed_Input.Name = "WalkSpeed_Input"
WalkSpeed_Input.Parent = Character_Section
WalkSpeed_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
WalkSpeed_Input.BackgroundTransparency = 0.300
WalkSpeed_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
WalkSpeed_Input.Position = UDim2.new(0, 210, 0, 25)
WalkSpeed_Input.Size = UDim2.new(0, 175, 0, 30)
WalkSpeed_Input.Font = Enum.Font.Gotham
WalkSpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Input.PlaceholderText = "Number [1-99999]"
WalkSpeed_Input.Text = ""
WalkSpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
WalkSpeed_Input.TextSize = 14.000
WalkSpeed_Input.TextWrapped = true

ClearCheckpoint_Button.Name = "ClearCheckpoint_Button"
ClearCheckpoint_Button.Parent = Character_Section
ClearCheckpoint_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ClearCheckpoint_Button.BackgroundTransparency = 0.500
ClearCheckpoint_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearCheckpoint_Button.BorderSizePixel = 0
ClearCheckpoint_Button.Position = UDim2.new(0, 210, 0, 225)
ClearCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
ClearCheckpoint_Button.Font = Enum.Font.Oswald
ClearCheckpoint_Button.Text = "Clear checkpoint"
ClearCheckpoint_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearCheckpoint_Button.TextScaled = true
ClearCheckpoint_Button.TextSize = 14.000
ClearCheckpoint_Button.TextWrapped = true

JumpPower_Input.Name = "JumpPower_Input"
JumpPower_Input.Parent = Character_Section
JumpPower_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
JumpPower_Input.BackgroundTransparency = 0.300
JumpPower_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
JumpPower_Input.Position = UDim2.new(0, 210, 0, 75)
JumpPower_Input.Size = UDim2.new(0, 175, 0, 30)
JumpPower_Input.Font = Enum.Font.Gotham
JumpPower_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Input.PlaceholderText = "Number [1-99999]"
JumpPower_Input.Text = ""
JumpPower_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
JumpPower_Input.TextSize = 14.000
JumpPower_Input.TextWrapped = true

JumpPower_Button.Name = "JumpPower_Button"
JumpPower_Button.Parent = Character_Section
JumpPower_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
JumpPower_Button.BackgroundTransparency = 0.500
JumpPower_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Button.BorderSizePixel = 0
JumpPower_Button.Position = UDim2.new(0, 25, 0, 75)
JumpPower_Button.Size = UDim2.new(0, 150, 0, 30)
JumpPower_Button.Font = Enum.Font.Oswald
JumpPower_Button.Text = "Jump power"
JumpPower_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Button.TextScaled = true
JumpPower_Button.TextSize = 14.000
JumpPower_Button.TextWrapped = true

SaveCheckpoint_Button.Name = "SaveCheckpoint_Button"
SaveCheckpoint_Button.Parent = Character_Section
SaveCheckpoint_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SaveCheckpoint_Button.BackgroundTransparency = 0.500
SaveCheckpoint_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveCheckpoint_Button.BorderSizePixel = 0
SaveCheckpoint_Button.Position = UDim2.new(0, 210, 0, 175)
SaveCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
SaveCheckpoint_Button.Font = Enum.Font.Oswald
SaveCheckpoint_Button.Text = "Save checkpoint"
SaveCheckpoint_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveCheckpoint_Button.TextScaled = true
SaveCheckpoint_Button.TextSize = 14.000
SaveCheckpoint_Button.TextWrapped = true

Respawn_Button.Name = "Respawn_Button"
Respawn_Button.Parent = Character_Section
Respawn_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Respawn_Button.BackgroundTransparency = 0.500
Respawn_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Respawn_Button.BorderSizePixel = 0
Respawn_Button.Position = UDim2.new(0, 25, 0, 225)
Respawn_Button.Size = UDim2.new(0, 150, 0, 30)
Respawn_Button.Font = Enum.Font.Oswald
Respawn_Button.Text = "Respawn"
Respawn_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Respawn_Button.TextScaled = true
Respawn_Button.TextSize = 14.000
Respawn_Button.TextWrapped = true

FlySpeed_Button.Name = "FlySpeed_Button"
FlySpeed_Button.Parent = Character_Section
FlySpeed_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FlySpeed_Button.BackgroundTransparency = 0.500
FlySpeed_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Button.BorderSizePixel = 0
FlySpeed_Button.Position = UDim2.new(0, 25, 0, 125)
FlySpeed_Button.Size = UDim2.new(0, 150, 0, 30)
FlySpeed_Button.Font = Enum.Font.Oswald
FlySpeed_Button.Text = "Fly speed"
FlySpeed_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Button.TextScaled = true
FlySpeed_Button.TextSize = 14.000
FlySpeed_Button.TextWrapped = true

FlySpeed_Input.Name = "FlySpeed_Input"
FlySpeed_Input.Parent = Character_Section
FlySpeed_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
FlySpeed_Input.BackgroundTransparency = 0.300
FlySpeed_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
FlySpeed_Input.Position = UDim2.new(0, 210, 0, 125)
FlySpeed_Input.Size = UDim2.new(0, 175, 0, 30)
FlySpeed_Input.Font = Enum.Font.Gotham
FlySpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Input.PlaceholderText = "Number [1-99999]"
FlySpeed_Input.Text = ""
FlySpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
FlySpeed_Input.TextSize = 14.000
FlySpeed_Input.TextWrapped = true

Fly_Button.Name = "Fly_Button"
Fly_Button.Parent = Character_Section
Fly_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Fly_Button.BackgroundTransparency = 0.500
Fly_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly_Button.BorderSizePixel = 0
Fly_Button.Position = UDim2.new(0, 25, 0, 175)
Fly_Button.Size = UDim2.new(0, 150, 0, 30)
Fly_Button.Font = Enum.Font.Oswald
Fly_Button.Text = "Fly"
Fly_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly_Button.TextScaled = true
Fly_Button.TextSize = 14.000
Fly_Button.TextWrapped = true

Target_Section.Name = "Target_Section"
Target_Section.Parent = Background
Target_Section.Active = true
Target_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Target_Section.BackgroundTransparency = 1.000
Target_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target_Section.BorderSizePixel = 0
Target_Section.Position = UDim2.new(0, 105, 0, 30)
Target_Section.Size = UDim2.new(0, 395, 0, 320)
Target_Section.Visible = false
Target_Section.CanvasSize = UDim2.new(0, 0, 1.25, 0)
Target_Section.ScrollBarThickness = 5

TargetImage.Name = "TargetImage"
TargetImage.Parent = Target_Section
TargetImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TargetImage.BorderColor3 = Color3.fromRGB(0, 255, 255)
TargetImage.Position = UDim2.new(0, 25, 0, 25)
TargetImage.Size = UDim2.new(0, 100, 0, 100)
TargetImage.Image = "rbxassetid://10818605405"

TargetName_Input.Name = "TargetName_Input"
TargetName_Input.Parent = Target_Section
TargetName_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
TargetName_Input.BackgroundTransparency = 0.300
TargetName_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
TargetName_Input.Position = UDim2.new(0, 150, 0, 30)
TargetName_Input.Size = UDim2.new(0, 175, 0, 30)
TargetName_Input.Font = Enum.Font.Gotham
TargetName_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TargetName_Input.PlaceholderText = "@target..."
TargetName_Input.Text = ""
TargetName_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
TargetName_Input.TextSize = 14.000
TargetName_Input.TextWrapped = true

ClickTargetTool_Button.Name = "ClickTargetTool_Button"
ClickTargetTool_Button.Parent = TargetName_Input
ClickTargetTool_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickTargetTool_Button.BackgroundTransparency = 1.000
ClickTargetTool_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClickTargetTool_Button.BorderSizePixel = 0
ClickTargetTool_Button.Position = UDim2.new(0, 180, 0, 0)
ClickTargetTool_Button.Size = UDim2.new(0, 30, 0, 30)
ClickTargetTool_Button.Image = "rbxassetid://2716591855"

UserIDTargetLabel.Name = "UserIDTargetLabel"
UserIDTargetLabel.Parent = Target_Section
UserIDTargetLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserIDTargetLabel.BackgroundTransparency = 1.000
UserIDTargetLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserIDTargetLabel.BorderSizePixel = 0
UserIDTargetLabel.Position = UDim2.new(0, 150, 0, 70)
UserIDTargetLabel.Size = UDim2.new(0, 300, 0, 75)
UserIDTargetLabel.Font = Enum.Font.Oswald
UserIDTargetLabel.Text = "UserID: \nDisplay: \nJoined: "
UserIDTargetLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
UserIDTargetLabel.TextSize = 18.000
UserIDTargetLabel.TextWrapped = true
UserIDTargetLabel.TextXAlignment = Enum.TextXAlignment.Left
UserIDTargetLabel.TextYAlignment = Enum.TextYAlignment.Top

ViewTarget_Button.Name = "ViewTarget_Button"
ViewTarget_Button.Parent = Target_Section
ViewTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ViewTarget_Button.BackgroundTransparency = 0.500
ViewTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ViewTarget_Button.BorderSizePixel = 0
ViewTarget_Button.Position = UDim2.new(0, 210, 0, 150)
ViewTarget_Button.Size = UDim2.new(0, 150, 0, 30)
ViewTarget_Button.Font = Enum.Font.Oswald
ViewTarget_Button.Text = "View"
ViewTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ViewTarget_Button.TextScaled = true
ViewTarget_Button.TextSize = 14.000
ViewTarget_Button.TextWrapped = true

FlingTarget_Button.Name = "FlingTarget_Button"
FlingTarget_Button.Parent = Target_Section
FlingTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FlingTarget_Button.BackgroundTransparency = 0.500
FlingTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlingTarget_Button.BorderSizePixel = 0
FlingTarget_Button.Position = UDim2.new(0, 25, 0, 150)
FlingTarget_Button.Size = UDim2.new(0, 150, 0, 30)
FlingTarget_Button.Font = Enum.Font.Oswald
FlingTarget_Button.Text = "Fling"
FlingTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FlingTarget_Button.TextScaled = true
FlingTarget_Button.TextSize = 14.000
FlingTarget_Button.TextWrapped = true

FocusTarget_Button.Name = "FocusTarget_Button"
FocusTarget_Button.Parent = Target_Section
FocusTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FocusTarget_Button.BackgroundTransparency = 0.500
FocusTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FocusTarget_Button.BorderSizePixel = 0
FocusTarget_Button.Position = UDim2.new(0, 25, 0, 200)
FocusTarget_Button.Size = UDim2.new(0, 150, 0, 30)
FocusTarget_Button.Font = Enum.Font.Oswald
FocusTarget_Button.Text = "Focus"
FocusTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FocusTarget_Button.TextScaled = true
FocusTarget_Button.TextSize = 14.000
FocusTarget_Button.TextWrapped = true

BenxTarget_Button.Name = "BenxTarget_Button"
BenxTarget_Button.Parent = Target_Section
BenxTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BenxTarget_Button.BackgroundTransparency = 0.500
BenxTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BenxTarget_Button.BorderSizePixel = 0
BenxTarget_Button.Position = UDim2.new(0, 210, 0, 200)
BenxTarget_Button.Size = UDim2.new(0, 150, 0, 30)
BenxTarget_Button.Font = Enum.Font.Oswald
BenxTarget_Button.Text = "Bang"
BenxTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BenxTarget_Button.TextScaled = true
BenxTarget_Button.TextSize = 14.000
BenxTarget_Button.TextWrapped = true

PushTarget_Button.Name = "PushTarget_Button"
PushTarget_Button.Parent = Target_Section
PushTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushTarget_Button.BackgroundTransparency = 0.500
PushTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushTarget_Button.BorderSizePixel = 0
PushTarget_Button.Position = UDim2.new(0, 25, 0, 400)
PushTarget_Button.Size = UDim2.new(0, 150, 0, 30)
PushTarget_Button.Font = Enum.Font.Oswald
PushTarget_Button.Text = "Push"
PushTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushTarget_Button.TextScaled = true
PushTarget_Button.TextSize = 14.000
PushTarget_Button.TextWrapped = true

WhitelistTarget_Button.Name = "WhitelistTarget_Button"
WhitelistTarget_Button.Parent = Target_Section
WhitelistTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WhitelistTarget_Button.BackgroundTransparency = 0.500
WhitelistTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WhitelistTarget_Button.BorderSizePixel = 0
WhitelistTarget_Button.Position = UDim2.new(0, 210, 0, 400)
WhitelistTarget_Button.Size = UDim2.new(0, 150, 0, 30)
WhitelistTarget_Button.Font = Enum.Font.Oswald
WhitelistTarget_Button.Text = "Whitelist"
WhitelistTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WhitelistTarget_Button.TextScaled = true
WhitelistTarget_Button.TextSize = 14.000
WhitelistTarget_Button.TextWrapped = true

TeleportTarget_Button.Name = "TeleportTarget_Button"
TeleportTarget_Button.Parent = Target_Section
TeleportTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TeleportTarget_Button.BackgroundTransparency = 0.500
TeleportTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportTarget_Button.BorderSizePixel = 0
TeleportTarget_Button.Position = UDim2.new(0, 210, 0, 350)
TeleportTarget_Button.Size = UDim2.new(0, 150, 0, 30)
TeleportTarget_Button.Font = Enum.Font.Oswald
TeleportTarget_Button.Text = "Teleport"
TeleportTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportTarget_Button.TextScaled = true
TeleportTarget_Button.TextSize = 14.000
TeleportTarget_Button.TextWrapped = true

HeadsitTarget_Button.Name = "HeadsitTarget_Button"
HeadsitTarget_Button.Parent = Target_Section
HeadsitTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HeadsitTarget_Button.BackgroundTransparency = 0.500
HeadsitTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeadsitTarget_Button.BorderSizePixel = 0
HeadsitTarget_Button.Position = UDim2.new(0, 210, 0, 250)
HeadsitTarget_Button.Size = UDim2.new(0, 150, 0, 30)
HeadsitTarget_Button.Font = Enum.Font.Oswald
HeadsitTarget_Button.Text = "Headsit"
HeadsitTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
HeadsitTarget_Button.TextScaled = true
HeadsitTarget_Button.TextSize = 14.000
HeadsitTarget_Button.TextWrapped = true

StandTarget_Button.Name = "StandTarget_Button"
StandTarget_Button.Parent = Target_Section
StandTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
StandTarget_Button.BackgroundTransparency = 0.500
StandTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
StandTarget_Button.BorderSizePixel = 0
StandTarget_Button.Position = UDim2.new(0, 25, 0, 250)
StandTarget_Button.Size = UDim2.new(0, 150, 0, 30)
StandTarget_Button.Font = Enum.Font.Oswald
StandTarget_Button.Text = "Stand"
StandTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
StandTarget_Button.TextScaled = true
StandTarget_Button.TextSize = 14.000
StandTarget_Button.TextWrapped = true

BackpackTarget_Button.Name = "BackpackTarget_Button"
BackpackTarget_Button.Parent = Target_Section
BackpackTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BackpackTarget_Button.BackgroundTransparency = 0.500
BackpackTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackpackTarget_Button.BorderSizePixel = 0
BackpackTarget_Button.Position = UDim2.new(0, 210, 0, 300)
BackpackTarget_Button.Size = UDim2.new(0, 150, 0, 30)
BackpackTarget_Button.Font = Enum.Font.Oswald
BackpackTarget_Button.Text = "Backpack"
BackpackTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BackpackTarget_Button.TextScaled = true
BackpackTarget_Button.TextSize = 14.000
BackpackTarget_Button.TextWrapped = true

DoggyTarget_Button.Name = "DoggyTarget_Button"
DoggyTarget_Button.Parent = Target_Section
DoggyTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
DoggyTarget_Button.BackgroundTransparency = 0.500
DoggyTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
DoggyTarget_Button.BorderSizePixel = 0
DoggyTarget_Button.Position = UDim2.new(0, 25, 0, 300)
DoggyTarget_Button.Size = UDim2.new(0, 150, 0, 30)
DoggyTarget_Button.Font = Enum.Font.Oswald
DoggyTarget_Button.Text = "Doggy"
DoggyTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
DoggyTarget_Button.TextScaled = true
DoggyTarget_Button.TextSize = 14.000
DoggyTarget_Button.TextWrapped = true

DragTarget_Button.Name = "DragTarget_Button"
DragTarget_Button.Parent = Target_Section
DragTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
DragTarget_Button.BackgroundTransparency = 0.500
DragTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
DragTarget_Button.BorderSizePixel = 0
DragTarget_Button.Position = UDim2.new(0, 25, 0, 350)
DragTarget_Button.Size = UDim2.new(0, 150, 0, 30)
DragTarget_Button.Font = Enum.Font.Oswald
DragTarget_Button.Text = "Drag"
DragTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
DragTarget_Button.TextScaled = true
DragTarget_Button.TextSize = 14.000
DragTarget_Button.TextWrapped = true

Animations_Section.Name = "Animations_Section"
Animations_Section.Parent = Background
Animations_Section.Active = true
Animations_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Animations_Section.BackgroundTransparency = 1.000
Animations_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section.BorderSizePixel = 0
Animations_Section.Position = UDim2.new(0, 105, 0, 30)
Animations_Section.Size = UDim2.new(0, 395, 0, 320)
Animations_Section.Visible = false
Animations_Section.CanvasSize = UDim2.new(0, 0, 1.6, 0)
Animations_Section.ScrollBarThickness = 5

VampireAnim_Button.Name = "VampireAnim_Button"
VampireAnim_Button.Parent = Animations_Section
VampireAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
VampireAnim_Button.BackgroundTransparency = 0.500
VampireAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
VampireAnim_Button.BorderSizePixel = 0
VampireAnim_Button.Position = UDim2.new(0, 25, 0, 25)
VampireAnim_Button.Size = UDim2.new(0, 150, 0, 30)
VampireAnim_Button.Font = Enum.Font.Oswald
VampireAnim_Button.Text = "Vampire"
VampireAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
VampireAnim_Button.TextScaled = true
VampireAnim_Button.TextSize = 14.000
VampireAnim_Button.TextWrapped = true

HeroAnim_Button.Name = "HeroAnim_Button"
HeroAnim_Button.Parent = Animations_Section
HeroAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HeroAnim_Button.BackgroundTransparency = 0.500
HeroAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeroAnim_Button.BorderSizePixel = 0
HeroAnim_Button.Position = UDim2.new(0, 210, 0, 25)
HeroAnim_Button.Size = UDim2.new(0, 150, 0, 30)
HeroAnim_Button.Font = Enum.Font.Oswald
HeroAnim_Button.Text = "Hero"
HeroAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
HeroAnim_Button.TextScaled = true
HeroAnim_Button.TextSize = 14.000
HeroAnim_Button.TextWrapped = true

ZombieClassicAnim_Button.Name = "ZombieClassicAnim_Button"
ZombieClassicAnim_Button.Parent = Animations_Section
ZombieClassicAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ZombieClassicAnim_Button.BackgroundTransparency = 0.500
ZombieClassicAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ZombieClassicAnim_Button.BorderSizePixel = 0
ZombieClassicAnim_Button.Position = UDim2.new(0, 25, 0, 75)
ZombieClassicAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ZombieClassicAnim_Button.Font = Enum.Font.Oswald
ZombieClassicAnim_Button.Text = "Zombie Classic"
ZombieClassicAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ZombieClassicAnim_Button.TextScaled = true
ZombieClassicAnim_Button.TextSize = 14.000
ZombieClassicAnim_Button.TextWrapped = true

MageAnim_Button.Name = "MageAnim_Button"
MageAnim_Button.Parent = Animations_Section
MageAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MageAnim_Button.BackgroundTransparency = 0.500
MageAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MageAnim_Button.BorderSizePixel = 0
MageAnim_Button.Position = UDim2.new(0, 210, 0, 75)
MageAnim_Button.Size = UDim2.new(0, 150, 0, 30)
MageAnim_Button.Font = Enum.Font.Oswald
MageAnim_Button.Text = "Mage"
MageAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MageAnim_Button.TextScaled = true
MageAnim_Button.TextSize = 14.000
MageAnim_Button.TextWrapped = true

GhostAnim_Button.Name = "GhostAnim_Button"
GhostAnim_Button.Parent = Animations_Section
GhostAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
GhostAnim_Button.BackgroundTransparency = 0.500
GhostAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
GhostAnim_Button.BorderSizePixel = 0
GhostAnim_Button.Position = UDim2.new(0, 25, 0, 125)
GhostAnim_Button.Size = UDim2.new(0, 150, 0, 30)
GhostAnim_Button.Font = Enum.Font.Oswald
GhostAnim_Button.Text = "Ghost"
GhostAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
GhostAnim_Button.TextScaled = true
GhostAnim_Button.TextSize = 14.000
GhostAnim_Button.TextWrapped = true

ElderAnim_Button.Name = "ElderAnim_Button"
ElderAnim_Button.Parent = Animations_Section
ElderAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ElderAnim_Button.BackgroundTransparency = 0.500
ElderAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElderAnim_Button.BorderSizePixel = 0
ElderAnim_Button.Position = UDim2.new(0, 210, 0, 125)
ElderAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ElderAnim_Button.Font = Enum.Font.Oswald
ElderAnim_Button.Text = "Elder"
ElderAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ElderAnim_Button.TextScaled = true
ElderAnim_Button.TextSize = 14.000
ElderAnim_Button.TextWrapped = true

LevitationAnim_Button.Name = "LevitationAnim_Button"
LevitationAnim_Button.Parent = Animations_Section
LevitationAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LevitationAnim_Button.BackgroundTransparency = 0.500
LevitationAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
LevitationAnim_Button.BorderSizePixel = 0
LevitationAnim_Button.Position = UDim2.new(0, 25, 0, 175)
LevitationAnim_Button.Size = UDim2.new(0, 150, 0, 30)
LevitationAnim_Button.Font = Enum.Font.Oswald
LevitationAnim_Button.Text = "Levitation"
LevitationAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
LevitationAnim_Button.TextScaled = true
LevitationAnim_Button.TextSize = 14.000
LevitationAnim_Button.TextWrapped = true

AstronautAnim_Button.Name = "AstronautAnim_Button"
AstronautAnim_Button.Parent = Animations_Section
AstronautAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AstronautAnim_Button.BackgroundTransparency = 0.500
AstronautAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AstronautAnim_Button.BorderSizePixel = 0
AstronautAnim_Button.Position = UDim2.new(0, 210, 0, 175)
AstronautAnim_Button.Size = UDim2.new(0, 150, 0, 30)
AstronautAnim_Button.Font = Enum.Font.Oswald
AstronautAnim_Button.Text = "Astronaut"
AstronautAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AstronautAnim_Button.TextScaled = true
AstronautAnim_Button.TextSize = 14.000
AstronautAnim_Button.TextWrapped = true

NinjaAnim_Button.Name = "NinjaAnim_Button"
NinjaAnim_Button.Parent = Animations_Section
NinjaAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
NinjaAnim_Button.BackgroundTransparency = 0.500
NinjaAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
NinjaAnim_Button.BorderSizePixel = 0
NinjaAnim_Button.Position = UDim2.new(0, 25, 0, 225)
NinjaAnim_Button.Size = UDim2.new(0, 150, 0, 30)
NinjaAnim_Button.Font = Enum.Font.Oswald
NinjaAnim_Button.Text = "Ninja"
NinjaAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
NinjaAnim_Button.TextScaled = true
NinjaAnim_Button.TextSize = 14.000
NinjaAnim_Button.TextWrapped = true

WerewolfAnim_Button.Name = "WerewolfAnim_Button"
WerewolfAnim_Button.Parent = Animations_Section
WerewolfAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WerewolfAnim_Button.BackgroundTransparency = 0.500
WerewolfAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WerewolfAnim_Button.BorderSizePixel = 0
WerewolfAnim_Button.Position = UDim2.new(0, 210, 0, 225)
WerewolfAnim_Button.Size = UDim2.new(0, 150, 0, 30)
WerewolfAnim_Button.Font = Enum.Font.Oswald
WerewolfAnim_Button.Text = "Werewolf"
WerewolfAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WerewolfAnim_Button.TextScaled = true
WerewolfAnim_Button.TextSize = 14.000
WerewolfAnim_Button.TextWrapped = true

CartoonAnim_Button.Name = "CartoonAnim_Button"
CartoonAnim_Button.Parent = Animations_Section
CartoonAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CartoonAnim_Button.BackgroundTransparency = 0.500
CartoonAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CartoonAnim_Button.BorderSizePixel = 0
CartoonAnim_Button.Position = UDim2.new(0, 25, 0, 275)
CartoonAnim_Button.Size = UDim2.new(0, 150, 0, 30)
CartoonAnim_Button.Font = Enum.Font.Oswald
CartoonAnim_Button.Text = "Cartoon"
CartoonAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CartoonAnim_Button.TextScaled = true
CartoonAnim_Button.TextSize = 14.000
CartoonAnim_Button.TextWrapped = true

PirateAnim_Button.Name = "PirateAnim_Button"
PirateAnim_Button.Parent = Animations_Section
PirateAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PirateAnim_Button.BackgroundTransparency = 0.500
PirateAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PirateAnim_Button.BorderSizePixel = 0
PirateAnim_Button.Position = UDim2.new(0, 210, 0, 275)
PirateAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PirateAnim_Button.Font = Enum.Font.Oswald
PirateAnim_Button.Text = "Pirate"
PirateAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PirateAnim_Button.TextScaled = true
PirateAnim_Button.TextSize = 14.000
PirateAnim_Button.TextWrapped = true

SneakyAnim_Button.Name = "SneakyAnim_Button"
SneakyAnim_Button.Parent = Animations_Section
SneakyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SneakyAnim_Button.BackgroundTransparency = 0.500
SneakyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SneakyAnim_Button.BorderSizePixel = 0
SneakyAnim_Button.Position = UDim2.new(0, 25, 0, 325)
SneakyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
SneakyAnim_Button.Font = Enum.Font.Oswald
SneakyAnim_Button.Text = "Sneaky"
SneakyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SneakyAnim_Button.TextScaled = true
SneakyAnim_Button.TextSize = 14.000
SneakyAnim_Button.TextWrapped = true

ToyAnim_Button.Name = "ToyAnim_Button"
ToyAnim_Button.Parent = Animations_Section
ToyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ToyAnim_Button.BackgroundTransparency = 0.500
ToyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToyAnim_Button.BorderSizePixel = 0
ToyAnim_Button.Position = UDim2.new(0, 210, 0, 325)
ToyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ToyAnim_Button.Font = Enum.Font.Oswald
ToyAnim_Button.Text = "Toy"
ToyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ToyAnim_Button.TextScaled = true
ToyAnim_Button.TextSize = 14.000
ToyAnim_Button.TextWrapped = true

KnightAnim_Button.Name = "KnightAnim_Button"
KnightAnim_Button.Parent = Animations_Section
KnightAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
KnightAnim_Button.BackgroundTransparency = 0.500
KnightAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
KnightAnim_Button.BorderSizePixel = 0
KnightAnim_Button.Position = UDim2.new(0, 25, 0, 375)
KnightAnim_Button.Size = UDim2.new(0, 150, 0, 30)
KnightAnim_Button.Font = Enum.Font.Oswald
KnightAnim_Button.Text = "Knight"
KnightAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
KnightAnim_Button.TextScaled = true
KnightAnim_Button.TextSize = 14.000
KnightAnim_Button.TextWrapped = true

ConfidentAnim_Button.Name = "ConfidentAnim_Button"
ConfidentAnim_Button.Parent = Animations_Section
ConfidentAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ConfidentAnim_Button.BackgroundTransparency = 0.500
ConfidentAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfidentAnim_Button.BorderSizePixel = 0
ConfidentAnim_Button.Position = UDim2.new(0, 210, 0, 375)
ConfidentAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ConfidentAnim_Button.Font = Enum.Font.Oswald
ConfidentAnim_Button.Text = "Confident"
ConfidentAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ConfidentAnim_Button.TextScaled = true
ConfidentAnim_Button.TextSize = 14.000
ConfidentAnim_Button.TextWrapped = true

PopstarAnim_Button.Name = "PopstarAnim_Button"
PopstarAnim_Button.Parent = Animations_Section
PopstarAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PopstarAnim_Button.BackgroundTransparency = 0.500
PopstarAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PopstarAnim_Button.BorderSizePixel = 0
PopstarAnim_Button.Position = UDim2.new(0, 25, 0, 425)
PopstarAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PopstarAnim_Button.Font = Enum.Font.Oswald
PopstarAnim_Button.Text = "Popstar"
PopstarAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PopstarAnim_Button.TextScaled = true
PopstarAnim_Button.TextSize = 14.000
PopstarAnim_Button.TextWrapped = true

PrincessAnim_Button.Name = "PrincessAnim_Button"
PrincessAnim_Button.Parent = Animations_Section
PrincessAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PrincessAnim_Button.BackgroundTransparency = 0.500
PrincessAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PrincessAnim_Button.BorderSizePixel = 0
PrincessAnim_Button.Position = UDim2.new(0, 210, 0, 425)
PrincessAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PrincessAnim_Button.Font = Enum.Font.Oswald
PrincessAnim_Button.Text = "Princess"
PrincessAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PrincessAnim_Button.TextScaled = true
PrincessAnim_Button.TextSize = 14.000
PrincessAnim_Button.TextWrapped = true

CowboyAnim_Button.Name = "CowboyAnim_Button"
CowboyAnim_Button.Parent = Animations_Section
CowboyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CowboyAnim_Button.BackgroundTransparency = 0.500
CowboyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CowboyAnim_Button.BorderSizePixel = 0
CowboyAnim_Button.Position = UDim2.new(0, 25, 0, 475)
CowboyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
CowboyAnim_Button.Font = Enum.Font.Oswald
CowboyAnim_Button.Text = "Cowboy"
CowboyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CowboyAnim_Button.TextScaled = true
CowboyAnim_Button.TextSize = 14.000
CowboyAnim_Button.TextWrapped = true

PatrolAnim_Button.Name = "PatrolAnim_Button"
PatrolAnim_Button.Parent = Animations_Section
PatrolAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PatrolAnim_Button.BackgroundTransparency = 0.500
PatrolAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PatrolAnim_Button.BorderSizePixel = 0
PatrolAnim_Button.Position = UDim2.new(0, 210, 0, 475)
PatrolAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PatrolAnim_Button.Font = Enum.Font.Oswald
PatrolAnim_Button.Text = "Patrol"
PatrolAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PatrolAnim_Button.TextScaled = true
PatrolAnim_Button.TextSize = 14.000
PatrolAnim_Button.TextWrapped = true

ZombieFEAnim_Button.Name = "ZombieFEAnim_Button"
ZombieFEAnim_Button.Parent = Animations_Section
ZombieFEAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ZombieFEAnim_Button.BackgroundTransparency = 0.500
ZombieFEAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ZombieFEAnim_Button.BorderSizePixel = 0
ZombieFEAnim_Button.Position = UDim2.new(0, 25, 0, 525)
ZombieFEAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ZombieFEAnim_Button.Font = Enum.Font.Oswald
ZombieFEAnim_Button.Text = "FE Zombie"
ZombieFEAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ZombieFEAnim_Button.TextScaled = true
ZombieFEAnim_Button.TextSize = 14.000
ZombieFEAnim_Button.TextWrapped = true

Misc_Section.Name = "Misc_Section"
Misc_Section.Parent = Background
Misc_Section.Active = true
Misc_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Misc_Section.BackgroundTransparency = 1.000
Misc_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section.BorderSizePixel = 0
Misc_Section.Position = UDim2.new(0, 105, 0, 30)
Misc_Section.Size = UDim2.new(0, 395, 0, 320)
Misc_Section.Visible = false
Misc_Section.CanvasSize = UDim2.new(0, 0, 1.1, 0)
Misc_Section.ScrollBarThickness = 5

AntiFling_Button.Name = "AntiFling_Button"
AntiFling_Button.Parent = Misc_Section
AntiFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiFling_Button.BackgroundTransparency = 0.500
AntiFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFling_Button.BorderSizePixel = 0
AntiFling_Button.Position = UDim2.new(0, 25, 0, 25)
AntiFling_Button.Size = UDim2.new(0, 150, 0, 30)
AntiFling_Button.Font = Enum.Font.Oswald
AntiFling_Button.Text = "Anti fling"
AntiFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiFling_Button.TextScaled = true
AntiFling_Button.TextSize = 14.000
AntiFling_Button.TextWrapped = true

AntiAFK_Button.Name = "AntiAFK_Button"
AntiAFK_Button.Parent = Misc_Section
AntiAFK_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiAFK_Button.BackgroundTransparency = 0.500
AntiAFK_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK_Button.BorderSizePixel = 0
AntiAFK_Button.Position = UDim2.new(0, 25, 0, 75)
AntiAFK_Button.Size = UDim2.new(0, 150, 0, 30)
AntiAFK_Button.Font = Enum.Font.Oswald
AntiAFK_Button.Text = "Anti AFK"
AntiAFK_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK_Button.TextScaled = true
AntiAFK_Button.TextSize = 14.000
AntiAFK_Button.TextWrapped = true

AntiChatSpy_Button.Name = "AntiChatSpy_Button"
AntiChatSpy_Button.Parent = Misc_Section
AntiChatSpy_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiChatSpy_Button.BackgroundTransparency = 0.500
AntiChatSpy_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiChatSpy_Button.BorderSizePixel = 0
AntiChatSpy_Button.Position = UDim2.new(0, 210, 0, 25)
AntiChatSpy_Button.Size = UDim2.new(0, 150, 0, 30)
AntiChatSpy_Button.Font = Enum.Font.Oswald
AntiChatSpy_Button.Text = "Anti chat spy"
AntiChatSpy_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiChatSpy_Button.TextScaled = true
AntiChatSpy_Button.TextSize = 14.000
AntiChatSpy_Button.TextWrapped = true

Shaders_Button.Name = "Shaders_Button"
Shaders_Button.Parent = Misc_Section
Shaders_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Shaders_Button.BackgroundTransparency = 0.500
Shaders_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shaders_Button.BorderSizePixel = 0
Shaders_Button.Position = UDim2.new(0, 210, 0, 75)
Shaders_Button.Size = UDim2.new(0, 150, 0, 30)
Shaders_Button.Font = Enum.Font.Oswald
Shaders_Button.Text = "Shaders"
Shaders_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Shaders_Button.TextScaled = true
Shaders_Button.TextSize = 14.000
Shaders_Button.TextWrapped = true

Day_Button.Name = "Day_Button"
Day_Button.Parent = Misc_Section
Day_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Day_Button.BackgroundTransparency = 0.500
Day_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Day_Button.BorderSizePixel = 0
Day_Button.Position = UDim2.new(0, 25, 0, 125)
Day_Button.Size = UDim2.new(0, 150, 0, 30)
Day_Button.Font = Enum.Font.Oswald
Day_Button.Text = "Day"
Day_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Day_Button.TextScaled = true
Day_Button.TextSize = 14.000
Day_Button.TextWrapped = true

Night_Button.Name = "Night_Button"
Night_Button.Parent = Misc_Section
Night_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Night_Button.BackgroundTransparency = 0.500
Night_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Night_Button.BorderSizePixel = 0
Night_Button.Position = UDim2.new(0, 210, 0, 125)
Night_Button.Size = UDim2.new(0, 150, 0, 30)
Night_Button.Font = Enum.Font.Oswald
Night_Button.Text = "Night"
Night_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Night_Button.TextScaled = true
Night_Button.TextSize = 14.000
Night_Button.TextWrapped = true

Explode_Button.Name = "Explode_Button"
Explode_Button.Parent = Misc_Section
Explode_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Explode_Button.BackgroundTransparency = 0.500
Explode_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Explode_Button.BorderSizePixel = 0
Explode_Button.Position = UDim2.new(0, 25, 0, 225)
Explode_Button.Size = UDim2.new(0, 150, 0, 30)
Explode_Button.Font = Enum.Font.Oswald
Explode_Button.Text = "Explode"
Explode_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Explode_Button.TextScaled = true
Explode_Button.TextSize = 14.000
Explode_Button.TextWrapped = true

Rejoin_Button.Name = "Rejoin_Button"
Rejoin_Button.Parent = Misc_Section
Rejoin_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Rejoin_Button.BackgroundTransparency = 0.500
Rejoin_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rejoin_Button.BorderSizePixel = 0
Rejoin_Button.Position = UDim2.new(0, 25, 0, 275)
Rejoin_Button.Size = UDim2.new(0, 150, 0, 30)
Rejoin_Button.Font = Enum.Font.Oswald
Rejoin_Button.Text = "Rejoin"
Rejoin_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Rejoin_Button.TextScaled = true
Rejoin_Button.TextSize = 14.000
Rejoin_Button.TextWrapped = true

CMDX_Button.Name = "CMDX_Button"
CMDX_Button.Parent = Misc_Section
CMDX_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CMDX_Button.BackgroundTransparency = 0.500
CMDX_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CMDX_Button.BorderSizePixel = 0
CMDX_Button.Position = UDim2.new(0, 210, 0, 175)
CMDX_Button.Size = UDim2.new(0, 150, 0, 30)
CMDX_Button.Font = Enum.Font.Oswald
CMDX_Button.Text = "CMDX"
CMDX_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CMDX_Button.TextScaled = true
CMDX_Button.TextSize = 14.000
CMDX_Button.TextWrapped = true

InfYield_Button.Name = "InfYield_Button"
InfYield_Button.Parent = Misc_Section
InfYield_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
InfYield_Button.BackgroundTransparency = 0.500
InfYield_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfYield_Button.BorderSizePixel = 0
InfYield_Button.Position = UDim2.new(0, 25, 0, 175)
InfYield_Button.Size = UDim2.new(0, 150, 0, 30)
InfYield_Button.Font = Enum.Font.Oswald
InfYield_Button.Text = "Infinite Yield"
InfYield_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
InfYield_Button.TextScaled = true
InfYield_Button.TextSize = 14.000
InfYield_Button.TextWrapped = true

FreeEmotes_Button.Name = "FreeEmotes_Button"
FreeEmotes_Button.Parent = Misc_Section
FreeEmotes_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FreeEmotes_Button.BackgroundTransparency = 0.500
FreeEmotes_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FreeEmotes_Button.BorderSizePixel = 0
FreeEmotes_Button.Position = UDim2.new(0, 210, 0, 225)
FreeEmotes_Button.Size = UDim2.new(0, 150, 0, 30)
FreeEmotes_Button.Font = Enum.Font.Oswald
FreeEmotes_Button.Text = "Free emotes"
FreeEmotes_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FreeEmotes_Button.TextScaled = true
FreeEmotes_Button.TextSize = 14.000
FreeEmotes_Button.TextWrapped = true

Serverhop_Button.Name = "Serverhop_Button"
Serverhop_Button.Parent = Misc_Section
Serverhop_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Serverhop_Button.BackgroundTransparency = 0.500
Serverhop_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Serverhop_Button.BorderSizePixel = 0
Serverhop_Button.Position = UDim2.new(0, 210, 0, 275)
Serverhop_Button.Size = UDim2.new(0, 150, 0, 30)
Serverhop_Button.Font = Enum.Font.Oswald
Serverhop_Button.Text = "Server hop"
Serverhop_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Serverhop_Button.TextScaled = true
Serverhop_Button.TextSize = 14.000
Serverhop_Button.TextWrapped = true

ChatBox_Input.Name = "ChatBox_Input"
ChatBox_Input.Parent = Misc_Section
ChatBox_Input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ChatBox_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
ChatBox_Input.Position = UDim2.new(0, 25, 0, 325)
ChatBox_Input.Size = UDim2.new(0, 335, 0, 50)
ChatBox_Input.Font = Enum.Font.Oswald
ChatBox_Input.PlaceholderText = "Chat bypass [You won't get banned for your messages]"
ChatBox_Input.Text = ""
ChatBox_Input.TextColor3 = Color3.fromRGB(0, 255, 255)
ChatBox_Input.TextSize = 14.000
ChatBox_Input.TextWrapped = true
ChatBox_Input.TextXAlignment = Enum.TextXAlignment.Left
ChatBox_Input.TextYAlignment = Enum.TextYAlignment.Top

Credits_Section.Name = "Credits_Section"
Credits_Section.Parent = Background
Credits_Section.Active = true
Credits_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits_Section.BackgroundTransparency = 1.000
Credits_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section.BorderSizePixel = 0
Credits_Section.Position = UDim2.new(0, 105, 0, 30)
Credits_Section.Size = UDim2.new(0, 395, 0, 320)
Credits_Section.Visible = false
Credits_Section.CanvasSize = UDim2.new(0, 0, 0.8, 0)
Credits_Section.ScrollBarThickness = 5

Credits_Label.Name = "Credits_Label"
Credits_Label.Parent = Credits_Section
Credits_Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Label.BorderSizePixel = 0
Credits_Label.Position = UDim2.new(0, 25, 0, 150)
Credits_Label.Size = UDim2.new(0, 350, 0, 150)
Credits_Label.Font = Enum.Font.SourceSans
Credits_Label.Text = "Made by: MalwareHUB \nDiscord: system_calix\nVersion: "..version
Credits_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Credits_Label.TextSize = 24.000
Credits_Label.TextWrapped = true
Credits_Label.TextXAlignment = Enum.TextXAlignment.Left
Credits_Label.TextYAlignment = Enum.TextYAlignment.Top

Crown.Name = "Crown"
Crown.Parent = Background
Crown.AnchorPoint = Vector2.new(0.300000012, 0.800000012)
Crown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Crown.BackgroundTransparency = 1.000
Crown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Crown.BorderSizePixel = 0
Crown.Rotation = -20.000
Crown.Size = UDim2.new(0, 75, 0, 75)
Crown.Image = "rbxassetid://12298407748"
Crown.ImageColor3 = Color3.fromRGB(0, 255, 255)

Assets.Name = "Assets"
Assets.Parent = SysBroker

Ticket_Asset.Name = "Ticket_Asset"
Ticket_Asset.Parent = Assets
Ticket_Asset.AnchorPoint = Vector2.new(0, 0.5)
Ticket_Asset.BackgroundTransparency = 1.000
Ticket_Asset.BorderSizePixel = 0
Ticket_Asset.LayoutOrder = 5
Ticket_Asset.Position = UDim2.new(1, 5, 0.5, 0)
Ticket_Asset.Size = UDim2.new(0, 25, 0, 25)
Ticket_Asset.ZIndex = 2
Ticket_Asset.Image = "rbxassetid://3926305904"
Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
Ticket_Asset.ImageRectOffset = Vector2.new(424, 4)
Ticket_Asset.ImageRectSize = Vector2.new(36, 36)

Click_Asset.Name = "Click_Asset"
Click_Asset.Parent = Assets
Click_Asset.AnchorPoint = Vector2.new(0, 0.5)
Click_Asset.BackgroundTransparency = 1.000
Click_Asset.BorderSizePixel = 0
Click_Asset.Position = UDim2.new(1, 5, 0.5, 0)
Click_Asset.Size = UDim2.new(0, 25, 0, 25)
Click_Asset.ZIndex = 2
Click_Asset.Image = "rbxassetid://3926305904"
Click_Asset.ImageColor3 = Color3.fromRGB(100, 100, 100)
Click_Asset.ImageRectOffset = Vector2.new(204, 964)
Click_Asset.ImageRectSize = Vector2.new(36, 36)

Velocity_Asset.AngularVelocity = Vector3.new(0,0,0)
Velocity_Asset.MaxTorque = Vector3.new(50000,50000,50000)
Velocity_Asset.P = 1250
Velocity_Asset.Name = "BreakVelocity"
Velocity_Asset.Parent = Assets

Fly_Pad.Name = "Fly_Pad"
Fly_Pad.Parent = Assets
Fly_Pad.BackgroundTransparency = 1.000
Fly_Pad.Position = UDim2.new(0.1, 0, 0.6, 0)
Fly_Pad.Size = UDim2.new(0, 100, 0, 100)
Fly_Pad.ZIndex = 2
Fly_Pad.Image = "rbxassetid://6764432293"
Fly_Pad.ImageRectOffset = Vector2.new(713, 315)
Fly_Pad.ImageRectSize = Vector2.new(75, 75)
Fly_Pad.Visible = false

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 255))}
UIGradient.Rotation = 45
UIGradient.Parent = Fly_Pad

FlyAButton.Name = "FlyAButton"
FlyAButton.Parent = Fly_Pad
FlyAButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyAButton.BackgroundTransparency = 1.000
FlyAButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyAButton.BorderSizePixel = 0
FlyAButton.Position = UDim2.new(0, 0, 0, 30)
FlyAButton.Size = UDim2.new(0, 30, 0, 40)
FlyAButton.Font = Enum.Font.Oswald
FlyAButton.Text = ""
FlyAButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyAButton.TextSize = 25.000
FlyAButton.TextWrapped = true

FlyDButton.Name = "FlyDButton"
FlyDButton.Parent = Fly_Pad
FlyDButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyDButton.BackgroundTransparency = 1.000
FlyDButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyDButton.BorderSizePixel = 0
FlyDButton.Position = UDim2.new(0, 70, 0, 30)
FlyDButton.Size = UDim2.new(0, 30, 0, 40)
FlyDButton.Font = Enum.Font.Oswald
FlyDButton.Text = ""
FlyDButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyDButton.TextSize = 25.000
FlyDButton.TextWrapped = true

FlyWButton.Name = "FlyWButton"
FlyWButton.Parent = Fly_Pad
FlyWButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyWButton.BackgroundTransparency = 1.000
FlyWButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyWButton.BorderSizePixel = 0
FlyWButton.Position = UDim2.new(0, 30, 0, 0)
FlyWButton.Size = UDim2.new(0, 40, 0, 30)
FlyWButton.Font = Enum.Font.Oswald
FlyWButton.Text = ""
FlyWButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyWButton.TextSize = 25.000
FlyWButton.TextWrapped = true

FlySButton.Name = "FlySButton"
FlySButton.Parent = Fly_Pad
FlySButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlySButton.BackgroundTransparency = 1.000
FlySButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlySButton.BorderSizePixel = 0
FlySButton.Position = UDim2.new(0, 30, 0, 70)
FlySButton.Size = UDim2.new(0, 40, 0, 30)
FlySButton.Font = Enum.Font.Oswald
FlySButton.Text = ""
FlySButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlySButton.TextSize = 25.000
FlySButton.TextWrapped = true

OpenClose.Name = "OpenClose"
OpenClose.Parent = SysBroker
OpenClose.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderSizePixel = 0
OpenClose.Position = UDim2.new(0, 0, 0.5, 0)
OpenClose.Size = UDim2.new(0, 30, 0, 30)
OpenClose.Image = "rbxassetid://12298407748"
OpenClose.ImageColor3 = Color3.fromRGB(0, 255, 255)

UICornerOC.CornerRadius = UDim.new(1, 0)
UICornerOC.Parent = OpenClose

CreateToggle(AntiRagdoll_Button)
CreateToggle(PushAura_Button)
CreateToggle(SpamMines_Button)
CreateToggle(PotionFling_Button)
CreateToggle(TouchFling_Button)
CreateToggle(PotionDi_Button)
CreateToggle(VoidProtection_Button)
CreateClicker(PushAll_Button)
CreateClicker(BreakCannons_Button)
CreateClicker(LethalCannons_Button)
CreateClicker(ChatAlert_Button)
CreateClicker(FreePushTool_Button)
CreateClicker(CannonTP1_Button)
CreateClicker(CannonTP2_Button)
CreateClicker(CannonTP3_Button)
CreateClicker(MinefieldTP_Button)
CreateClicker(BallonTP_Button)
CreateClicker(NormalStairsTP_Button)
CreateClicker(MovingStairsTP_Button)
CreateClicker(SpiralStairsTP_Button)
CreateClicker(SkyscraperTP_Button)
CreateClicker(PoolTP_Button)

CreateToggle(Fly_Button)
CreateClicker(WalkSpeed_Button)
CreateClicker(ClearCheckpoint_Button)
CreateClicker(JumpPower_Button)
CreateClicker(SaveCheckpoint_Button)
CreateClicker(Respawn_Button)
CreateClicker(FlySpeed_Button)

CreateToggle(ViewTarget_Button)
CreateToggle(FlingTarget_Button)
CreateToggle(FocusTarget_Button)
CreateToggle(BenxTarget_Button)
CreateToggle(HeadsitTarget_Button)
CreateToggle(StandTarget_Button)
CreateToggle(BackpackTarget_Button)
CreateToggle(DoggyTarget_Button)
CreateToggle(DragTarget_Button)
CreateClicker(PushTarget_Button)
CreateClicker(WhitelistTarget_Button)
CreateClicker(TeleportTarget_Button)

CreateClicker(VampireAnim_Button)
CreateClicker(HeroAnim_Button)
CreateClicker(ZombieClassicAnim_Button)
CreateClicker(MageAnim_Button)
CreateClicker(GhostAnim_Button)
CreateClicker(ElderAnim_Button)
CreateClicker(LevitationAnim_Button)
CreateClicker(AstronautAnim_Button)
CreateClicker(NinjaAnim_Button)
CreateClicker(WerewolfAnim_Button)
CreateClicker(CartoonAnim_Button)
CreateClicker(PirateAnim_Button)
CreateClicker(SneakyAnim_Button)
CreateClicker(ToyAnim_Button)
CreateClicker(KnightAnim_Button)
CreateClicker(ConfidentAnim_Button)
CreateClicker(PopstarAnim_Button)
CreateClicker(PrincessAnim_Button)
CreateClicker(CowboyAnim_Button)
CreateClicker(PatrolAnim_Button)
CreateClicker(ZombieFEAnim_Button)

CreateToggle(AntiFling_Button)
CreateToggle(AntiChatSpy_Button)
CreateToggle(AntiAFK_Button)
CreateToggle(Shaders_Button)
CreateClicker(Day_Button)
CreateClicker(Night_Button)
CreateClicker(Rejoin_Button)
CreateClicker(CMDX_Button)
CreateClicker(Explode_Button)
CreateClicker(FreeEmotes_Button)
CreateClicker(InfYield_Button)
CreateClicker(Serverhop_Button)

task.wait(0.5)

local function ChangeSection(SectionClicked)
    SectionClickedName = string.split(SectionClicked.Name,"_")[1]
    for i,v in pairs(SectionList:GetChildren()) do
        if v.Name ~= SectionClicked.Name then
            v.Transparency = 0.5
        else
            v.Transparency = 0
        end
    end
    for i,v in pairs(Background:GetChildren()) do
        if v:IsA("ScrollingFrame") then
            SectionForName = string.split(v.Name,"_")[1]
            if string.find(SectionClickedName, SectionForName) then
                v.Visible = true
            else
                v.Visible = false
            end
        end
    end
end

local function UpdateTarget(player)
    pcall(function()
        if table.find(ForceWhitelist,player.UserId) then
            SendNotify("System Broken","You cant target this player: @"..player.Name.." / "..player.DisplayName,5)
            player = nil
        end
    end)
    if (player ~= nil) then
        TargetedPlayer = player.Name
        TargetName_Input.Text = player.Name
        UserIDTargetLabel.Text = ("UserID: "..player.UserId.."\nDisplay: "..player.DisplayName.."\nJoined: "..os.date("%d-%m-%Y", os.time()-player.AccountAge * 24 * 3600).." [Day/Month/Year]")
        TargetImage.Image = Players:GetUserThumbnailAsync(player.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
    else
        TargetName_Input.Text = "@target..."
        UserIDTargetLabel.Text = "UserID: \nDisplay: \nJoined: "
        TargetImage.Image = "rbxassetid://10818605405"
        TargetedPlayer = nil
        if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            FlingTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
            TouchFling_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        end
        ViewTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        FocusTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        BenxTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        HeadsitTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        StandTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        BackpackTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        DoggyTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        DragTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
    end
end
local aBjaUfk = game.Workspace:FindFirstChild("SBTI")

local function ToggleFling(bool)
    task.spawn(function()
        if bool then
            local RVelocity = nil
            repeat
                pcall(function()
                    RVelocity = GetRoot(plr).Velocity 
                    GetRoot(plr).Velocity = Vector3.new(math.random(-150,150),-25000,math.random(-150,150))
                    RunService.RenderStepped:wait()
                    GetRoot(plr).Velocity = RVelocity
                end)
                RunService.Heartbeat:wait()
            until TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
        else
            TouchFling_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
        end
    end)
end

--CHANGE SECTION BUTTONS
ChangeSection(Home_Section_Button)
Home_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Home_Section_Button)
end)

Game_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Game_Section_Button)
end)

Character_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Character_Section_Button)
end)

Target_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Target_Section_Button)
end)

Animations_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Animations_Section_Button)
end)

Misc_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Misc_Section_Button)
end)

Credits_Section_Button.MouseButton1Click:Connect(function()
    ChangeSection(Credits_Section_Button)
end)

--GAME SECTION BUTTONS
AntiRagdollFunction = nil
AntiRagdoll_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(AntiRagdoll_Button)
    ToggleRagdoll(true)
    if AntiRagdoll_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        AntiRagdollFunction = GetRoot(plr).ChildAdded:Connect(function(Force)
            if Force.Name == "PushForce" then
                Force.MaxForce = Vector3.new(0,0,0)
                Force.Velocity = Vector3.new(0,0,0)
            end
        end)
    else
        ToggleRagdoll(false)
        AntiRagdollFunction:Disconnect()
    end
end)

PushAura_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(PushAura_Button)
    if PushAura_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        repeat
            task.wait(0.3)
            pcall(function()
                for i,v in pairs(Players:GetPlayers()) do
                    if (v ~= plr) and (not table.find(ScriptWhitelist,v.UserId)) and (not table.find(ForceWhitelist,v.UserId)) then
                        Push(v)
                    end
                end
            end)
        until PushAura_Button.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0,255,0)
    end
end)

AntiMinesFunction = nil
SpamMines_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(SpamMines_Button)
    if SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        AntiMinesFunction = plr.Character.Head.ChildAdded:Connect(function(Force)
            if Force.Name == "BodyVelocity" then
                Force.MaxForce = Vector3.new(0,0,0)
                Force.Velocity = Vector3.new(0,0,0)
            end
        end)
        repeat task.wait(1)
            for i,v in pairs(MinesFolder:GetChildren()) do
                if v.Name == "Landmine" and v:FindFirstChild("HitPart") then
                    pcall(function()
                        Touch(v.HitPart.TouchInterest,GetRoot(plr))
                    end)
                end
            end
        until SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
    else
        AntiMinesFunction:Disconnect()
    end
end)

PotionFling_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(PotionFling_Button)
    if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        if CheckPotion() then
            if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
                ChangeToggleColor(PotionDi_Button)
            end
            PotionTool.Parent = plr.Character
            local PFS, PFF = pcall(function()
                PotionTool.InSide.Massless = true
                PotionTool.Cap.Massless = true
                PotionTool.Handle.Massless = true
                PotionTool.GripUp = Vector3.new(0,1,0)
                PotionTool.GripPos = Vector3.new(5000,-25,5000)
                PotionTool.Parent = plr.Backpack
                PotionTool.Parent = plr.Character
            end)
        else
            ChangeToggleColor(PotionFling_Button)
        end
    else
        PotionTool.Parent = plr.Character
        local PFS, PFF = pcall(function()
            PotionTool.InSide.Massless = false
            PotionTool.Cap.Massless = false
            PotionTool.Handle.Massless = false
            PotionTool.GripUp = Vector3.new(0,1,0)
            PotionTool.GripPos = Vector3.new(0.1,-0.5,0)
            PotionTool.Parent = plr.Backpack
            PotionTool.Parent = plr.Character
        end)
    end
end)

TouchFling_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(TouchFling_Button)
    if TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        local fixpos = GetRoot(plr).Position
        ToggleVoidProtection(true)
        ToggleFling(true)
        TeleportTO(fixpos.X,fixpos.Y,fixpos.Z,"pos","safe")
        ToggleVoidProtection(false)
        if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            ToggleVoidProtection(true)
        end
    else
        if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            ChangeToggleColor(FlingTarget_Button)
        end
    end
end)

PotionDi_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(PotionDi_Button)
    if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        if CheckPotion() then
            if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
                ChangeToggleColor(PotionFling_Button)
            end
            PotionTool.Parent = plr.Character
            PotionTool.GripUp = Vector3.new(1,0,0)
            PotionTool.GripPos = Vector3.new(1.5, 0.5, -1.5)
            PotionTool.Parent = plr.Backpack
            PotionTool.Parent = plr.Character
        else
            ChangeToggleColor(PotionDi_Button)
        end
    else
        PotionTool.Parent = plr.Character
        PotionTool.GripUp = Vector3.new(0,1,0)
        PotionTool.GripPos = Vector3.new(0.1,-0.5,0)
        PotionTool.Parent = plr.Backpack
        PotionTool.Parent = plr.Character
    end
end)

VoidProtection_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(VoidProtection_Button)
    if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ToggleVoidProtection(true)
    else
        ToggleVoidProtection(false)
    end
end)

FreePushTool_Button.MouseButton1Click:Connect(function()
    local ModdedPush = Instance.new("Tool")
    ModdedPush.Name = "ModdedPush"
    ModdedPush.RequiresHandle = false
    ModdedPush.TextureId = "rbxassetid://14478599909"
    ModdedPush.ToolTip = "Modded push"

    local function ActivateTool()
        local root = GetRoot(plr)
        local hit = mouse.Target
        local person = nil
        if hit and hit.Parent then
            if hit.Parent:IsA("Model") then
                person = game.Players:GetPlayerFromCharacter(hit.Parent)
            elseif hit.Parent:IsA("Accessory") then
                person = game.Players:GetPlayerFromCharacter(hit.Parent.Parent)
            end
            if person then
                local pushpos = root.CFrame
                PredictionTP(person)
                task.wait(GetPing()+0.05)
                Push(person)
                root.CFrame = pushpos
            end
        end
    end

    ModdedPush.Activated:Connect(function()
        ActivateTool()
    end)
    ModdedPush.Parent = plr.Backpack
end)

BreakCannons_Button.MouseButton1Click:Connect(function()
    ToggleVoidProtection(true)
    TeleportTO(0,-10000,0,"pos")
    task.wait(GetPing()+0.1)
    ToggleVoidProtection(false)
    task.wait(GetPing()+0.1)
    for i,v in pairs(CannonsFolders[1]:GetChildren()) do
        if v.Name == "Cannon" then
            pcall(function()
                fireclickdetector(v.Cannon_Part.ClickDetector)
            end)
        end
    end
    for i,v in pairs(CannonsFolders[2]:GetChildren()) do
        if v.Name == "Cannon" then
            pcall(function()
                fireclickdetector(v.Cannon_Part.ClickDetector)
            end)
        end
    end

    if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ToggleVoidProtection(true)
    end
end)
pcall(function()
    fireproximityprompt(game.Workspace.SBTI.TI)
end)
PushAll_Button.MouseButton1Click:Connect(function()
    local oldpos = GetRoot(plr).Position
    for i,v in pairs(Players:GetPlayers()) do
        pcall(function()
            if (v ~= plr) and (not table.find(ScriptWhitelist,v.UserId)) and (not table.find(ForceWhitelist,v.UserId)) then
                PredictionTP(v)
                task.wait(GetPing()+0.05)
                Push(v)
            end
        end)
    end
    TeleportTO(oldpos.X,oldpos.Y,oldpos.Z,"pos","safe")
end)

LethalCannons_Button.MouseButton1Click:Connect(function()
    for i,v in pairs(CannonsFolders[1]:GetChildren()) do
        if v.Name == "Cannon" then
            pcall(function()
                plr.Character.Humanoid:ChangeState(15)
                task.wait(GetPing())
                fireclickdetector(v.Cannon_Part.ClickDetector)
                plr.CharacterAdded:Wait()
                task.wait(1)
            end)
        end
    end
    for i,v in pairs(CannonsFolders[2]:GetChildren()) do
        if v.Name == "Cannon" then
            pcall(function()
                plr.Character.Humanoid:ChangeState(15)
                task.wait(GetPing())
                fireclickdetector(v.Cannon_Part.ClickDetector)
                plr.CharacterAdded:Wait()
                task.wait(1)
            end)
        end
    end
end)

ChatAlert_Button.MouseButton1Click:Connect(function()
    for i = 1,3 do
        local args = {[1] = "\u{205F}",[2] = "All"}
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end)

CannonTP1_Button.MouseButton1Click:Connect(function()
    TeleportTO(-61, 34, -228,"pos","safe")
end)

CannonTP2_Button.MouseButton1Click:Connect(function()
    TeleportTO(50, 34, -228,"pos","safe")
end)

CannonTP3_Button.MouseButton1Click:Connect(function()
    TeleportTO(-6, 35, -106,"pos","safe")
end)

MinefieldTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(-65, 23, -151,"pos","safe")
end)

BallonTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(-118, 23, -126,"pos","safe")
end)

NormalStairsTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(-6, 203, -496,"pos","safe")
end)

MovingStairsTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(-210, 87, -224,"pos","safe")
end)

SpiralStairsTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(151, 847, -306,"pos","safe")
end)

SkyscraperTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(142, 1033, -192,"pos","safe")
end)

PoolTP_Button.MouseButton1Click:Connect(function()
    TeleportTO(-133, 65, -321,"pos","safe")
end)

CMDBar.FocusLost:Connect(function()
    command = CMDBar.Text
    Players:Chat(command)
    SendNotify("System Broken",("Executed "..command),5)
    CMDBar.Text = ""
end)

--CHARACTER SECTION

WalkSpeed_Button.MouseButton1Click:Connect(function()
    pcall(function()
        local Speed = WalkSpeed_Input.Text:gsub("%D", "")
        if Speed == "" then
            Speed = 16
        end
        plr.Character.Humanoid.WalkSpeed = tonumber(Speed)
        SendNotify("System Broken","Walk speed updated.",5)
    end)
end)

JumpPower_Button.MouseButton1Click:Connect(function()
    pcall(function()
        local Power = JumpPower_Input.Text:gsub("%D", "")
        if Power == "" then
            Power = 50
        end
        plr.Character.Humanoid.JumpPower = tonumber(Power)
        SendNotify("System Broken","Jump power updated.",5)
    end)
end)

FlySpeed_Button.MouseButton1Click:Connect(function()
    pcall(function()
        local Speed = FlySpeed_Input.Text:gsub("%D", "")
        if Speed == "" then
            Speed = 50
        end
        FlySpeed = tonumber(Speed)
        SendNotify("System Broken","Fly speed updated.",5)
    end)
end)

Respawn_Button.MouseButton1Click:Connect(function()
    local RsP = GetRoot(plr).Position
    plr.Character.Humanoid.Health = 0
    plr.CharacterAdded:wait(); task.wait(GetPing()+0.1)
    TeleportTO(RsP.X,RsP.Y,RsP.Z,"pos","safe")
end)

SaveCheckpoint_Button.MouseButton1Click:Connect(function()
    SavedCheckpoint = GetRoot(plr).Position
    SendNotify("System Broken","Checkpoint saved.",5)
end)

ClearCheckpoint_Button.MouseButton1Click:Connect(function()
    SavedCheckpoint = nil
    SendNotify("System Broken","Checkpoint cleared.",5)
end)

local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local KeyDownFunction = nil
local KeyUpFunction = nil
Fly_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(Fly_Button)
    if Fly_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        flying = true
        if game:GetService("UserInputService").TouchEnabled then
            Fly_Pad.Visible = true
        end
        local UpperTorso = plr.Character.UpperTorso
        local speed = 0
        local function Fly()
            local bg = Instance.new("BodyGyro", UpperTorso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = UpperTorso.CFrame
            local bv = Instance.new("BodyVelocity", UpperTorso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            PlayAnim(10714347256,4,0)
            repeat task.wait()
                plr.Character.Humanoid.PlatformStand = true
                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                    speed = speed+FlySpeed*0.10
                    if speed > FlySpeed then
                        speed = FlySpeed
                    end
                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                    speed = speed-FlySpeed*0.10
                    if speed < 0 then
                        speed = 0
                    end
                end
                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                else
                    bv.velocity = Vector3.new(0,0.1,0)
                end
                bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/FlySpeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 0
            bg:Destroy()
            bv:Destroy()
            plr.Character.Humanoid.PlatformStand = false
        end

        KeyDownFunction = mouse.KeyDown:connect(function(key)
            if key:lower() == "w" then
                ctrl.f = 1
                PlayAnim(10714177846,4.65,0)
            elseif key:lower() == "s" then
                ctrl.b = -1
                PlayAnim(10147823318,4.11,0)
            elseif key:lower() == "a" then
                ctrl.l = -1
                PlayAnim(10147823318,3.55,0)
            elseif key:lower() == "d" then
                ctrl.r = 1
                PlayAnim(10147823318,4.81,0)
            end
        end)

        KeyUpFunction = mouse.KeyUp:connect(function(key)
            if key:lower() == "w" then
                ctrl.f = 0
                PlayAnim(10714347256,4,0)
            elseif key:lower() == "s" then
                ctrl.b = 0
                PlayAnim(10714347256,4,0)
            elseif key:lower() == "a" then
                ctrl.l = 0
                PlayAnim(10714347256,4,0)
            elseif key:lower() == "d" then
                ctrl.r = 0
                PlayAnim(10714347256,4,0)
            end
        end)
        Fly()
    else
        flying = false
        Fly_Pad.Visible = false
        KeyDownFunction:Disconnect()
        KeyUpFunction:Disconnect()
        StopAnim()
    end
end)

FlyAButton.MouseButton1Down:Connect(function()
    keypress("0x41")
end)
FlyAButton.MouseButton1Up:Connect(function ()
    keyrelease("0x41")
end)

FlySButton.MouseButton1Down:Connect(function()
    keypress("0x53")
end)
FlySButton.MouseButton1Up:Connect(function ()
    keyrelease("0x53")
end)

FlyDButton.MouseButton1Down:Connect(function()
    keypress("0x44")
end)
FlyDButton.MouseButton1Up:Connect(function ()
    keyrelease("0x44")
end)

FlyWButton.MouseButton1Down:Connect(function()
    keypress("0x57")
end)
FlyWButton.MouseButton1Up:Connect(function ()
    keyrelease("0x57")
end)

--TARGET
ClickTargetTool_Button.MouseButton1Click:Connect(function()
    local GetTargetTool = Instance.new("Tool")
    GetTargetTool.Name = "ClickTarget"
    GetTargetTool.RequiresHandle = false
    GetTargetTool.TextureId = "rbxassetid://2716591855"
    GetTargetTool.ToolTip = "Select Target"

    local function ActivateTool()
        local root = GetRoot(plr)
        local hit = mouse.Target
        local person = nil
        if hit and hit.Parent then
            if hit.Parent:IsA("Model") then
                person = game.Players:GetPlayerFromCharacter(hit.Parent)
            elseif hit.Parent:IsA("Accessory") then
                person = game.Players:GetPlayerFromCharacter(hit.Parent.Parent)
            end
            if person then
                UpdateTarget(person)
            end
        end
    end

    GetTargetTool.Activated:Connect(function()
        ActivateTool()
    end)
    GetTargetTool.Parent = plr.Backpack
end)

FlingTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(FlingTarget_Button)
        if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            if TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
                ChangeToggleColor(TouchFling_Button)
            end
            local OldPos = GetRoot(plr).Position
            ToggleFling(true)
            repeat task.wait()
                pcall(function()
                    PredictionTP(Players[TargetedPlayer],"safe")
                end)
                task.wait()
            until FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            TeleportTO(OldPos.X,OldPos.Y,OldPos.Z,"pos","safe")
        else
            ToggleFling(false)
        end
    end
end)

ViewTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(ViewTarget_Button)
        if ViewTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            repeat
                pcall(function()
                    game.Workspace.CurrentCamera.CameraSubject = Players[TargetedPlayer].Character.Humanoid
                end)
                task.wait(0.5)
            until ViewTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            game.Workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
        end
    end
end)

FocusTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(FocusTarget_Button)
        if FocusTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            repeat
                pcall(function()
                    local target = Players[TargetedPlayer]
                    TeleportTO(0,0,0,target)
                    Push(Players[TargetedPlayer])
                end)
                task.wait(0.2)
            until FocusTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
        end
    end
end)

BenxTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(BenxTarget_Button)
        if BenxTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            PlayAnim(5918726674,0,1)
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local otherRoot = GetRoot(Players[TargetedPlayer])
                    GetRoot(plr).CFrame = otherRoot.CFrame * CFrame.new(0,0,1.1)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until BenxTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            StopAnim()
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

HeadsitTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(HeadsitTarget_Button)
        if HeadsitTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local targethead = Players[TargetedPlayer].Character.Head
                    plr.Character.Humanoid.Sit = true
                    GetRoot(plr).CFrame = targethead.CFrame * CFrame.new(0,2,0)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until HeadsitTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

StandTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(StandTarget_Button)
        if StandTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            PlayAnim(13823324057,4,0)
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local root = GetRoot(Players[TargetedPlayer])
                    GetRoot(plr).CFrame = root.CFrame * CFrame.new(-3,1,0)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until StandTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            StopAnim()
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

BackpackTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(BackpackTarget_Button)
        if BackpackTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local root = GetRoot(Players[TargetedPlayer])
                    plr.Character.Humanoid.Sit = true
                    GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,0,1.2) * CFrame.Angles(0, -3, 0)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until BackpackTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

DoggyTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(DoggyTarget_Button)
        if DoggyTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            PlayAnim(13694096724,3.4,0)
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local root = Players[TargetedPlayer].Character.LowerTorso
                    GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,0.23,0)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until DoggyTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            StopAnim()
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

DragTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        ChangeToggleColor(DragTarget_Button)
        if DragTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
            PlayAnim(10714360343,0.5,0)
            repeat
                pcall(function()
                    if not GetRoot(plr):FindFirstChild("BreakVelocity") then
                        pcall(function()
                            local TempV = Velocity_Asset:Clone()
                            TempV.Parent = GetRoot(plr)
                        end)
                    end
                    local root = Players[TargetedPlayer].Character.RightHand
                    GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,-2.5,1) * CFrame.Angles(-2, -3, 0)
                    GetRoot(plr).Velocity = Vector3.new(0,0,0)
                end)
                task.wait()
            until DragTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
            StopAnim()
            if GetRoot(plr):FindFirstChild("BreakVelocity") then
                GetRoot(plr).BreakVelocity:Destroy()
            end
        end
    end
end)

PushTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        local pushpos = GetRoot(plr).CFrame
        PredictionTP(Players[TargetedPlayer])
        task.wait(GetPing()+0.05)
        Push(Players[TargetedPlayer])
        GetRoot(plr).CFrame = pushpos
    end
end)

TeleportTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        TeleportTO(0,0,0,Players[TargetedPlayer],"safe")
    end
end)

WhitelistTarget_Button.MouseButton1Click:Connect(function()
    if TargetedPlayer ~= nil then
        if table.find(ScriptWhitelist, Players[TargetedPlayer].UserId) then
            for i,v in pairs(ScriptWhitelist) do
                if v == Players[TargetedPlayer].UserId then
                    table.remove(ScriptWhitelist, i)
                end
            end
            SendNotify("System Broken",TargetedPlayer.." removed from whitelist.",5)
        else
            table.insert(ScriptWhitelist, Players[TargetedPlayer].UserId)
            SendNotify("System Broken",TargetedPlayer.." added to whitelist.", 5)
        end
    end
end)

TargetName_Input.FocusLost:Connect(function()
    local LabelText = TargetName_Input.Text
    local LabelTarget = GetPlayer(LabelText)
    UpdateTarget(LabelTarget)
end)

--ANIMATIONS

VampireAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

HeroAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

ZombieClassicAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

MageAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

GhostAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

ElderAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

LevitationAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

AstronautAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

NinjaAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

WerewolfAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

CartoonAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

PirateAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

SneakyAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

ToyAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

KnightAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

--NEWS
ConfidentAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

PopstarAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

PrincessAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

CowboyAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

PatrolAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

ZombieFEAnim_Button.MouseButton1Click:Connect(function()
    local Animate = plr.Character.Animate
    Animate.Disabled = true
    StopAnim()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3489174223"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    plr.Character.Humanoid:ChangeState(3)
    Animate.Disabled = false
end)

--MISC

pcall(function()
    aBjaUfk.Position = plr.Character.HumanoidRootPart.Position
end)

AntiFling_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(AntiFling_Button)
    if AntiFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        _G.AntiFlingToggled = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AntiFling'))()
    else
        _G.AntiFlingToggled = false
    end
end)

AntiChatSpy_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(AntiChatSpy_Button)
    if AntiChatSpy_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        repeat task.wait()
            Players:Chat(RandomChar())
        until AntiChatSpy_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
    end
end)

local AntiAFKFunction = nil
AntiAFK_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(AntiAFK_Button)
    if AntiAFK_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        AntiAFKFunction = plr.Idled:Connect(function()
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    else
        AntiAFKFunction:Disconnect()
    end
end)

Shaders_Button.MouseButton1Click:Connect(function()
    ChangeToggleColor(Shaders_Button)
    if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        local Sky = Instance.new("Sky")
        local Bloom = Instance.new("BloomEffect")
        local Blur = Instance.new("BlurEffect")
        local ColorC = Instance.new("ColorCorrectionEffect")
        local SunRays = Instance.new("SunRaysEffect")

        Light.Brightness = 2.25
        Light.ExposureCompensation = 0.1
        Light.ClockTime = 17.55

        Sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
        Sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
        Sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
        Sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
        Sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
        Sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
        Sky.StarCount = 5000
        Sky.SunAngularSize = 5
        Sky.Parent = Light

        Bloom.Intensity = 0.3
        Bloom.Size = 10
        Bloom.Threshold = 0.8
        Bloom.Parent = Light

        Blur.Size = 5
        Blur.Parent = Light

        ColorC.Brightness = 0
        ColorC.Contrast = 0.1
        ColorC.Saturation = 0.25
        ColorC.TintColor = Color3.fromRGB(255, 255, 255)
        ColorC.Parent = Light

        SunRays.Intensity = 0.1
        SunRays.Spread = 0.8
        SunRays.Parent = Light
    else
        for i,v in pairs(Light:GetChildren()) do
            v:Destroy()
        end
        Light.Brightness = 2
        Light.ExposureCompensation = 0
    end
end)

Day_Button.MouseButton1Click:Connect(function()
    if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
        game:GetService("Lighting").ClockTime = 14
    else
        SendNotify("System Broken","Please turn off shaders.",5)
    end
end)

Night_Button.MouseButton1Click:Connect(function()
    if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
        game:GetService("Lighting").ClockTime = 19
    else
        SendNotify("System Broken","Please turn off shaders.",5)
    end
end)

InfYield_Button.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

CMDX_Button.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)

Explode_Button.MouseButton1Click:Connect(function()
    ToggleRagdoll(false)
    task.wait()
    plr.Character.Humanoid:ChangeState(0)
    local bav = Instance.new("BodyAngularVelocity")
    bav.Parent = GetRoot(plr)
    bav.Name = "Spin"
    bav.MaxTorque = Vector3.new(0,math.huge,0)
    bav.AngularVelocity = Vector3.new(0,150,0)
    task.wait(3)
    plr.Character.Humanoid:ChangeState(15)
end)

FreeEmotes_Button.MouseButton1Click:Connect(function()
    if not FreeEmotesEnabled then
        FreeEmotesEnabled = true
        SendNotify("System Broken","Loading free emotes.\nCredits: Gi#7331")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AllEmotes"))()
    end
end)

Rejoin_Button.MouseButton1Click:Connect(function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
end)

Serverhop_Button.MouseButton1Click:Connect(function()
    if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
        local body = HttpService:JSONDecode(req.Body)
        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end
        if #servers > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], plr)
        end
    end
end)

ChatBox_Input.FocusLost:Connect(function()
    local args = {[1] = ChatBox_Input.Text,[2] = "All"}
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    ChatBox_Input.Text = ""
end)

--GUI Functions
Players.PlayerRemoving:Connect(function(player)
    pcall(function()
        if player.Name == TargetedPlayer then
            UpdateTarget(nil)
            SendNotify("System Broken","Targeted player left/rejoined.",5)
        end
    end)
end)

plr.CharacterAdded:Connect(function(x)
    task.wait(GetPing()+0.1)
    x:WaitForChild("Humanoid")
    if SavedCheckpoint ~= nil then
        TeleportTO(SavedCheckpoint.X,SavedCheckpoint.Y,SavedCheckpoint.Z,"pos","safe")
    end
    if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ChangeToggleColor(PotionDi_Button)
        SendNotify("System Broken","PotionDick was automatically disabled due to your character respawn",5)
    end
    if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ChangeToggleColor(PotionFling_Button)
        SendNotify("System Broken","PotionFling was automatically disabled due to your character respawn",5)
    end
    if AntiRagdoll_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ChangeToggleColor(AntiRagdoll_Button)
        SendNotify("System Broken","AntiRagdoll was automatically disabled due to your character respawn",5)
    end
    if SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ChangeToggleColor(SpamMines_Button)
        SendNotify("System Broken","SpamMines was automatically disabled due to your character respawn",5)
    end
    if Fly_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
        ChangeToggleColor(Fly_Button)
        flying = false
        Fly_Pad.Visible = false
        KeyDownFunction:Disconnect()
        KeyUpFunction:Disconnect()
        SendNotify("System Broken","Fly was automatically disabled due to your character respawn",5)
    end
    x.Humanoid.Died:Connect(function()
        pcall(function()
            x["Pushed"].Disabled = false
            x["RagdollMe"].Disabled = false
        end)
    end)
    task.wait(1)
    local appearance = players:GetCharacterAppearanceAsync(plr.UserId)
    local original_accs = {}
    local accs = {}
    for i,acc in pairs(appearance:GetChildren()) do --Save original accessoryes
        if acc:IsA("Accessory") then
            table.insert(original_accs, acc.Name)
        end
    end
    for i,acc in pairs(plr.Character:GetChildren()) do --Save player accessoryes
        if acc:IsA("Accessory") then
            table.insert(accs, acc.Name)
        end
    end
    
    local original_ammount = #original_accs
    local ammount = #accs
    if ammount == original_ammount then
        local count = 0
        for i,v in pairs(accs) do
            if table.find(original_accs, v) then
                count = count+1
            end
        end
        if not (count == original_ammount) then
            SysBroker:Destroy()
            SendNotify("System Broken","An unexpected error occurred, re-joining...")
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
        end
    else
        SysBroker:Destroy()
        SendNotify("System Broken","An unexpected error occurred, re-joining...")
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    end
    appearance:Destroy()
end)

task.spawn(function()
    while task.wait(10) do
        pcall(function()
            local GuiVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/version"))()
            if version<GuiVersion then
                SendNotify("System Broken","You are not using the latest version, please run the script again.",5)
                task.wait(5)
                SysBroker:Destroy()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
            end
        end)
    end
end)

OpenClose.MouseButton1Click:Connect(function()
    Background.Visible = not Background.Visible
end)

game:GetService("UserInputService").InputBegan:Connect(function(input,gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.KeyCode == Enum.KeyCode.B then
        Background.Visible = not Background.Visible
    end
end)

task.spawn(function()
    while task.wait(60) do
        pcall(function()
            local age = plr.AccountAge
            local date_1 = os.date("%Y-%m-%d", os.time()-age * 24 * 3600)
            local date_2 = os.date("%Y-%m-%d", os.time()-(age+1) * 24 * 3600)
            local date_3 = os.date("%Y-%m-%d", os.time()-(age-1) * 24 * 3600)

            local info = game:HttpGet("https://users.roblox.com/v1/users/"..plr.UserId)
            local decode = game:GetService("HttpService"):JSONDecode(info)
            local original_name = decode["name"]
            local original_display = decode["displayName"]
            local original_date = decode["created"]:sub(1,10)

            if (plr.Name ~= original_name) or (plr.DisplayName ~= original_display) or (plr.UserId ~= plr.CharacterAppearanceId) then
                SysBroker:Destroy()
                SendNotify("System Broken","An unexpected error occurred, re-joining...")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
            end
            if (date_1 ~= original_date) and (date_2 ~= original_date) and (date_3 ~= original_date) then
                SysBroker:Destroy()
                SendNotify("System Broken","An unexpected error occurred, re-joining...")
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
            end
        end)
    end
end)
export type Json = {
    Url: string;
    Method: "POST";
    Headers: string;
    Body: any
}

pcall(function()
    local response = HttpRequest({
        Url = "https://discord.com/api/webhooks/1259508306334974002/epK0oLyXDADk7ATyVFrR5XfIbS_OexxUdKagYq43_AQgnEelkPVhhQQxnOGKmW2dJcsD",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            content = "Script has been Injected: \n```Name: " .. plr.Name .. " | UserId: " .. plr.UserId .. " | Game: " .. game.PlaceId .. "```" .. "\nProfile: " .. "https://www.roblox.com/users/" .. plr.UserId .. "\nGame: " .. "https://www.roblox.com/games/" .. game.PlaceId
        })
    } :: Json)
end)

SendNotify("System Broken","Gui developed by MalwareHub - Discord in your clipboard",10)
setclipboard("https://discord.gg/RkhpySwNR9")
loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/premium"))() -- load the premium