-- use kohlslite

--Init

-- Copyright CMD Softworks 2024

if not game:IsLoaded() then
	game.Loaded:Wait()
end

--[[

    Crucial things that CMD PI doesnt have that other scripts do:
        3. Gears Page [On hold]
        4. Kit pages  [On hold]
        12. THEMES!!! [On hold]
        24. Paint Map Gradient/static (-paint grad/static color1, color2, ...)
        25. Temp Crashing
        26. Pad banning
        27. Gear banning (FUCK)
        28. Anti Message
        29. My music only / Anti Music
        30. Anti Fog
        31. Anti Sparkles/ Anti Smoke / Anti Swag / Anti SkyDive / Anti FF / Anti Fire
        32. Anti Ivory Light
        33. Zawarudo
        34. Red Light Green Light
        35. Purge6
        36. Snap Player
        37. Trap Command
        38. Timeout Command
        39. Morph
            = Tech
            = Quiving
            = Vecko
            = Joy
            = Jester
            = Clown
            = Bacon
            = Noob
        40. Emotes
            = Bang
            = HeadToss
            = ArmSpin
            = Loophead
            = Scream
            = HeadRaise
            = Dab
            = Crawl
            = Crouch
            = Dance
        41. Teleport Player To Location
        42. Server Antis Abuse
            = To add anti punish, anti setgrav, anti kill
        43. RAM SAVING
        46. Break Camera
        47. Anti Part Velocity
        48. End Script (disable connections and shit)
        49. Playerlist (fuck you tech)
        50. Discord emoji
        51. Anti Alt
        52. Dog Kick
        53. Mess Paint
        54. Fix Velocity SS
        55. Part Saving
        57. Fake Regen
        58. Startup Commands
        59. Double Account support
        60. Lua command
        61. Auto Crashing
]]

----------------------------------------------------------
--                       VARIABLES
----------------------------------------------------------

local Toggles = {
    Spamming = false,
    AntiTeleport = false,
    InterceptChat = false,
    AntiSit = false,
    AntiStun = false,
    AntiName = false,
    AutoMod = false,
    CrashMethod = "VGS",
    AntiAttach = false,
    Protect = false,
    --AntiKick = false,
    GearBan = false,
    AntiAbuseSelf = false,
    --KickType = "HotPotato",
    AdminAll  = false,
    Perm = false,
    LogLogs = false,
    KeepPads = false,
    Lockdown = false,
    AntiDeath = false,
    SpamWait = 0,
    isAFK = false,
    moving = false,
    MyAdminCommands = false,
    attached = false,
    VisAmt = 20,
    VisMode = 0,
    VisColor = Color3.new(255,255,255),
    VisRadius = 20,
    VisOrbiter = LocalPlayer,
    DumpLogs = false,
    SetHint = false
}

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService('RunService')
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local MarketplaceService = game:GetService("MarketplaceService")
local Terrain = workspace.Terrain
local KAHPartsTable = loadstring(game:HttpGet('https://raw.githubusercontent.com/quivings/resources/main/KAHPartsTable'))()
local BtoolsUI = loadstring(game:HttpGet('https://gist.githubusercontent.com/quivings/115fb84f905342d1ac2b25b34d311fb9/raw/fb430e3f29fcbaae49968286ee39ad412e96d451/asdf'))()
local animatePriv
local adminPriv
local ColorAPI = loadstring(game:HttpGet('https://gist.githubusercontent.com/quivings/fe5d23c3efe144192d136a0bed9ff78b/raw/e1dd133a015c6e6f9e5a3f3780617978e1ed20a2/ColorAPI'))()
local CameraModule = loadstring(game:HttpGet('https://gist.githubusercontent.com/quivings/e4a285d23c036a889a872a9b4d732115/raw/646b395bd04d81d3d64eec26455a6d93bb0f5a75/startfreecam'))()
local KAHGameFolder = Terrain:FindFirstChild("_Game")
local KAHWorkspace = KAHGameFolder:FindFirstChild("Workspace")
local KAHAdmin = KAHGameFolder:FindFirstChild("Admin")
local KAHInstances = KAHGameFolder:FindFirstChild("Folder")
local UI = loadstring(game:HttpGet('https://raw.githubusercontent.com/quivings/scripts/main/RayfieldCMDEdit'))()
local CommandBarUI = game:GetObjects('rbxassetid://14521992515')[1]
local CommandBarValues = {
    Inactive = UDim2.new(0.5,0,-.5),
    Active = UDim2.new(0.5,0,0),
    State = false,
    Hotkey = "Quote"
}

Instance.new("Folder", workspace).Name = "Assets"
Instance.new("Folder", workspace.Assets).Name = "Building"

local isCFrame = 0

local WhitelistedPlayersAntis = {}
local BlacklistedCommands = {}
local UILogs = {}

local ObbyBricks = KAHWorkspace:FindFirstChild("Obby")
local BuildingBricks = KAHWorkspace:FindFirstChild("Building Bricks")
local ObbyWalls = KAHWorkspace:FindFirstChild("Obby Box")

local Camera = workspace.Camera

local partColorer = Instance.new("Part")
partColorer.Color = Color3.new(1,1,1)

local selectedColor = partColorer.Color
local brushSize = 1
local AFKMessage = "[AFK]"

local AbusiveCommands = {"blind", "size", "jail", "punish", "setgrav", "kill", "explode", "fling", "skydive", "freeze"}

local tentInstances = {
    Baseplate = {Name = "Baseplate", instance = KAHWorkspace:FindFirstChild("Baseplate")},
    Spawns = {Names = {"Spawn1", "Spawn2", "Spawn3"}, instances = {KAHWorkspace:FindFirstChild("Spawn1"),KAHWorkspace:FindFirstChild("Spawn2"),KAHWorkspace:FindFirstChild("Spawn3")}},
    Regen = {Name = "Regen", instance = KAHAdmin:FindFirstChild("Regen")}
}

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Prefix = "-"
local multSeperator = "||"

local currentlyKicking = false

local BannedPlayers = {}
local BannedPlayersAttempts = {}
local WhitelistedPlayers = {}
local CrashGears = {"VampireVanquisher", "OrinthianSwordAndShield"}
local Commands = {}
local Mover = {}
local PI = {}
local LockdownBans = {}
local Tried = {}
local toolGrips = {}
local Connections = {
    Building = {},
    Drawing = {},
}

local spawnPoint

local thread = task.spawn
local sleep = task.wait

--command bar
local CommandBarInput = CommandBarUI.BarFrame.Input
local CommandBarAC = CommandBarUI.BarFrame.Input.AutoComplete


local function tweenCommandBar(state)
    CommandBarUI.BarFrame:TweenPosition(state and CommandBarValues.Active or CommandBarValues.Inactive, state and Enum.EasingDirection.In or Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, .2)
end

local CommandBarMethods = {
    Open = function()
        tweenCommandBar(true)
        CommandBarInput:CaptureFocus()
        CommandBarValues.State = true
    end,
    Close = function()
        tweenCommandBar(false)
        CommandBarValues.State = false
        --CommandBarInput.Text = ""
        --CommandBarAC.Text = ""
    end
    
}

function CommandBarMethods:GetAC(text)
    if text ~= "" then
        if string.sub(text, 1, #Prefix) == Prefix then
            text = string.gsub(text, Prefix, "")
        end
        for index,v in pairs(Commands) do
            if string.sub(index, 1, #text) == string.lower(text) then
                return index
            end
        end
    end
    return ""
end

function CommandBarMethods:Tab(text)
    local AC = CommandBarMethods:GetAC(text)
    
    if AC == "" then return end

    CommandBarInput.Text = string.sub(text, 1, #Prefix) == Prefix and Prefix .. AC or AC
    CommandBarInput.CursorPosition = #CommandBarInput.Text + 1
end

CommandBarUI.BarFrame.Position = CommandBarValues.Inactive
CommandBarUI.Parent = LocalPlayer.PlayerGui
CommandBarInput.Focused:Connect(CommandBarMethods.Open)
CommandBarInput.FocusLost:Connect(CommandBarMethods.Close)


--funny net shit
settings().Physics.AllowSleep = false
game:GetService("TestService").IsSleepAllowed = false
game:GetService("TestService").IsPhysicsEnvironmentalThrottled = false

thread(function()
    while true do
        sleep()
        --sethiddenproperty(LocalPlayer, "SimulationRadius", 999.999)
        --sethiddenproperty(LocalPlayer, "MaxSimulationRadius", 1000)
        --sethiddenproperty(LocalPlayer, "MaximumSimulationRadius", 1000)
    end
end)

-- Respawn lag fixer
for _,v in pairs(game:GetDescendants()) do
    if v:IsA("CoreScript") then
        if v.Name == "CoreScripts/FacialAnimationStreaming" then
            v.Disabled = true
            v:Destroy()
        end
    end
end

workspace.DescendantAdded:Connect(function(Descendant)
    if Descendant.Name == "Rocket" and Descendant:IsA("BasePart") then
        Descendant.CanCollide = false
        Descendant.CanTouch = false
    end

    if Toggles.AntiAttach then
        if Descendant:IsA("Weld") or Descendant:IsA("Snap") then
            thread(function()
                repeat sleep() until Descendant.Part1 and Descendant.Part0
                if (Descendant.Part1 and KAHPartsTable[Descendant.Part1.Name]) or (Descendant.Part0 and KAHPartsTable[Descendant.Part0.Name]) then
                    local attacher = Descendant:FindFirstAncestorOfClass("Model")
                    if not table.find(WhitelistedPlayers, attacher.Name) then
                        if attacher and Players:FindFirstChild(attacher.Name) and attacher.Name ~= LocalPlayer.Name then
                            local nm = Players:FindFirstChild(attacher.Name):GetAttribute("fixName")
                            
                            send("reset " .. nm)
                            sleep(.25)
                            send("pm " .. nm .. " [Ï]\nSorry, you can't attach to parts in this server!")
                            notify(attacher.Name .. " tried to attach to " .. (KAHPartsTable[Descendant.Part1.Name] ~= nil and Descendant.Part1.Name) or Descendant.Part0.Name)
                        end
                    end
                end
            end)
        end
    end
end)

-- Dog crash fixer
workspace.DescendantRemoving:Connect(function(w)
    if w.Name == "Weld" or w.Name == "Snap" then
        if w:FindFirstAncestorOfClass("Model") then
            if w.Part1 ~= nil and w.Part1.Name == "Addon" then
                w.Part1.CanCollide = false
                w.Part1.CanTouch = false
                game.Debris:AddItem(w.Part1, 0)
            end
        end
    end
end)

-- Camera Break fix
Camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
    if Camera.CameraSubject ~= LocalPlayer.Character.Humanoid then
        Camera.CameraSubject = LocalPlayer.Character.Humanoid
    end
end)


local toolGrip = CFrame.new(0,0,0)

----------------------------------------------------------
--                         UI
----------------------------------------------------------

local Main = UI:CreateWindow({
   Name = "CMD 3.14",
   LoadingTitle = "CMD 3.14",
   LoadingSubtitle = "by CMD Softworks",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "CMD-3.14"
   },
   Discord = {
      Enabled = true,
      Invite = "cmds",
      RememberJoins = true 
   },
   KeySystem = false
})

----------------------------------------------------------
--                         Tabs
----------------------------------------------------------

local ServerTab = Main:CreateTab("Server", 12405186623)
local SelfTab = Main:CreateTab("Self", 13841050966)
local PlayersTab = Main:CreateTab("Players", 12405188925)
local WorldTab = Main:CreateTab("World", 12405190193)
local GearsKitsTab = Main:CreateTab("Gears/Kits", 14545007573)
local CommandsList = Main:CreateTab("Command List", 12405191308)
local LogsTab = Main:CreateTab("Logs", 14367514429)
local CustomCommandsTab = Main:CreateTab("Custom", 14486113470)
local SettingsTab = Main:CreateTab("Settings", 12405192363)

----------------------------------------------------------
--                      FUNCTIONS
----------------------------------------------------------
local function getObjects(assetId)
    return game:GetService("UGCValidationService"):FetchAssetWithFormat(assetId, "")
end

local function set(toSet, val)
end

local function getByp(str)
    for _,player in pairs(Players:GetPlayers()) do
        if string.sub(string.lower(player.DisplayName), 1, #str) == string.lower(str) then
            str = player.Name
        end
    end
    
    if string.sub(str, 1,3) == "me_" or string.sub(str, 1,4) == "all_"  or string.sub(str, 1,8) == "friends_" or string.sub(str, 1,7) == "admins_" or string.sub(str, 1,7) == "random_" then
        local first = string.split(str, "_")
        return string.sub(first[1], 1, #first[1] - 1)
    else
        return str
    end
end

local function setSpawnPoint(CF)
    spawnPoint = CF
end

local function privateServer()
    LocalPlayer:Kick("Setting things up...")
    game:GetService("GuiService"):ClearError()

    for _,v in pairs(workspace:GetChildren()) do
        if v:IsA("Part") or v:IsA("Model") then
            v:Destroy()
        end
    end

    for _,p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then
            p:Destroy()
        end
    end

    for _,v in pairs(KAHInstances:GetChildren()) do
        v:Destroy()
    end

    local function newChar()
        sleep(1)
        LocalPlayer.Character:Destroy()
        Players:CreateHumanoidModelFromUserId(LocalPlayer.UserId).Parent = workspace
        LocalPlayer.Character = workspace:WaitForChild("Player")
        Camera.CameraSubject = LocalPlayer.Character.Humanoid
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,5,0)
        LocalPlayer.Character.Humanoid.Died:Connect(newChar)
        animatePriv.animate(LocalPlayer.Character)
    end

    newChar()

    

    adminPriv.load()
end

if not firetouchinterest then
    firetouchinterest = function(toTouch, toTouch2, val)
        if val == 0 then
            local fake = toTouch2:Clone()
            fake.Parent = workspace
            fake.Transparency = 1
            fake.CanCollide = false
            toTouch2.TouchInterest.Parent = fake
            toTouch2:SetAttribute("val", 0)
            toTouch2:SetAttribute("Fake", fake)

            thread(function()
                while toTouch2:GetAttribute("val") == 0 do
                    sleep()
                    fake.CFrame = toTouch.CFrame * CFrame.new(0,math.random(-2,0),0)
                end
            end)
        else
            toTouch2:SetAttribute("val", 1)
            toTouch2:GetAttribute("Fake").TouchInterest.Parent = toTouch2
            toTouch2:GetAttribute("Fake"):Destroy() 
        end
    end
end






local function notify(txt,t,btntxt, btnfunc)
    t = t or 3
    if not btntxt then
        UI:Notify({
            Title = "CMD 3.14",
            Content = txt,
            Duration = t,
            Image = 13481359929
        })
    else
        UI:Notify({
            Title = "CMD 3.14",
            Content = txt,
            Duration = t,
            Image = 13481359929,
            Actions = {
                Ignore = {
                    Name = btntxt,
                    Callback = btnfunc
                },
            },
        })
    end
    
end

local function fixTool(Tool)
    if Tool:IsA("Tool") then
        if toolGrips[Tool.Name] then
            Tool.Grip = toolGrips[Tool.Name].toolGrip or toolGrip
            Tool.GripPos = Vector3.new(toolGrips[Tool.Name].toolGrip.X,toolGrips[Tool.Name].toolGrip.Y,toolGrips[Tool.Name].toolGrip.Z)
        else
            Tool.Grip = toolGrip
            Tool.GripPos = Vector3.new(toolGrip.X,toolGrip.Y,toolGrip.Z)
            

            thread(function()
                toolGrips[Tool.Name] = {}
                toolGrips[Tool.Name].toolGrip = toolGrip
                
                local toolNameEnc = game:GetService("HttpService"):UrlEncode(Tool.Name)
                local GearsJSON = game:HttpGet("https://catalog.roblox.com/v1/search/items?category=All&includeNotForSale=true&keyword=".. toolNameEnc .."&limit=120")
                local GearsDecoded = game:GetService("HttpService"):JSONDecode(GearsJSON)
    
                if GearsDecoded and GearsDecoded.data then
                    for _,v in pairs(GearsDecoded.data) do
                        local isGear = MarketplaceService:GetProductInfo(tonumber(v.id)).AssetTypeId == Enum.AssetType.Gear.Value
                        if isGear then
                            local asset = getObjects("rbxassetid://" .. v.id)[1]
                            if asset.Name == Tool.Name then
                                toolGrips[Tool.Name].toolGrip = asset.Grip
                                break
                            end
                        end
                    end
                end
            end)
        end

        if toolGrips[Tool] then
            if toolGrips[Tool] and toolGrips[Tool].Connections and toolGrips[Tool].Connections["GripChanged"] then
                toolGrips[Tool].Connections["GripChanged"]:Disconnect()
                toolGrips[Tool].Connections["GripChanged"] = Tool:GetPropertyChangedSignal("Grip"):Connect(function()
                    fixTool(Tool)
                end)
            else
                toolGrips[Tool].Connections["GripChanged"] = Tool:GetPropertyChangedSignal("Grip"):Connect(function()
                    fixTool(Tool)
                end)
            end
            
            if toolGrips[Tool] and toolGrips[Tool].Connections and toolGrips[Tool].Connections["Ancestory"] then
                toolGrips[Tool].Connections["Ancestory"]:Disconnect()
                toolGrips[Tool].Connections["Ancestory"] = Tool.AncestryChanged:Connect(function(Instance, Parent)
                    repeat sleep() until Instance
                    if Instance and Instance:IsA("Tool") then
                        fixTool(Instance)
                    end
                end)
            else
                toolGrips[Tool].Connections["Ancestory"] = Tool.AncestryChanged:Connect(function(Instance, Parent)
                    repeat sleep() until Instance
                    if Instance and Instance:IsA("Tool") then
                        fixTool(Instance)
                    end
                end)
            end
        else
            toolGrips[Tool] = {
                Connections = {}
            }

            toolGrips[Tool].Connections["GripChanged"] = Tool:GetPropertyChangedSignal("Grip"):Connect(function()
                fixTool(Tool)
            end)

            toolGrips[Tool].Connections["Ancestory"] = Tool.AncestryChanged:Connect(function(Instance, Parent)
                repeat sleep() until Instance
                if Instance and Instance:IsA("Tool") then
                    fixTool(Instance)
                end
            end)
        end
    end
end


local function touch(instance, other)
    if other then
        firetouchinterest(instance, other, 0)
        firetouchinterest(instance, other, 1)
    else
        if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            firetouchinterest(instance, LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 0)
            firetouchinterest(instance, LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 1)
        end
    end
end

local function click(cd)
   fireclickdetector(cd)
end

local function wclick(cd)
    local vim = game:GetService('VirtualInputManager')
    local oldParent = cd.Parent
    local p = Instance.new("Part")
    p.Transparency = 1
    p.Size = Vector3.new(30,30,30)
    p.Anchored = true
    p.CanCollide = false
    p.Parent = workspace
    cd.Parent = p
    cd.MaxActivationDistance = math.huge
    
    local conn
    
    conn = RunService.Heartbeat:Connect(function()
        p.CFrame = workspace.Camera.CFrame *CFrame.new(0,0,-20) * CFrame.new(workspace.Camera.CFrame.LookVector.X,workspace.Camera.CFrame.LookVector.Y,workspace.Camera.CFrame.LookVector.Z)
    end)
    
    vim:SendMouseButtonEvent(1169,187,0,true,game,0)
    task.wait(0.001)
    vim:SendMouseButtonEvent(1169,187,0,false,game,0)
    
    conn:Disconnect()
    task.wait()
    cd.Parent = oldParent
    p:Destroy()
end

local function IsAdmin(Player)
    if Player ~= LocalPlayer then
        local p299BC = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://inventory.roblox.com/v1/users/' .. Player.UserId .. '/items/GamePass/37127'))
        local p299NBC = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://inventory.roblox.com/v1/users/' .. Player.UserId .. '/items/GamePass/35748'))
        local permBC = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://inventory.roblox.com/v1/users/' .. Player.UserId .. '/items/GamePass/64354'))
        local permNBC = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://inventory.roblox.com/v1/users/' .. Player.UserId .. '/items/GamePass/66254'))

        
        if KAHAdmin.Pads:FindFirstChild(Player.Name .. "'s admin") or p299BC.data.id or p299NBC.data.id or permBC.data.id or permNBC.data.id then
            return true
        end
    else
        if KAHAdmin.Pads:FindFirstChild(Player.Name .. "'s admin") or MarketplaceService:UserOwnsGamePassAsync(Player.UserId, 66254) or MarketplaceService:UserOwnsGamePassAsync(Player.UserId, 35748) or MarketplaceService:UserOwnsGamePassAsync(Player.UserId, 64354) or MarketplaceService:UserOwnsGamePassAsync(Player.UserId, 37127) then
            return true
        end
    end
    return false
end

local IsP299Only = ((MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) or MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127)) and not (MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 66254) or MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 64354)))

local function send(...)
    local msg = {...}
   
    for _,v in pairs(msg) do
        if string.find(v, " ") and not string.find(v, "/") and IsP299Only and not IsAdmin(LocalPlayer) then
            local newMsg = string.gsub(v, " ", "/")
            local splitmsg = newMsg:split("/")
            local smsg = string.lower(splitmsg[1])
            if smsg == "reset" or smsg == "refresh" or smsg == "reload" then
                splitmsg[1] = "respawn"
                newMsg = table.concat(splitmsg, "/")
                Players:Chat(newMsg)
            end
        else
            Players:Chat(v)
        end
    end 
end

local function super(...)
    for i = 1,128 do
        send(...)
    end
end

local function clearLogs()
    super("ff " .. ("â¬"):rep(36) .. "\n" .. ("â¬"):rep(37) .. ("â¬"):rep(36) .. "\n" .. ("â¬"):rep(37))
end

local function regen()
    if tentInstances.Regen.instance then
        click(tentInstances.Regen.instance)
    else
        notify("There is no Regen pad.", 3)
    end
end

local function kick(plrName)
    while currentlyKicking do
        sleep()
        print("waiting for currentlyKicking to be set to false")
    end

    local nm = Players:FindFirstChild(plrName):GetAttribute("fixName")

    currentlyKicking = true
    local iter
    
    send("size " .. nm .. " -nan", "noclip " .. nm, "skydive " .. nm)

    if Toggles.KickType == "Dual" then
        iter = 3
    else
        iter = 6
    end

    for i = 1,iter do
        if Toggles.KickType == "Dual" then
            send("gear me 25741198", "gear me 25162389")
        elseif Toggles.KickType == "HotPotato" then
            send("gear me 25741198")
        else
            send("gear me 25162389")
        end
    end

    repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= 6

    for _,Tool in pairs(LocalPlayer.Backpack:GetChildren()) do
        if Tool.Name == "HotPotato" or Tool.Name == "BlueBucket" then
            thread(function()
                local ToolConn

                Tool.Parent = LocalPlayer.Character
                Tool:Activate()

                while Tool.Parent == LocalPlayer.Character do
                    sleep()
                    touch(Tool:WaitForChild("Handle"), Players:FindFirstChild(plrName).Character.Torso)
                    touch(Tool:WaitForChild("Handle"), Players:FindFirstChild(plrName).Character.Torso)
                end

                ToolConn = workspace.ChildAdded:Connect(function(Child)
                    if Child == Tool then
                        send("clr")
                        ToolConn:Disconnect()
                    end
                end)
            end)
        end
    end

    send("music 12221831", "unff me")
    currentlyKicking = false

    sleep(KAHInstances:WaitForChild("Sound").TimeLength)
    send("music")
end

local function ban(plrName, v)
    if v and not table.find(BannedPlayers, plrName) then
        if not table.find(LockdownBans, plrName) and Toggles.Lockdown then
            table.insert(LockdownBans, plrName)
        end

        local nm = Players:FindFirstChild(plrName):GetAttribute("fixName")
       
        local alreadySent = false
        local CharConn
        table.insert(BannedPlayers, plrName)

        send('reset ' .. nm)
        send("music 147722910")
        sleep(KAHInstances:WaitForChild("Sound").TimeLength)
        send("music 0") 
    elseif not v and table.find(BannedPlayers, plrName) then
        if table.find(LockdownBans, plrName) then
            table.remove(LockdownBans, table.find(LockdownBans, plrName))
        end

        if Players:FindFirstChild(plrName) then
            local nm = Players:FindFirstChild(plrName):GetAttribute("fixName")
            send('respawn ' .. nm)
        end
       
        table.remove(BannedPlayers, table.find(BannedPlayers, plrName))
    end
end

local function whitelist(plrName, v)
    if v and not table.find(WhitelistedPlayers, plrName) then
        if table.find(LockdownBans, plrName) then
            table.remove(LockdownBans, table.find(LockdownBans, plrName))
        end
        
        if table.find(BannedPlayers, plrName) then
            ban(plrName, false)
        end

        table.insert(WhitelistedPlayers, plrName)
    elseif v and table.find(WhitelistedPlayers, plrName) then
        table.remove(WhitelistedPlayers, table.find(WhitelistedPlayers, plrName))
    end
end

local function isInTable(str, tbl)
    for _,v in pairs(tbl) do
        if v == str then
            return true
        end
    end
    return false
end

local function splitByArgs(str, s, args)
    if args == 0 then
        return {str}
    end
    
    local b = string.split(str, s)

    local tbl = {b[1]}
    
    for i = 1, args do
        if i ~= 1 then
            table.insert(tbl, b[i])
        end
    end
    
    table.remove(b, 1)
    table.insert(tbl, table.concat(b, s, args, #b))

    return tbl
end

local function processCommand(str)
    local lowerStr = string.lower(str)
    local multiples = string.find(str, multSeperator) and string.split(str, multSeperator) or {str}
    for _,Str in next, multiples do
        local multSplitSpace = string.split(Str, " ")
        local command = string.sub(multSplitSpace[1], #Prefix + 1, #multSplitSpace[1])
        if Commands[command] and string.sub(Str,1,#Prefix) == Prefix then
            local info = Commands[command].Info
            local splitStr = splitByArgs(Str, " ", info.Args)
            if string.sub(splitStr[1],1,#Prefix) == Prefix then
                if string.lower(splitStr[1]) == Prefix .. info.Name or isInTable(string.lower(command), info.Aliases) then
                    if info.Args == 0 then
                        info.Function()  
                    else
                        table.remove(splitStr, 1)
                        info.Function(table.unpack(splitStr))
                    end
                end
            end
        end
    end
end

local function addCommand(info)
    if Commands[info.Name] then
        return
    end

    if not info.Args then
        info.Args = 0
    end
    if not info.Aliases then
        info.Aliases = {}
    end

    Commands[info.Name] = {
        Info = info
    }

    if #info.Aliases > 0 then
        for _,alias in pairs(info.Aliases) do
            if not Commands[alias] then
                Commands[alias] = {
                    Info = info
                }
            end
        end
    end

    if info.MyAdminBlacklist then
        table.insert(BlacklistedCommands, info.Name)
        if #info.Aliases > 0 then
            for _,v in pairs(info.Aliases) do
                table.insert(BlacklistedCommands, v)
            end
        end
    end

    local Section = CommandsList:CreateSection("")
    local descText = #info.Aliases > 0 and "Aliases: " .. table.concat(info.Aliases, ", ") or "Aliases: None" .. "\n" .. info.Desc or ""

    CommandsList:CreateParagraph({
        Title = info.Custom and info.Name .. " [CUSTOM]" or info.Name,
        Content = descText
    }, Section)
end



local function getPlayerFromStr(str)
    local lowerStr = string.lower(str)
    if lowerStr == "me" then
        return LocalPlayer
    end
    for _,Player in pairs(Players:GetPlayers()) do
        local lowerPlayerName = string.lower(Player.Name)
        local lowerPlayerDisName = string.lower(Player.DisplayName)
        if string.sub(lowerPlayerName, 1, #str) == lowerStr then
            return Player
        end
        if string.sub(lowerPlayerDisName, 1, #str) == lowerStr then
            return Player
        end
    end
    return nil
end

local function ServerHop()
    notify("Server hopping..", math.huge)
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"))
    repeat 
        sleep()
        for _,Server in pairs(Servers.data) do
            if Server.playing ~= nil and Server.playing >= 0 and Server.playing ~= Server.maxPlayers and Server.id ~= game.JobId and not table.find(Tried, Server.id) then
                table.insert(Tried, Server.id)
                TeleportService:TeleportToPlaceInstance(game.PlaceId, Server.id)
            end
        end
    until 
        true ~= true
end

local function Rejoin()
    thread(notify, "Rejoining..")

    LocalPlayer:Kick("Rejoining... don't leave the experience.")

    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
end

local function say(msg)
    ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg, "All")
end

local function personColor(PB, part, color)
    if not PB then
        repeat sleep() until LocalPlayer.Character:FindFirstChild("PaintBucket")
        PB = LocalPlayer.Character:FindFirstChild("PaintBucket")
    end
    repeat sleep() until PB:FindFirstChild("Remotes") and PB:FindFirstChild("Remotes"):FindFirstChild("ServerControls")
    
	local Arguments = {
		["Part"] = part,
		["Color"] = Color3.new(color.R,color.G,color.B)
	}
	PB:WaitForChild("Remotes"):WaitForChild("ServerControls"):InvokeServer("PaintPart", Arguments)
end


local function roundNumber(num, numDecimalPlaces)
	return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end


local function personBuild(id)
    if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
        notify("You need Person 299 Admin commands for this!")
        return
    end
    local asset = getObjects("rbxassetid://" .. id)

    if asset then

        local currentPart
        local PB
        local lowest
        local lowestPart

        local object = asset

        local placed = false
        local complete = false

        local points = {}
        local partPoints = {}
        local partsTable = {}
        local buildingConnections = {}

        local function seperatePart(obj) -- thanks funzy
            local partamount = 1
            local sizee = obj.Size
            local blocks = {X = 1, Y = 1, Z = 1}
            local bottomright = obj.CFrame *CFrame.new(-sizee.X/2, -sizee.Y/2, -sizee.Z/2)
            local half = {X = sizee.X, Y = sizee.Y, Z = sizee.Z}
            if obj.Size.X > 10 or obj.Size.Y > 10 or obj.Size.Z > 10 then
                if half.X > 10 then
                    repeat
                        blocks.X = blocks.X*2
                        half.X = half.X/2
                        partamount = partamount *2
                    until half.X < 10
                end
                if half.Y > 10 then
                    repeat
                        blocks.Y = blocks.Y*2
                        half.Y = half.Y/2
                        partamount = partamount *2
                    until half.Y < 10
                end
                if half.Z > 10 then
                    repeat
                        blocks.Z = blocks.Z*2
                        half.Z = half.Z/2
                        partamount = partamount *2
                    until half.Z < 10
                end
                if blocks.X ~= 1 or blocks.Y ~= 1 or blocks.Z ~= 1 then
                    local newsize = Vector3.new(half.X, half.Y, half.Z)
                    local cf = bottomright * CFrame.new(newsize.X/2, newsize.Y/2, newsize.Z/2)
                    local xcf = cf
                    local ycf = cf
                    local zcf = cf
                    for i = 1, blocks.X do
                        partsTable[#partsTable + 1] = {
                            Size = newsize,
                            CF = xcf,
                            Orientation = obj.Orientation,
                            Color = obj.BrickColor.Color
                        }
        
                        ycf = xcf
                        zcf = xcf
                        xcf = xcf * CFrame.new(half.X, 0, 0)
                        for y = 1, blocks.Y-1 do
                            partsTable[#partsTable + 1] = {
                                Size = newsize,
                                CF = ycf * CFrame.new(0, half.Y*y, 0),
                                Orientation = obj.Orientation,
                                Color = obj.BrickColor.Color
                            }
                        end
                        for z = 1, blocks.Z-1 do
                            partsTable[#partsTable + 1] = {
                                Size = newsize,
                                CF = zcf * CFrame.new(0, 0, half.Z*z),
                                Orientation = obj.Orientation,
                                Color = obj.BrickColor.Color
                            }
                            ycf = zcf * CFrame.new(0, 0, half.Z*z)
                            for y = 1, blocks.Y-1 do
                                partsTable[#partsTable + 1] = {
                                    Size = newsize,
                                    CF = ycf * CFrame.new(0, half.Y*y, 0),
                                    Orientation = obj.Orientation,
                                    Color = obj.BrickColor.Color
                                }
                            end
                        end
                    end
                end
            end
        end

        local function disconnect(index)
            sleep(1)
            index:Disconnect()
        end

        local function handle(obj)
            local x,y,z = obj.Size.X, obj.Size.Y, obj.Size.Z
        
            if (x <= 10) and (y <= 10) and (z <= 10) then
                partsTable[#partsTable + 1] = {
                    Size = obj.Size,
                    CF = obj.CFrame,
                    Orientation = obj.Orientation,
                    Color = obj.BrickColor.Color
                }
            else
                seperatePart(obj)
            end
        end

        if #asset > 1 then
            local modelInstance = Instance.new("Model")
            for _, instance in pairs(asset) do
                if instance:IsA("BasePart") then
                    if not instance.Anchored then
                        instance.Anchored = true
                    end
                    instance.Transparency = .5
                end
                instance.Parent = modelInstance
            end
            object = modelInstance
        else
            if asset[1]:IsA("Model") then
                for _,v in pairs(asset[1]:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if not v.Anchored then
                            v.Anchored = true
                        end
                        v.Transparency = .5
                    end
                end
                object = asset[1]
            else
                local modelInstance = Instance.new("Model")
                if asset[1]:IsA("BasePart") then
                    if not asset[1].Anchored then
                        asset[1].Anchored = true
                    end
                    asset[1].Transparency = .5
                end
                asset[1].Parent = modelInstance
                object = modelInstance
            end
        end

        object.Parent = workspace.Assets.Building

        for index, instance in next, object:GetDescendants() do
            if instance:IsA("BasePart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("CornerWedgePart") then
                table.insert(partPoints, instance.CFrame.Y)
                points[instance.CFrame.Y] = instance
            end
        end

        lowest = math.min(table.unpack(partPoints))
        lowestPart = points[lowest]
        object.PrimaryPart = lowestPart

        lowestPart.Anchored = true

        Mouse.TargetFilter = object

        local angleX = 0
        local angleY = 0

        buildingConnections[1] = UIS.InputBegan:Connect(function(input, chatting)
            if not chatting then
                if input.KeyCode == Enum.KeyCode.R then
                    angleY += 90
                    if angleY == 360 then
                        angleY = 0
                    end
                    object:SetPrimaryPartCFrame(object.PrimaryPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(angleX),math.rad(angleY),math.rad(0)))
                elseif input.KeyCode == Enum.KeyCode.T then
                    angleX += 90
                    if angleX == 360 then
                        angleX = 0
                    end
                    object:SetPrimaryPartCFrame(object.PrimaryPart.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(angleX),math.rad(angleY),math.rad(0)))
                elseif input.KeyCode == Enum.KeyCode.X then
                    object:Destroy()
                    complete = true

                    Connections.Building["netKeep"]:Disconnect()

                    for _,connection in pairs(buildingConnections) do
                        if connection then
                            connection:Disconnect()
                        end
                    end

                    object:Destroy()
                    object = nil
                    buildingConnections[1]:Disconnect()
                    send("ungear me")
                end
            end
        end)

        buildingConnections[3] = Mouse.Button1Down:Connect(function()
            placed = true
            buildingConnections[2]:Disconnect()
            buildingConnections[3]:Disconnect()
        end)

        buildingConnections[2] = Mouse.Move:Connect(function()
            local mouseTarget
            local mouseHit

            mouseHit = Mouse.Hit
            mouseTarget = Mouse.Target

            if mouseTarget and mouseTarget:IsA("BasePart") and mouseHit then
                if placed then
                    buildingConnections[2]:Disconnect()
                end
                object:SetPrimaryPartCFrame(CFrame.new(mouseHit.Position.X, mouseHit.Position.Y + ((mouseTarget.Size.Y / 2) + (object.PrimaryPart.Size.Y / 2)), mouseHit.Position.Z) * CFrame.fromEulerAnglesXYZ(math.rad(angleX),math.rad(angleY),math.rad(0)))
            end
        end)
        
        Connections.Building["netKeep"] = Players.PlayerAdded:Connect(function(player)
            local char = player.Character or player.CharacterAdded:Wait()
            local nm = player:GetAttribute("fixName")

            if not nm then
                repeat sleep() until player:GetAttribute("fixName")
                nm = player:GetAttribute("fixName")
            end

            send("setgrav " .. nm .. " 10000000000000000", "punish " .. nm, "unpunish " .. nm)
            for _,v in ipairs(KAHInstances:GetChildren()) do
                if v.Name == "Part" and v:IsA("Part") then
                    v.CanQuery = true
                    v.CanTouch = true
                    ----sethiddenproperty(v, "NetworkIsSleeping", true)
                    v.Velocity = Vector3.new(0,0,0)
                    ------sethiddenproperty(v, "NetworkOwnershipRule", Enum.NetworkOwnership.OnContact)
                    thread(function()
                        local oldcf = v.CFrame
                        while not v.Anchored do
                            sleep()
                            v.CFrame = oldcf * CFrame.new(0.1, 0.1, 0.1)
                        end
                    end)
                    
                    task.delay(3, function()
                        ----sethiddenproperty(v, "NetworkIsSleeping", false)
                        ------sethiddenproperty(v, "NetworkOwnershipRule", Enum.NetworkOwnership.Manual)
                        v.CanQuery = false
                        v.CanTouch = false
                    end)
                end
            end
        end)

        local sizeL
        local oriL
        local positionL
        local colorL
        local nextPart = false

        KAHInstances.ChildAdded:Connect(function(Child)
            local size,position,color,ori = sizeL,positionL, colorL, oriL
            nextPart = true

            if Child:IsA("Part") and Child.Name == "Part" and (roundNumber(Child.Size.X, 3) == roundNumber(size.X, 3)) and (roundNumber(Child.Size.Y, 3) == roundNumber(size.Y, 3)) and (roundNumber(Child.Size.Z, 3) == roundNumber(size.Z, 3)) then

                ------sethiddenproperty(Child, "NetworkOwnershipRule", Enum.NetworkOwnership.Manual)
                --Child:SetAttribute("CMD", uid)
                thread(personColor, PB, Child, color)
                
                Child.Orientation = ori

                ----sethiddenproperty(Child, "NetworkIsSleeping", false)
                
                Child.CanCollide = false
                Child.CanQuery = false
                Child.CanTouch = false
                Child.Massless = true
    
                local partStay  

                partStay = RunService.Heartbeat:Connect(function()
                    Child.Velocity = Vector3.new(54,34,1)
                    Child.AssemblyLinearVelocity = Vector3.new(54,34,1)
                    Child.AssemblyAngularVelocity = Vector3.new(54,34,1)
                    Child:ApplyImpulse(Vector3.new(54,34,1))
                    Child.CFrame = position
                    Child.Orientation = ori
                end)

                local B
                B = RunService.Heartbeat:Connect(function()
                    if Child.Parent ~= KAHInstances then
                        partStay:Disconnect()
                        B:Disconnect()
                    end
                end)
            end
        end)

        local function draw(positionG, sizeG, oriG, colorG)
            nextPart = false
            sizeL = sizeG
            oriL = oriG
            colorL = colorG
            positionL = positionG
            thread(send, "part/" .. sizeG.X .. "/" .. sizeG.Y .. "/" .. sizeG.Z)
            repeat sleep() until nextPart
        end

        thread(function()
            while object do
                sleep()
                if not PB or (PB.Parent ~= LocalPlayer.Character and PB.Parent ~= LocalPlayer.Backpack) then
                    send('gear me 18474459')
                    PB = LocalPlayer.Backpack:WaitForChild("PaintBucket")
                    PB:FindFirstChildOfClass("LocalScript").Disabled = true
                    task.wait()
                    PB.Parent = LocalPlayer.Character
                    sleep(3)
                    if not object then
                        break
                    end
                end
            end
        end)

        repeat sleep() until placed
        
        for index, v in next, object:GetDescendants() do
            if v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("Part") or v:IsA("CornerWedgePart") then
                handle(v)
            end
        end

        local it = 0
        
        for index,v in ipairs(partsTable) do
            --it += 1
            local newSize = Vector3.new(roundNumber(v.Size.X, 3),roundNumber(v.Size.Y, 3),roundNumber(v.Size.Z, 3))
            --if it >= 128 then
              --  sleep(5)
            --    it = 0
           -- end
    	    if complete then for _,v in pairs(connections) do v:Disconnect() end for _,v in pairs(buildingConnections) do v:Disconnect() end return end
            draw(v.CF, newSize, v.Orientation, v.Color)
        end

        --[[for _,connection in pairs(buildingConnections) do
            if connection then
                connection:Disconnect()
            end
        end

        object:Destroy()
        object = nil
        sleep(1)
        send("ungear me")]]
    end
end

UIS.InputEnded:Connect(function(input, chatting)
    local SplitMessage = string.split(tostring(input.KeyCode), ".")
	local NewKeyNoEnum = SplitMessage[3]
    
    if not chatting and tostring(NewKeyNoEnum) == CommandBarValues.Hotkey and not CommandBarValues.State and not CommandBarInput:IsFocused() then
        CommandBarMethods:Open()
        CommandBarInput.Text = ""
    elseif input.UserInputType == Enum.UserInputType.Keyboard and CommandBarInput:IsFocused() and CommandBarValues.State then
        if input.KeyCode == Enum.KeyCode.Tab then
            CommandBarInput.Text = string.gsub(CommandBarInput.Text, "\t", "")
            CommandBarMethods:Tab(CommandBarInput.Text)
            if CommandBarInput.Text == CommandBarAC.Text then
                CommandBarInput.TabImage.Visible = false 
            end
        else
            local AC = CommandBarMethods:GetAC((string.sub(CommandBarInput.Text, 1,#Prefix) == Prefix) and string.gsub(CommandBarInput.Text, Prefix, "") or CommandBarInput.Text)
            CommandBarAC.Text = (string.sub(CommandBarInput.Text, 1,#Prefix) == Prefix) and Prefix .. AC or AC
            if AC ~= "" and CommandBarInput.Text ~= CommandBarAC.Text then
                CommandBarInput.TabImage.Visible = true 
                CommandBarInput.TabImage.Position = UDim2.new(0,CommandBarAC.TextBounds.X + 2,0.5,0)
            else
                CommandBarInput.TabImage.Visible = false 
            end  
        end
    end
end)

UIS.InputBegan:Connect(function(input, chatting)
    if input.KeyCode == Enum.KeyCode.Return and CommandBarInput.Text ~= "" then
        local strSplit = string.split(CommandBarInput.Text, " ")

        if Commands[(string.sub(strSplit[1], 1,#Prefix) == Prefix) and string.gsub(strSplit[1], Prefix, "") or strSplit[1]] then
            processCommand((string.sub(CommandBarInput.Text, 1,#Prefix) == Prefix) and CommandBarInput.Text or Prefix .. CommandBarInput.Text)
        else
            send(CommandBarInput.Text)
        end
        CommandBarMethods:Close()
        CommandBarInput.Text = ""
    end
end)

local function AFK(s)
    if s == "F" then
        isAFK = false
        send("unname me")
    else
        isAFK = true
        thread(function()
            while isAFK do
                sleep(.5)
                if isAFK and (LocalPlayer:GetNetworkPing() * 2000) < 1000 then
                    if isAFK and (workspace:FindFirstChild(LocalPlayer.Name) and not workspace:FindFirstChild(LocalPlayer.Name):FindFirstChildOfClass("Model") or workspace:FindFirstChild(LocalPlayer.Name):FindFirstChildOfClass("Model").Name ~= AFKMessage .. "\n" .. LocalPlayer.DisplayName) then
                        send("name me " .. AFKMessage .. "\n" .. LocalPlayer.DisplayName)
                    end
                end
            end
        end)
    end 
end

thread(function()
    while true do
        sleep()
        UIS.MouseIcon = "rbxasset://SystemCursors/Default"
    end
end)

Mover.Attached = {Value = false}
Mover.Finished = {Value = false}

Mover.Moving = false
Mover.PosSet = false

function Mover:CleanUp()
    Mover.Attached.Value = false
    Mover.PosSet = false
    Mover.FPosSet = false
    Mover.Moving = false
    Mover.Finished.Value = false
    workspace.Gravity, workspace.FallenPartsDestroyHeight = 198.2, -500

    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name ~= "Rocket" then
            v.CanCollide = true   
        end
    end
end

function Mover:GetTool()
    local Ivory
    local tempConn
    tempConn = LocalPlayer.Backpack.ChildAdded:Connect(function(iv)
        if iv.Name == "IvoryPeriastron" then
            Ivory = iv
            tempConn:Disconnect()
        end
    end)
    send('gear me 108158379')
    repeat sleep() until Ivory
    return Ivory

end

function Mover.Cancel(object,moveToPos, reason)
    Mover.Moving = false
    Mover.Attached.Value = true
    Mover:CleanUp()
    notify("Mover error: Mover canceled: " .. reason, 3, "Retry?", function() 
        Mover:MovePart(object, moveToPos)
    end)
end


function Mover.Attached:Wait()
    repeat 
        sleep() 
    until 
        Mover.Attached.Value
end

function Mover.Finished:Wait()
    repeat
        sleep()
    until
        not Mover.Moving
end

function Mover:Attach(object, moveToPos)
    if LocalPlayer.Character and object then
        local Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        while Root do
            sleep()
            if Root.Parent.Torso:FindFirstChild("Weld") or Root.Parent.Torso:FindFirstChild("Snap") then
                local Weld = Root.Parent.Torso:FindFirstChild("Weld") or Root.Parent.Torso:FindFirstChild("Snap")
                if Weld.Part0 and Weld.Part1 then
                    local Part0 = Weld.Part0
                    local Part1 = Weld.Part1
                    if Part1 ~= object then
                        send('reset me')
                        notify("Attached to wrong part.")
                        Mover:CleanUp()
                        break
                    elseif Part1 == object then
                        Mover.Attached.Value = true
                        break
                    end
                end
            end
            Root.CFrame = object.CFrame * CFrame.new(-1*(object.Size.X/2)-(Root.Size.X/2),0,0)
            send("unpunish me me me")
        end
    end
end

function Mover:pingWait()
    if (LocalPlayer:GetNetworkPing() * 2000) <= 60 then
        sleep(.25)
    else
        sleep((LocalPlayer:GetNetworkPing() * 2000) / 533.3333333)
    end
end

function Mover:SendPosToServer(RE,n, object, Root, moveToPos, isFixing)
    
    if n < 1 then
        repeat sleep() until RE.Parent.Parent == LocalPlayer.Character

        if RE.Parent.Parent:FindFirstChildOfClass("LocalScript") then
            RE.Parent.Parent:FindFirstChildOfClass("LocalScript").Disabled = true
        end

        LocalPlayer.Character.Animate.Disabled = true

        for _,anim in pairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            anim:Stop()
        end

        LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)

        thread(function()
            while not Mover.PosSet do
                sleep()
                game:GetService("PhysicsService"):LocalIkSolve(Root, (isFixing and (moveToPos * CFrame.new(-1*(object.Size.X/2)-(Root.Size.X/2),0,0))) or object.CFrame * CFrame.new(-1*(object.Size.X/2)-(Root.Size.X/2),0,0) + Vector3.new(moveToPos.X,moveToPos.Y,moveToPos.Z), math.huge, math.huge)
                game:GetService("PhysicsService"):IkSolve(Root, (isFixing and (moveToPos * CFrame.new(-1*(object.Size.X/2)-(Root.Size.X/2),0,0))) or object.CFrame * CFrame.new(-1*(object.Size.X/2)-(Root.Size.X/2),0,0) + Vector3.new(moveToPos.X,moveToPos.Y,moveToPos.Z), math.huge, math.huge)
                Root.Velocity = Vector3.new(0,0,0)
                --Root.Orientation = object.Orientation
                Root.Parent.Torso.Anchored = false
            end
        end)

        Mover:pingWait()
        RE:FireServer(Enum.KeyCode.E)
        repeat sleep() until Camera:FindFirstChild("FakeCharacter")
        sleep()

        for _,v in pairs(Camera:GetChildren()) do
            thread(function()
                if v.Name == "FakeCharacter" then
                    v:Destroy()
                end
            end)
        end
        sleep()
        Mover.PosSet = true
    else
        RE:FireServer(Enum.KeyCode.E)
        repeat sleep() until workspace:FindFirstChild("Pulse")
        sleep()
        for _,v in pairs(workspace:GetChildren()) do
            thread(function()
                if v.Name == "Pulse" then
                    v.CanCollide = false
                    v.CanTouch = false
                    v:Destroy()
                end
            end)
        end
        thread(send, 'clr', 'ungear me') 
    end
end

function Mover:MovePart(object, moveToPos, isFixing)
    if Mover.Moving then
        print('tf im waiting')
        Mover.Finished:Wait()
    end

    repeat sleep() until LocalPlayer.Character

    Mover.Moving = true

    local maybeConn
    local intCharConn
   

    local Root = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local moveTool = Mover:GetTool()

    if not moveTool then
        Mover.Cancel(object, moveToPos, "Ivory lost")
    else
        local Server

        repeat sleep() until moveTool:FindFirstChild("Remote")
        Server = moveTool:FindFirstChild("Remote")
        if Server then
            local ogPos = object.Position

            workspace.Gravity, workspace.FallenPartsDestroyHeight = 0, 0/0
            moveTool.Parent = LocalPlayer.Character
            sleep()
            for _,v in pairs(workspace:GetDescendants()) do
                thread(function()
                    if v:IsA("BasePart") then
                        v.CanCollide = false   
                        v.CanTouch = false
                    end
                end)
            end
            
            Mover:SendPosToServer(Server, 0, object, Root, moveToPos,isFixing)
            Mover:Attach(object, moveToPos)
            Mover.Attached:Wait()
            Mover:SendPosToServer(Server, 1)
        end

        repeat sleep() until moveTool.Parent ~= workspace

        local CharConn

        CharConn = LocalPlayer.CharacterAdded:Connect(function()
            sleep()
            Mover:CleanUp()
            CharConn:Disconnect()
        end)

        send('respawn me')

        repeat sleep() until not Mover.Moving

        return 0;
    end
end

function Mover:ResetPart(object)

end

local function addToggle(info)
    if not info.Aliases then
        info.Aliases = {}
    end

    Toggles[info.Name] = {
        Info = info
    }

    if #info.Aliases > 0 then
        for _,alias in pairs(info.Aliases) do
            Toggles[alias] = {
               Info = info
            }
        end
    end
end

local screenui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)

screenui.ResetOnSpawn = false

local BtoolsAPI = {History = {}, Builds = workspace.Assets.Building, ["Move"] = false, ["Rotate"] = false, ["Delete"] = false, Selection = nil, DeletePos = CFrame.new(0,20000,0), SelectBox = Instance.new("SelectionBox", screenui), Lasso = Instance.new("SelectionPartLasso", screenui), ArcHandles = Instance.new("ArcHandles", screenui), Handles = Instance.new("Handles", screenui)}
BtoolsAPI.__index = BtoolsAPI

local function IsDescendantOfPlayer(part)
    for i,v in pairs(PlayerService:GetPlayers()) do
        if v:FindFirstChild("Character") and part:IsDescendantOf(v.Character) then
            return true
        else
            return false
        end
    end
end

function BtoolsAPI:Remove(object)
    if BtoolsAPI:IsOptical(object) then
        object.Info.ogPart.Value.BrickColor = BrickColor.new(object.Info.ogColor.Value)
        object:Destroy()
    else
        if BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name) then
            object.BrickColor = BrickColor.new(BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name).Info.ogColor.Value)
            BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name):Destroy()
        end
    end
end

function BtoolsAPI:IsDeleting(object)
    if (object:FindFirstChild("Info") and object:FindFirstChild("Info").Action.Value == "Delete") or (BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name) and BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name):FindFirstChild("Info").Action.Value == "Delete") then
        return true
    end
    return false
end

function BtoolsAPI:Clear()
    
end

function BtoolsAPI:IsTransforming(object)
    if object:FindFirstChild("Info") or BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name) then
        return true
    end
    return false
end

function BtoolsAPI:IsOptical(object)
    if string.find(object.Name, "Optical") then
        return true
    end
    return false
end

function BtoolsAPI:InsertAxis(object, Type)
    if Type == "Move" then
        if not BtoolsAPI:IsOptical(object) then
            object = BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name)
        end
        BtoolsAPI.Handles.Adornee = object
        BtoolsAPI.Handles.Style = Enum.HandlesStyle.Movement
    elseif Type == "Rotate" then
        if not BtoolsAPI:IsOptical(object) then
            object = BtoolsAPI.Builds:FindFirstChild("Optical" .. object.Name)
        end
        BtoolsAPI.Lasso.Part = object
		BtoolsAPI.ArcHandles.Adornee = object
    end
end

function BtoolsAPI:CreateOptical(object, action)
    local Optical = object:Clone()
    Optical.Parent = BtoolsAPI.Builds
    Optical.Name = "Optical" .. Optical.Name
    Optical.CFrame = (action == "Delete" and BtoolsAPI.DeletePos) or object.CFrame
    Optical.Orientation = object.Orientation
    Optical.Transparency = .5
    BtoolsAPI:CreateInfo(Optical, {Action = action, ogColor = object.Color, ogPart = object, ogPos = object.Position, ogParent = object.Parent})
    object.BrickColor = (action == "Delete" and BrickColor.new("Really red")) or BrickColor.new("Bright orange")
    return Optical
end

function BtoolsAPI:CreateInfo(object, infoTable)
    if not object:FindFirstChild("Info") then
        Instance.new("Folder", object).Name = "Info"
    end

    local Action = object:FindFirstChild("Action") or Instance.new("StringValue", object.Info)
    Action.Name = "Action"
    Action.Value = infoTable.Action

    if infoTable.ogColor then 
        local ogColor = object:FindFirstChild("ogColor") or Instance.new("Color3Value", object.Info)
        ogColor.Name = "ogColor"
        ogColor.Value = infoTable.ogColor
    end

    if infoTable.ogPos then
        local ogPos = object:FindFirstChild("ogPos") or Instance.new("Vector3Value", object.Info)
        ogPos.Name = "ogPos"
        ogPos.Value = infoTable.ogPos
    end

    if infoTable.ogPart then
        local ogPart = object:FindFirstChild("ogPart") or Instance.new("ObjectValue", object.Info)
        ogPart.Name = "ogPart"
        ogPart.Value = infoTable.ogPart
    end

    if infoTable.ogTransparency then
        local ogTransparency = object:FindFirstChild("ogTransparency") or Instance.new("NumberValue", object.Info)
        ogTransparency.Name = "ogTransparency"
        ogTransparency.Value = object.Transparency
    end

    local ogParent = object:FindFirstChild("ogParent") or Instance.new("ObjectValue", object.Info)
    ogParent.Name = "ogParent"
    ogParent.Value = infoTable.ogParent
end

function BtoolsAPI:IsActive(Type)
    return BtoolsAPI[Type]
end

BtoolsAPI.Connections = {Moving = {}, Rotating = {}, Deleting = {}}

function BtoolsAPI:LoadDelete(boolv)
    if boolv and not BtoolsAPI:IsActive("Delete") then
        BtoolsAPI["Delete"] = true
        BtoolsAPI:LoadRotate(false)
        BtoolsAPI:LoadMove(false)
        repeat sleep() until not BtoolsAPI.SelectBox.Visible or BtoolsAPI.SelectBox.Visible
        BtoolsAPI.SelectBox.Visible = true
        BtoolsAPI.SelectBox.Color = BrickColor.new("Really red")

        BtoolsAPI.Connections.Deleting[#BtoolsAPI.Connections.Deleting + 1] = RunService.Heartbeat:Connect(function()
            selec = Mouse.Target
            if not handling and not dragging and selec:IsA("BasePart") and selec ~= BtoolsAPI.Selection then
                BtoolsAPI.SelectBox.Adornee = selec
            end
        end)
    
        BtoolsAPI.Connections.Deleting[#BtoolsAPI.Connections.Deleting + 1] = Mouse.Button1Down:Connect(function()
            MD = true
        end)
    
        BtoolsAPI.Connections.Deleting[#BtoolsAPI.Connections.Deleting + 1] = Mouse.Button1Up:Connect(function()
            if MD and selec then
                BtoolsAPI.Selection = selec
                if BtoolsAPI:IsDeleting(BtoolsAPI.Selection) and not BtoolsAPI:IsOptical(BtoolsAPI.Selection) then
                    BtoolsAPI:Remove(BtoolsAPI.Selection)
                    return
                end
                if BtoolsAPI:IsTransforming(BtoolsAPI.Selection) and not BtoolsAPI:IsOptical(BtoolsAPI.Selection) and not BtoolsAPI:IsDeleting(BtoolsAPI.Selection) then
                    notify("This part is being moved. Use delete on its optical part first, then try again.")
                elseif BtoolsAPI:IsTransforming(BtoolsAPI.Selection) and BtoolsAPI:IsOptical(BtoolsAPI.Selection) then
                    BtoolsAPI:Remove(BtoolsAPI.Selection)
                elseif not BtoolsAPI:IsTransforming(BtoolsAPI.Selection) and not BtoolsAPI:IsOptical(BtoolsAPI.Selection) then
                    BtoolsAPI:CreateOptical(BtoolsAPI.Selection, "Delete")
                end
            end
        end)
    else
        BtoolsAPI["Delete"] = false
        
        for _,v in pairs(BtoolsAPI.Connections.Deleting) do
            if v then
                v:Disconnect()
            end
        end
    end
end

function BtoolsAPI:LoadMove(boolv)
    if boolv == true and not BtoolsAPI:IsActive("Move") then
        BtoolsAPI["Move"] = true
        BtoolsAPI:LoadRotate(false)
        BtoolsAPI:LoadDelete(false)
        repeat sleep() until not BtoolsAPI.SelectBox.Visible or BtoolsAPI.SelectBox.Visible
        local MD = false
        local selec

        local AxisMultipliers = {
            [Enum.NormalId.Top] = Vector3.new(0, 1, 0);
            [Enum.NormalId.Bottom] = Vector3.new(0, -1, 0);
            [Enum.NormalId.Front] = Vector3.new(0, 0, -1);
            [Enum.NormalId.Back] = Vector3.new(0, 0, 1);
            [Enum.NormalId.Left] = Vector3.new(-1, 0, 0);
            [Enum.NormalId.Right] = Vector3.new(1, 0, 0);
        }

        if BtoolsAPI.Selection and BtoolsAPI:IsDeleting(BtoolsAPI.Selection) then
            BtoolsAPI.Selection = nil
        end

        if BtoolsAPI.Selection then
            BtoolsAPI:InsertAxis(BtoolsAPI.Selection, "Move")
        end

        
        BtoolsAPI.SelectBox.Visible = true
        BtoolsAPI.Handles.Visible = true
        
        MinX, MinY, MinZ = 0,0,0
        MaxX, MaxY, MaxZ = 0,0,0

        local dragging = false
        local handling = false
        BtoolsAPI.SelectBox.Color = BrickColor.new("Bright blue")
        local InitialState

        BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = BtoolsAPI.Handles.MouseButton1Down:Connect(function()
           
            handling = true
            InitialState = {
                CFrame = BtoolsAPI.Handles.Adornee.CFrame
            }
            
            
            BtoolsAPI.Handles.Adornee = BtoolsAPI.Selection
            MinX, MinY, MinZ = BtoolsAPI.Handles.Adornee.Position.X, BtoolsAPI.Handles.Adornee.Position.Y, BtoolsAPI.Handles.Adornee.Position.Z;
            MaxX, MaxY, MaxZ = BtoolsAPI.Handles.Adornee.Position.X, BtoolsAPI.Handles.Adornee.Position.Y, BtoolsAPI.Handles.Adornee.Position.Z;
             
            

            BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = BtoolsAPI.Handles.MouseDrag:Connect(function(face,dist)
                local Shift = Vector3.FromNormalId(face) * dist
                dragging = true
                handling = true
                BtoolsAPI.Handles.Adornee.CFrame = InitialState.CFrame * CFrame.new(Shift)
                
                --[[BtoolsAPI.Handles.Adornee.CFrame = CFrame.new(
                    MinX + (MaxX - MinX) / 2,
                    MinY + (MaxY - MinY) / 2,
                    MinZ + (MaxZ - MinZ) / 2
                ) + (AxisMultipliers[face] * dist)]]
                
            end)
        end)

        BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = BtoolsAPI.Handles.MouseButton1Up:Connect(function()
            if not BtoolsAPI:IsOptical(BtoolsAPI.Handles.Adornee) then
                BtoolsAPI.Selection = BtoolsAPI.Builds:FindFirstChild("Optical" .. BtoolsAPI.Handles.Adornee.Name)
                BtoolsAPI.Handles.Adornee = BtoolsAPI.Selection
            end
            InitialState = {
                CFrame = BtoolsAPI.Handles.Adornee.CFrame
            }
            BtoolsAPI.History[#BtoolsAPI.History + 1] = {
                Part = BtoolsAPI.Selection,
                CFrame = BtoolsAPI.Selection.CFrame,
                Orientation = BtoolsAPI.Selection.Orientation,
                Type = BtoolsAPI.Selection.Info.Action
            }
            handling = false
            dragging = false
            MinX, MinY, MinZ = BtoolsAPI.Handles.Adornee.Position.X, BtoolsAPI.Handles.Adornee.Position.Y, BtoolsAPI.Handles.Adornee.Position.Z;
            MaxX, MaxY, MaxZ = BtoolsAPI.Handles.Adornee.Position.X, BtoolsAPI.Handles.Adornee.Position.Y, BtoolsAPI.Handles.Adornee.Position.Z;
        end)

        BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = RunService.Heartbeat:Connect(function()
            selec = Mouse.Target
            if selec and not handling and not dragging and selec:IsA("BasePart") and selec ~= BtoolsAPI.Selection and not BtoolsAPI:IsTransforming(selec) then
                BtoolsAPI.SelectBox.Adornee = selec
            end
        end)

        BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = Mouse.Button1Down:Connect(function()
            MD = true
        end)

        BtoolsAPI.Connections.Moving[#BtoolsAPI.Connections.Moving + 1] = Mouse.Button1Up:Connect(function()
            if MD and selec and not handling and not BtoolsAPI:IsDeleting(selec) then
                if not BtoolsAPI:IsOptical(selec) and BtoolsAPI:IsTransforming(selec) then
                    BtoolsAPI:InsertAxis(BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name), "Move")
                    BtoolsAPI.Selection = BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name)
                    InitialState = {
                        CFrame = BtoolsAPI.Selection.CFrame
                    }
                else
                    BtoolsAPI.Selection = (not BtoolsAPI:IsOptical(selec) and not BtoolsAPI:IsTransforming(selec)) and BtoolsAPI:CreateOptical(selec, "Transform") or (not BtoolsAPI:IsOptical(selec) and BtoolsAPI:IsTransforming(selec) and BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name)) or selec
                    BtoolsAPI:InsertAxis(BtoolsAPI.Selection, "Move")
                    InitialState = {
                        CFrame = BtoolsAPI.Selection.CFrame
                    }
                end
            end
            
            MD = false
        end)


    else
        BtoolsAPI["Move"] = false
        
        for _,v in pairs(BtoolsAPI.Connections.Moving) do
            if v then
                v:Disconnect()
            end
        end

        BtoolsAPI.Handles.Visible = false
    end
end

function BtoolsAPI:LoadRotate(boolv)
    if boolv and not BtoolsAPI:IsActive("Rotate") then
        BtoolsAPI["Rotate"] = true
        BtoolsAPI:LoadMove(false)
        BtoolsAPI:LoadDelete(false)

        repeat sleep() until not BtoolsAPI.SelectBox.Visible or BtoolsAPI.SelectBox.Visible

        local function round(number,by)
			return math.floor((number/by)+0.5) * by
		end

        local function AngleFromAxis(axis,rA)
			rA = math.rad(round(math.deg(rA),1))
			return axis==Enum.Axis.X and {rA,0,0}
			or axis==Enum.Axis.Y and {0,rA,0}
			or axis==Enum.Axis.Z and {0,0,rA}
		end
        local lastCFrame = CFrame.new(0,0,0)
        if BtoolsAPI.Selection and BtoolsAPI:IsDeleting(BtoolsAPI.Selection) then
            BtoolsAPI.Selection = nil
        end

        if BtoolsAPI.Selection then
            BtoolsAPI:InsertAxis(BtoolsAPI.Selection, "Rotate")
            BtoolsAPI.ArcHandles.Adornee = BtoolsAPI.Selection
        end

        local dragging = false
        local handling = false

        BtoolsAPI.Lasso.Humanoid = LocalPlayer.Character.Humanoid
        BtoolsAPI.Lasso.Visible = true
        BtoolsAPI.Lasso.Color = BrickColor.new("Bright blue")

        BtoolsAPI.ArcHandles.Visible = true
        BtoolsAPI.ArcHandles.Color = BrickColor.new("Bright orange")

        

        BtoolsAPI.SelectBox.Visible = true
        BtoolsAPI.SelectBox.Color = BrickColor.new("Bright blue")
        

        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = BtoolsAPI.ArcHandles.MouseButton1Down:connect(function(axis)
            handling = true
            if BtoolsAPI.Lasso.Part then
                lastCFrame = BtoolsAPI.Lasso.Part.CFrame
            end
        end)

        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = BtoolsAPI.ArcHandles.MouseDrag:connect(function(axis, relativeAngle)
            dragging = true
            if BtoolsAPI.Lasso.Part then
                BtoolsAPI.Lasso.Part.CFrame = lastCFrame * CFrame.Angles(unpack(AngleFromAxis(axis,relativeAngle)))
            end
        end)
        
        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = BtoolsAPI.ArcHandles.MouseButton1Up:Connect(function(axis, relativeAngle)
            dragging = false
            handing = false
            if not BtoolsAPI:IsOptical(BtoolsAPI.Handles.Adornee) then
                BtoolsAPI.Selection = BtoolsAPI.Builds:FindFirstChild("Optical" .. BtoolsAPI.Handles.Adornee.Name)
                BtoolsAPI.ArcHandles.Adornee = BtoolsAPI.Selection
            end
            BtoolsAPI.Lasso.Part = BtoolsAPI.Selection
            lastCFrame = BtoolsAPI.Lasso.Part.CFrame
            BtoolsAPI.History[#BtoolsAPI.History + 1] = {
                Part = BtoolsAPI.Selection,
                CFrame = BtoolsAPI.Selection.CFrame,
                Orientation = BtoolsAPI.Selection.Orientation,
                Type = BtoolsAPI.Selection.Info.Action
            }
        end)


        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = RunService.Heartbeat:Connect(function()
            selec = Mouse.Target
            if selec and not handling and not dragging and selec:IsA("BasePart") and selec ~= BtoolsAPI.Selection and not BtoolsAPI:IsTransforming(selec) then
                BtoolsAPI.SelectBox.Adornee = selec
            end
        end)

        BtoolsAPI:InsertAxis(BtoolsAPI.Selection, "Rotate")

        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = Mouse.Button1Up:Connect(function()
            if selec and not handling and not dragging then
                if not BtoolsAPI:IsOptical(selec) and BtoolsAPI:IsTransforming(selec) then
                    BtoolsAPI:InsertAxis(BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name), "Rotate")
                    BtoolsAPI.Selection = BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name)
                    
                else
                    BtoolsAPI.Selection = (not BtoolsAPI:IsOptical(selec) and not BtoolsAPI:IsTransforming(selec)) and BtoolsAPI:CreateOptical(selec, "Rotate") or (not BtoolsAPI:IsOptical(selec) and BtoolsAPI:IsTransforming(selec) and BtoolsAPI.Builds:FindFirstChild("Optical" .. selec.Name)) or selec
                    BtoolsAPI:InsertAxis(BtoolsAPI.Selection, "Rotate")
                   
                end
            end
            MD = false
        end)

        BtoolsAPI.Connections.Rotating[#BtoolsAPI.Connections.Rotating + 1] = Mouse.Button1Down:Connect(function()
            MD = true
        end)

    else
        BtoolsAPI["Rotate"] = false

        for _,v in pairs(BtoolsAPI.Connections.Rotating) do
            if v then
                v:Disconnect()
            end
        end

        BtoolsAPI.ArcHandles.Visible = false
        BtoolsAPI.Lasso.Visible = false
    end
end
local openuibtools = false
function PI.LoadBtools()
    if not DB then
        DB = true
        task.delay(3, function()
            DB = false
        end)
        if not BtoolsUI or not CameraModule then
            repeat sleep() until BtoolsUI and CameraModule
        end
        if not openuibtools then
            openuibtools = true
            BtoolsUI:UIVisible(true)
            BtoolsAPI.Builds.Parent = workspace.Assets
        else
            openuibtools = false
            BtoolsUI:UIVisible(false)
            BtoolsAPI.Builds.Parent = game.ReplicatedStorage
            BtoolsAPI.Lasso.Visible = false
            BtoolsAPI.Handles.Visible = false
            BtoolsAPI.ArcHandles.Visible = false
            BtoolsAPI.SelectBox.Visible = false
            BtoolsAPI:LoadMove(false)
            BtoolsAPI:LoadRotate(false)
            BtoolsAPI:LoadDelete(false)
            CameraModule:StopFreecam()
        end
    end
end

function PI.GetTool(toolId)
    local toolAsset = getObjects("rbxassetid://" .. toolId)[1]
    local toolName = toolAsset.Name
    if toolAsset and toolName then
        toolAsset:Destroy()
        send("gear me " .. toolId)
        return LocalPlayer.Backpack:WaitForChild(toolName)
    else
        notify("Failed to fetch gear", 3, "Retry?", function() 
            PI.GetTool(toolId)
        end)
        return
    end
end

local function findPads()
    if #KAHAdmin.Pads:GetChildren() == 9 then
        notify("Found all pads", 3)
        lookin = false
        return
    end
    workspace.FallenPartsDestroyHeight = 0/0
    workspace.Gravity = 0
    local tried = {}
    local lookin = true
    local leaked = {
        CFrame.new(Vector3.new(1000000, 1000000, 1000000)),
        CFrame.new(Vector3.new(1000000, 1000003, -1000000)),
        CFrame.new(Vector3.new(1000000, -1000003, -1000000)),
        CFrame.new(Vector3.new(1000000, -1000000, -3)),
        CFrame.new(Vector3.new(3, -1000000, 1000000)),
        CFrame.new(Vector3.new(1000000, -3, -1000000)),
        CFrame.new(Vector3.new(-1000000, -3, 1000000)),
        CFrame.new(Vector3.new(1000000, 3, 1000000)),
        CFrame.new(Vector3.new(1000000, 1000003, 1000000)),
        CFrame.new(Vector3.new(1000000, -1000003, 1000000)),
        CFrame.new(Vector3.new(454545, 150000, -678678)),
        CFrame.new(Vector3.new(306712, 420552, 398158)),
        CFrame.new(Vector3.new(-1000000, 1000003, 1000000)),
        CFrame.new(Vector3.new(-1000000, 1000003, -1000000)),
        CFrame.new(Vector3.new(-1000000, -1000003, -1000000)),
        CFrame.new(Vector3.new(45400, -49860, 56673)),
        CFrame.new(Vector3.new(56470, -48312, 28578)),
        CFrame.new(Vector3.new(75304, -49638, 47300)),
        CFrame.new(Vector3.new(34120, -48830, 30233)),
        CFrame.new(Vector3.new(34120, -48830, 30233)),
        CFrame.new(Vector3.new(77822, -49751, 79116)),
        CFrame.new(Vector3.new(42682, -29202, 29886)),
        CFrame.new(Vector3.new(51052, -49558, 34068)),
        CFrame.new(Vector3.new(-251773, 1000003, 382563)),
        CFrame.new(Vector3.new(0,1000000,0)),
        CFrame.new(Vector3.new(0,-1000000,0)),
        CFrame.new(Vector3.new(-1000000,0,0)),
        CFrame.new(Vector3.new(1000000,0,0)),
        CFrame.new(Vector3.new(0,0,-1000000)),
        CFrame.new(Vector3.new(0,0,1000000)),
    }

    notify("Checking skydive positions... (RequestStreamAroundAsync)", 3)

    for i = 1000,20000,1000 do
        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(0,i,0), math.huge)
        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,i,0)
        end
        sleep(.5)
        if #KAHAdmin.Pads:GetChildren() == 9 then
            notify("Found all pads", 3)
            lookin = false
        else
            notify(#KAHAdmin.Pads:GetChildren() .. " pads found.", 3)
        end
    end


    notify("Checking leaked locations... (RequestStreamAroundAsync)", 3)

    
    for _, leak in pairs(leaked) do
        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(leak.X, leak.Y, leak.Z), math.huge)
        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = leak
        end
        sleep(.5)
        if #KAHAdmin.Pads:GetChildren() == 9 then
            notify("Found all pads", 3)
            lookin = false
        else
            notify(#KAHAdmin.Pads:GetChildren() .. " pads found.", 3)
        end
    end

    notify("Trying CMD-Y locations... (RequestStreamAroundAsync)", 3)

    task.delay(60, function()
        lookin = false
    end)

    while lookin do
        sleep()
        local x,y,z = math.random(-30593, -23388), math.random(-30593, -10455), math.random(-30593, -10455)

        for _, try in pairs(tried) do
            if (math.floor(try.X) - math.floor(x) <= 100) or (math.floor(try.X) - math.floor(x) <= -100) then
                repeat sleep()
                    x = math.random(-30593, -23388)
                until not
                    (math.floor(try.X) - math.floor(x) <= 100) or (math.floor(try.X) - math.floor(x) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end

            if (math.floor(try.Y) - math.floor(y) <= 100) or (math.floor(try.Y) - math.floor(y) <= -100) then
                repeat sleep()
                    y = math.random(-30593, -10455)
                until not
                    (math.floor(try.Y) - math.floor(y) <= 100) or (math.floor(try.Y) - math.floor(y) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end

            if (math.floor(try.Z) - math.floor(z) <= 100) or (math.floor(try.Z) - math.floor(z) <= -100) then
                repeat sleep()
                    z = math.random(-30593, -10455)
                until not
                    (math.floor(try.Z) - math.floor(z) <= 100) or (math.floor(try.Z) - math.floor(z) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end
        end

        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(x,y,z), math.huge)

        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
            LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            sleep()
        end
    end

    if #KAHAdmin.Pads:GetChildren() == 9 then
        notify("Found all pads", 3)
        lookin = false
    else
        notify(#KAHAdmin.Pads:GetChildren() .. " pads found.", 3)
    end
    
    workspace.Gravity = 198.6
end

local function findRegen()
    if KAHAdmin:FindFirstChild("Regen") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = KAHAdmin.Regen.CFrame
        return
    end
    workspace.FallenPartsDestroyHeight = 0/0
    workspace.Gravity = 0
    local tried = {}
    local lookin = true
    local leaked = {
        CFrame.new(Vector3.new(1000000, 1000000, 1000000)),
        CFrame.new(Vector3.new(1000000, 1000003, -1000000)),
        CFrame.new(Vector3.new(1000000, -1000003, -1000000)),
        CFrame.new(Vector3.new(1000000, -1000000, -3)),
        CFrame.new(Vector3.new(3, -1000000, 1000000)),
        CFrame.new(Vector3.new(1000000, -3, -1000000)),
        CFrame.new(Vector3.new(-1000000, -3, 1000000)),
        CFrame.new(Vector3.new(1000000, 3, 1000000)),
        CFrame.new(Vector3.new(1000000, 1000003, 1000000)),
        CFrame.new(Vector3.new(1000000, -1000003, 1000000)),
        CFrame.new(Vector3.new(454545, 150000, -678678)),
        CFrame.new(Vector3.new(306712, 420552, 398158)),
        CFrame.new(Vector3.new(-1000000, 1000003, 1000000)),
        CFrame.new(Vector3.new(-1000000, 1000003, -1000000)),
        CFrame.new(Vector3.new(-1000000, -1000003, -1000000)),
        CFrame.new(Vector3.new(45400, -49860, 56673)),
        CFrame.new(Vector3.new(56470, -48312, 28578)),
        CFrame.new(Vector3.new(75304, -49638, 47300)),
        CFrame.new(Vector3.new(34120, -48830, 30233)),
        CFrame.new(Vector3.new(34120, -48830, 30233)),
        CFrame.new(Vector3.new(77822, -49751, 79116)),
        CFrame.new(Vector3.new(42682, -29202, 29886)),
        CFrame.new(Vector3.new(51052, -49558, 34068)),
        CFrame.new(Vector3.new(-251773, 1000003, 382563)),
        CFrame.new(Vector3.new(0,1000000,0)),
        CFrame.new(Vector3.new(0,-1000000,0)),
        CFrame.new(Vector3.new(-1000000,0,0)),
        CFrame.new(Vector3.new(1000000,0,0)),
        CFrame.new(Vector3.new(0,0,-1000000)),
        CFrame.new(Vector3.new(0,0,1000000)),
    }

    notify("Checking skydive positions... (RequestStreamAroundAsync)", 3)

    for i = 1000,20000,1000 do
        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(0,i,0), math.huge)
        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,i,0)
        end
        sleep(.5)
        if tentInstances.Regen.instance then
            notify("Found regen")
            lookin = false
            workspace.Gravity = 198.6
            return
        end
    end


    notify("Checking leaked locations... (RequestStreamAroundAsync)", 3)

    
    for _, leak in pairs(leaked) do
        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(leak.X, leak.Y, leak.Z), math.huge)
        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = leak
        end
        sleep(.5)
        if tentInstances.Regen.instance then
            notify("Found regen")
            lookin = false
            workspace.Gravity = 198.6
            return
        end
    end

    notify("Trying CMD-Y locations... (RequestStreamAroundAsync)", 3)

    task.delay(60, function()
        lookin = false
    end)

    while lookin do
        sleep()
        local x,y,z = math.random(-30593, -23388), math.random(-30593, -10455), math.random(-30593, -10455)

        for _, try in pairs(tried) do
            if (math.floor(try.X) - math.floor(x) <= 100) or (math.floor(try.X) - math.floor(x) <= -100) then
                repeat sleep()
                    x = math.random(-30593, -23388)
                until not
                    (math.floor(try.X) - math.floor(x) <= 100) or (math.floor(try.X) - math.floor(x) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end

            if (math.floor(try.Y) - math.floor(y) <= 100) or (math.floor(try.Y) - math.floor(y) <= -100) then
                repeat sleep()
                    y = math.random(-30593, -10455)
                until not
                    (math.floor(try.Y) - math.floor(y) <= 100) or (math.floor(try.Y) - math.floor(y) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end

            if (math.floor(try.Z) - math.floor(z) <= 100) or (math.floor(try.Z) - math.floor(z) <= -100) then
                repeat sleep()
                    z = math.random(-30593, -10455)
                until not
                    (math.floor(try.Z) - math.floor(z) <= 100) or (math.floor(try.Z) - math.floor(z) <= -100)

            else
                tried[#tried + 1] = {
                    X = x,
                    Y = y, 
                    Z = z
                }
            end
        end

        local s,e = LocalPlayer:RequestStreamAroundAsync(Vector3.new(x,y,z), math.huge)

        if not s then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
            LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            sleep()
        end
    end

    if tentInstances.Regen.instance then
        notify("Found regen", 3)
        lookin = false
    else
        notify("Regen not found.", 3)
    end
    
    workspace.Gravity = 198.6
end



local function tempBan(player, T)
    ban(player.Name, true)
    task.delay(T, ban, player.Name, false)
end

shared.addCommand = addCommand

local function loadRegen(Player)
    if Player == nil then
        Player = LocalPlayer
    end

    if not isfile("PI/SavedRegens.json") then
        writefile("PI/SavedRegens.json", game:GetService("HttpService"):JSONEncode({}))
        notify("There were no saved regen pads. Maybe run find regen?")
    else
        local regenTable = game:GetService("HttpService"):JSONDecode(readfile("PI/SavedRegens.json"))

        
        if regenTable[game.JobId] then
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            
            if Player ~= LocalPlayer then
                if not tentInstances.Regen.instance then
                    loadRegen(LocalPlayer)
                    repeat sleep() until tentInstances.Regen.instance
                end
                send("stun " .. Player:GetAttribute("fixName"))
                Mover:Attach(Player.Character.Head)
                Mover.Attached:Wait()
                sleep(1)
                char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(table.unpack(regenTable[game.JobId].CFrame))
                sleep(1)
                send("respawn me " .. Player:GetAttribute("fixName"), "pm " .. Player:GetAttribute("fixName") .. " The Regen pad should now be streamed in for you.")
                return
            end

            if tentInstances.Regen.instance then
                notify("The regen pad is already loaded for you.")
                return
            end

            local backToPos = char:WaitForChild("HumanoidRootPart").CFrame
            local did, work = LocalPlayer:RequestStreamAroundAsync(Vector3.new(table.unpack(regenTable[game.JobId].CFrame)), math.huge)
            
            if not did then
                char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(table.unpack(regenTable[game.JobId].CFrame))
            end

            local start = tick()
            repeat sleep() until tentInstances.Regen.instance or tick() - start >= 5

            if not tentInstances.Regen.instance then
                notify("Load regen failed. The saved position for this game jobID is incorrect. Maybe someone moved it while you were gone?")
            end

            char:WaitForChild("HumanoidRootPart").CFrame = backToPos
        else
            notify("There were no saved regen pads for this server. Maybe run find regen?")
        end
        
    end
end

local function saveRegen(Instance)
    if not isfile("PI/SavedRegens.json") then
        writefile("PI/SavedRegens.json", game:GetService("HttpService"):JSONEncode({}))
    end
    local regenTable = game:GetService("HttpService"):JSONDecode(readfile("PI/SavedRegens.json"))

    if #regenTable > 0 then
        regenTable[game.JobId] = {
            CFrame = {Instance.CFrame.X, Instance.CFrame.Y, Instance.CFrame.Z}
        }
    else
        regenTable = {}
        regenTable[game.JobId] = {
            CFrame = {Instance.CFrame.X, Instance.CFrame.Y, Instance.CFrame.Z}
        }
    end

    writefile("PI/SavedRegens.json", game:GetService("HttpService"):JSONEncode(regenTable))
end

local function setUpFiles()
    if not isfolder("PI") then
        UI:qNotePrompt({
            Title = "Welcome to PI.",
            Description = "I see you're a first time user. Setting up files.."
        })
        local CMDPIFolder = makefolder("PI")
    end
    if not isfile("PI/CustomCommands.lua") then
        writefile("PI/CustomCommands.lua", "-- Custom Commands")
    end
    
    if tentInstances.Regen.instance then
        saveRegen(tentInstances.Regen.instance)
        tentInstances.Regen.instance:GetPropertyChangedSignal("CFrame"):Connect(function()
            saveRegen(tentInstances.Regen.instance)
           
            notify("Regen was moved and the position was successfully saved.")
        end)
    else
        loadRegen(LocalPlayer)
    end
    
    loadstring(readfile("PI/CustomCommands.lua"))()
end

thread(setUpFiles)

----------------------------------------------------------
--                      THREADS
----------------------------------------------------------
-------
--Perm
------

thread(function()
    while sleep() do
        if Toggles.Perm and not Toggles.KeepPads then
            if not KAHAdmin.Pads:FindFirstChild(LocalPlayer.Name .. "'s admin") then
                regen()
            end
            pcall(touch, KAHAdmin.Pads:FindFirstChildOfClass("Model"):FindFirstChild("Head"))
        end
        if Toggles.KeepPads then
            regen()
            for _,v in pairs(KAHAdmin.Pads:GetDescendants()) do
                if v.Name == "Head" then
                    pcall(touch, v)
                end
            end  
        end
    end
end)

for _,Player in pairs(Players:GetPlayers()) do
    local fixName = getByp(Player.Name)

    Player:SetAttribute("fixName", fixName)
end

----------------------------------------------------------
--                      Connections
----------------------------------------------------------
game.Players.PlayerAdded:Connect(function(Player)
    local fixName = getByp(Player.Name)

    Player:SetAttribute("fixName", fixName)

    if Toggles.Lockdown then
        ban(Player.Name, true)
        table.insert(LockdownBans, Player.Name)
        sleep(.25)
        send("pm " .. fixName .. " [Ï]\nWelcome,\nThis server is currently locked down. Ask to be whitelisted or join another server.")
    end
end)

--------
--BTOOLS
--------
thread(function()

    repeat sleep() until BtoolsUI and CameraModule

    BtoolsUI.UI.MoveClicked:Connect(function()

        BtoolsAPI:LoadMove(true)
    end)

    BtoolsUI.UI.RotateClicked:Connect(function()

        BtoolsAPI:LoadRotate(true)
    end)
    local isrunning = false
    BtoolsUI.UI.CameraClicked:Connect(function()
        if not isrunning then
            CameraModule:StartFreecam()
            isrunning = true
        else
            CameraModule:StopFreecam()
            isrunning = false
        end
        
    end)

    BtoolsUI.UI.ClearClicked:Connect(function()
        if #BtoolsAPI.Builds:GetChildren() >= 1 then
            for _,v in pairs(BtoolsAPI.Builds:GetChildren()) do
                BtoolsAPI:Remove(v)
            end
            BtoolsAPI.History = {}
        else
            notify("There's nothing to clear.")
        end
    end)

    BtoolsUI.UI.CompleteClicked:Connect(function()
        BtoolsAPI:LoadMove(false)
        BtoolsAPI:LoadRotate(false)
        BtoolsAPI:LoadDelete(false)
        
        if #BtoolsAPI.Builds:GetChildren() >= 1 then
            for _,v in pairs(BtoolsAPI.Builds:GetChildren()) do
                if BtoolsAPI:IsDeleting(v.Info.ogPart.Value) then
                    Mover:MovePart(v.Info.ogPart.Value, v.CFrame, false)
                    v.Info.ogPart.Value.BrickColor = BrickColor.new(v.Info.ogColor.Value)
                else
                    Mover:MovePart(v.Info.ogPart.Value, v.CFrame, true)
                    v.Info.ogPart.Value.BrickColor = BrickColor.new(v.Info.ogColor.Value)
                end
                
                Mover.Finished:Wait()
                BtoolsAPI:Remove(v)
            end
            notify("Finished!")
            BtoolsAPI.History = {}
        else
            notify("Move something first!")
        end
    end)

    BtoolsUI.UI.DeleteClicked:Connect(function()
       
        BtoolsAPI:LoadDelete(true)
    end)

    BtoolsUI.UI.UndoClicked:Connect(function()
    
        local recentIndex, recentIndexNum = #BtoolsAPI.History > 1 and BtoolsAPI.History[#BtoolsAPI.History - 1] or BtoolsAPI.History[1], BtoolsAPI.History[#BtoolsAPI.History - 1] and #BtoolsAPI.History - 1 or 1
    
        if recentIndex.Part and recentIndex.Type then
        
            if recentIndex.Type.Value == "Delete" then
                BtoolsAPI:Remove(recentIndex.Part)
                table.remove(BtoolsAPI.History, recentIndexNum)
            else
                if recentIndexNum == 1 then
                    BtoolsAPI:Remove(recentIndex.Part)
                    table.remove(BtoolsAPI.History, recentIndexNum)
                    return
                end
                recentIndex.Part.CFrame = recentIndex.CFrame
                recentIndex.Part.Orientation = recentIndex.Orientation
                table.remove(BtoolsAPI.History, recentIndexNum)
            end
        end
    end)
end)

-----
--AFK
-----

UIS.WindowFocused:Connect(function()
    AFK("F")
end)

UIS.WindowFocusReleased:Connect(function()
    AFK("R")
end)

-------------------
--Missing Instances
-------------------

for _,instance in pairs(tentInstances) do
    if not instance.instance then
        if instance.Name then
            local Conn
            Conn = Terrain.DescendantAdded:Connect(function(Child)
                if Child.Name == instance.Name then
                    instance.instance = Child
                    if instance.Name == "Regen" then
                        saveRegen(Child)
                        notify("Regen was streamed in and the position was successfully saved.")
                        Child:GetPropertyChangedSignal("CFrame"):Connect(function()
                            saveRegen(Child)
                           
                            notify("Regen was moved and the position was successfully saved.")
                        end)
                    end
                    Conn:Disconnect()
                end
            end)
        elseif instance.Names then
            for _,Name in pairs(instance.Names) do
                local Conn
                Conn = Terrain.DescendantAdded:Connect(function(Child)
                    if Child.Name == Name then
                        table.insert(instance.instances, Child)
                        Conn:Disconnect()
                    end
                end)
            end
        end
    end   
end

-------------------
--Logs Interception
-------------------

local DebounceInfractions = {}
local Infractions = {}
local LogsIntercept

local readLogs = {}
local Logs = {}

Logs.OnNewLog = {
    
}


local function findFirstOccurence(spl_str, toFind)
    for index, value in next, spl_str do
        if value == toFind then
            return index
        end
    end
end


local function isAbuse(Log)
    if table.find(AbusiveCommands, string.lower(Log.Command)) and not table.find(Log.Args, "me") then
        return true
    end
    return false
end

local latestChat = {}

local LogsDumpToggle = LogsTab:CreateButton({
    Name = "Dump Logs",
    Callback = function(value)
        writefile("PI/LogsDump" .. game.JobId .. ".txt", "[PI]\n-------------------------\n")
        for _,v in pairs(UILogs) do
            appendfile("PI/LogsDump" .. game.JobId .. ".txt", UILogs[_][2] .. "\n")
        end
    end
})

local AntiAbuseSelfToggle = LogsTab:CreateToggle({
    Name = "Logs",
    CurrentValue = false,
    Flag = "LogLogsToggle",
    Callback = function(value)
        Toggles.LogLogs = value
        if not value then
            for _,v in pairs(UILogs) do
                if v then
                    v[1]:Destroy()
                    UILogs[_] = nil
                end
            end
        end
    end
})

local MyAdmins = {}
local LogsSection = LogsTab:CreateSection("Logs", false)

Players.PlayerChatted:Connect(function(chatType, player, message)
    latestChat[player.Name] = {TimeStamp = tick(), Len = #message, Msg = message}

    if Toggles.MyAdminCommands and player ~= LocalPlayer then
        local nm = player:GetAttribute("fixName")
        local args = string.split(message, " ")
        if not string.find(message, "#") then
            if table.find(MyAdmins, player.Name) then
                if string.sub(message, 1,#Prefix) == Prefix then
                    if not table.find(BlacklistedCommands, string.sub(args[1], #Prefix + 1, #args[1])) then
                        if args[2] then
                            args[2] = player.Name
                            processCommand(table.concat(args, " "))
                        else
                            processCommand(message)
                        end
                    else
                        send("pm " .. nm .. " " .. LocalPlayer.DisplayName .. "'s Admin Commands:\nError: Command is blacklisted. I cannot run this.")
                    end
                else
                    if not IsAdmin(player) then
                        if not table.find(AbusiveCommands, string.lower(args[1])) and args[2] then
                            args[2] = player:GetAttribute('fixName')
                            send(table.concat(args, " "))
                        end
                    end
                end
            end
        else
            if table.find(MyAdmins, player.Name) then
                send("pm " .. nm .. " " .. LocalPlayer.Name .. "'s Admin Commands:\nError: Your message was hashtagged. I cannot run this.")
            end
        end
    end
end)

Connections.Logs = {}

function Logs.OnNewLog:Connect(FUNC)
    for _, con in pairs(Connections.Logs) do
        Connections.Logs[_]:Disconnect()
        Connections.Logs[_] = nil
    end

    Connections.Logs[#Connections.Logs + 1] = LogsIntercept:WaitForChild("TextButton"):WaitForChild("Frame"):WaitForChild("Frame").ChildAdded:Connect(function(element)
        if Toggles.LogLogs then
            local notBaked = string.split(element.Text, "")
            local firstB = findFirstOccurence(notBaked, "[")
            local secondB = findFirstOccurence(notBaked, "]")
            local firstC = findFirstOccurence(notBaked, ":")
            local returnIndex
            for _,v in pairs(LogsIntercept:WaitForChild("TextButton"):WaitForChild("Frame"):WaitForChild("Frame"):GetChildren()) do
                if v == element then
                    returnIndex = _
                end
            end

            local playerName = string.sub(element.Text, firstB + 1, secondB - 1)
            if Players:FindFirstChild(playerName) and not table.find(WhitelistedPlayers, playerName) and playerName ~= LocalPlayer.Name then
                local log = string.split(string.sub(element.Text, secondB + 3, #element.Text), " ")
                local command = log[1]
                local args = {}

                for index, value in next, log do
                    if index ~= 1 then 
                        table.insert(args, value)
                    end
                end

                local ts = 1

                if string.sub(element.Text, 1,1) == " " then
                    ts = 2
                end
                
                FUNC({
                    Index = returnIndex,
                    Player = Players:FindFirstChild(playerName),
                    Command = string.lower(string.gsub(command,"[^%w%s_]+", "")),
                    Args = args,
                    Full = string.sub(element.Text, secondB + 3, #element.Text),
                    TimeStamp = {hour = string.sub(element.Text, ts, firstC - 1), min = string.sub(element.Text, firstC + 1, firstC + 2)}
                })
            end
        end
    end)
    
end

LocalPlayer.PlayerGui.ChildAdded:Connect(function(Child)
    if Child.Name == "NoClip" and Toggles.AntiAbuseSelf then
        Child.Disabled = true
        game.Debris:AddItem(Child, 0)
        LocalPlayer.Character.Humanoid.PlatformStand = false
        LocalPlayer.Character.Torso.Anchored = false
    end
    if Child.Name == "ScrollGui" then
        Child:WaitForChild("TextButton").Visible = false
        Child:WaitForChild("ScrollGui").Disabled = true
        LogsIntercept = Child
        Logs.OnNewLog:Connect(function(Log)
            local TimeStamp
            local t = os.time()
            local d = os.date("!*t", t)
            local min = tonumber(d.min)
            local hour = tonumber(d.hour)
            local sec = tonumber(d.sec)
        
            if hour > 12 then
                hour -= 12
            end
        
            if hour == 0 then
                hour = 12
            end
        
            if min < 10 then
                min = "0" .. min
            end
        
            TimeStamp = hour .. ":" .. min
          
            if UILogs[Log.Index] then
                UILogs[Log.Index][1]:Set({
                    Title = Log.Player.DisplayName .. " (@" .. Log.Player.Name .. ")",
                Content = "Command: " .. Log.Command .. "\nArgs: " .. table.concat(Log.Args, " ") or "None"
                })
                UILogs[Log.Index][2] = "(" .. TimeStamp .. ") - " .. Log.Player.DisplayName .. " (@" .. Log.Player.Name .. "): " .. Log.Full .. "\n--------------------------------"
            else
                local para = LogsTab:CreateParagraph({
                    Title = Log.Player.DisplayName .. " (@" .. Log.Player.Name .. ")",
                    Content = "Command: " .. Log.Command .. "\nArgs: " .. table.concat(Log.Args, " ") or "None"
                }, LogsSection)
                UILogs[Log.Index] = {}
                UILogs[Log.Index][1] = para
                UILogs[Log.Index][2] = "(" .. TimeStamp .. ") - " .. Log.Player.DisplayName .. " (@" .. Log.Player.Name .. "): " .. Log.Full .. "\n--------------------------------"
            end
            
            if latestChat[Log.Player.Name] and ((latestChat[Log.Player.Name].Msg == Log.Full) or (latestChat[Log.Player.Name].Len == #Log.Full)) and (tick() - latestChat[Log.Player.Name].TimeStamp) <= 1 and tonumber(hour) == tonumber(Log.TimeStamp.hour) and (((tonumber(min) - 1) == tonumber(Log.TimeStamp.min)) or (tonumber(min) == tonumber(Log.TimeStamp.min))) then
                if Toggles.AntiTeleport and Log.Command == "teleport" or Log.Command == "tp" and Log.Player ~= LocalPlayer then
                    for _,v in pairs(Log.Args) do
                        if string.sub(string.lower(LocalPlayer.Name), 1, #v) == string.lower(v) or string.lower(v) == "all" or string.lower(v) == "others" then
                            send("pm " .. Log.Player:GetAttribute("fixName") .. " [ANTI TELEPORT]\nPlease don't teleport me.")
                            return
                        end
                    end
                end
                if Log.Command == "unblind" and table.find(BannedPlayers, Log.Player.Name) and Log.Args[1] == "me" then
                    send("blind " .. Log.Player:GetAttribute("fixName"))
                end
            end
            
        
            if Toggles.AutoMod and isAbuse(Log) and Players:FindFirstChild(Log.Player.Name) and not DebounceInfractions[Log.Player.Name] and latestChat[Log.Player.Name] and ((latestChat[Log.Player.Name].Msg == Log.Full) or (latestChat[Log.Player.Name].Len == #Log.Full)) and (tick() - latestChat[Log.Player.Name].TimeStamp) <= 1 and tonumber(hour) == tonumber(Log.TimeStamp.hour) and (((tonumber(min) - 1) == tonumber(Log.TimeStamp.min)) or (tonumber(min) == tonumber(Log.TimeStamp.min))) then
                DebounceInfractions[Log.Player.Name] = true
                if not Infractions[Log.Player.Name] then
                    if #Log.Args >= 1 then
                        Infractions[Log.Player.Name] = {
                            Abused = {
                                [Log.Command] = {
                                    Amount = 1,
                                    Time = 0
                                }
                            }
                        }
        
                        if Log.Command == "kill" or Log.Command == "explode" then
                            send("reset " .. table.concat(Log.Args, " "))
                        else
                            send("un" .. Log.Command .. " " .. table.concat(Log.Args, " "))
                        end
        
                        regen()
                        notify(Log.Player.DisplayName .. " (" .. Log.Player.Name .. ") has been given a warning for the use of abusive command " .. Log.Command .. ".", 3) 
                        send("pm " .. Log.Player:GetAttribute("fixName") .. " [Ï]\nYou are recieving a warning for the use of an abusive command (" .. Log.Command .. ").\nAny further use of this command will result in temporary bans from the server.")
                    else
                        notify("Keep an eye out on " .. Log.Player.DisplayName .. " (" .. Log.Player.Name .. "). Used command " .. Log.Command .. " but with no arguments.")
                    end
                else
                    if Infractions[Log.Player.Name].Abused[Log.Command] then
                        Infractions[Log.Player.Name].Abused[Log.Command].Amount += 1
                        Infractions[Log.Player.Name].Abused[Log.Command].Time += 30
        
                        regen()
        
                        if Log.Command == "kill" or Log.Command == "explode" then
                            send("reset " .. table.concat(Log.Args, " "))
                        else
                            send("un" .. Log.Command .. " " .. table.concat(Log.Args, " "))
                        end
        
                        tempBan(Log.Player, Infractions[Log.Player.Name].Abused[Log.Command].Time)
                        sleep(.25)
                        notify(Log.Player.DisplayName .. " (" .. Log.Player.Name .. ") has been temp banned for " .. Infractions[Log.Player.Name].Abused[Log.Command].Time .. "s for repeated use of command " .. Log.Command .. " (x" .. Infractions[Log.Player.Name].Abused[Log.Command].Amount .. ").", 3)
                        send("pm " .. Log.Player:GetAttribute("fixName") .. " [Ï]\nYou are temporarily banned for " .. Infractions[Log.Player.Name].Abused[Log.Command].Time .. "s for repeated use of command " .. Log.Command .. " (x" .. Infractions[Log.Player.Name].Abused[Log.Command].Amount .. ").\nAny further use will result in higher ban times.")
                    else
                        Infractions[Log.Player.Name].Abused[Log.Command] = {
                            Amount = 1,
                            Time = 0
                        }
        
                        if Log.Command == "kill" or Log.Command == "explode" then
                            send("reset " .. table.concat(Log.Args, " "))
                        else
                            send("un" .. Log.Command .. " " .. table.concat(Log.Args, " "))
                        end
                        
                        regen()
                        notify(Log.Player.DisplayName .. " (" .. Log.Player.Name .. ") has been given a warning for the use of abusive command " .. Log.Command .. ".", 3) 
                        send("pm " .. Log.Player:GetAttribute("fixName") .. " [Ï]\nYou are recieving a warning for the use of an abusive command (" .. Log.Command .. ").\nAny further use of this command will result in temporary bans from the server.")
                    end
                end
                
                task.delay(Infractions[Log.Player.Name].Abused[Log.Command].Time or 0, function()
                    DebounceInfractions[Log.Player.Name] = nil
                end)
            end
        end)
    end
end)

local function removeWelds()
    local count = 0
    for _,w in pairs(workspace:GetDescendants()) do
        if w:IsA("Weld") or w:IsA("Snap") then
            repeat sleep() until w.Part1 and w.Part0
            if (w.Part1 and KAHPartsTable[w.Part1.Name]) or (w.Part0 and KAHPartsTable[w.Part0.Name]) then
                local attacher = w:FindFirstAncestorOfClass("Model")
                if attacher and Players:FindFirstChild(attacher.Name) and attacher.Name ~= LocalPlayer.Name then
                    local nm = Players:FindFirstChild(attacher.Name):GetAttribute("fixName")
                    count += 0
                    send("reset " .. nm)
                    sleep(.25)
                    send("pm " .. nm .. " [Ï]\nSorry, you can't attach to parts in this server!")
                    notify(attacher.Name .. " tried to attach to part " .. (KAHPartsTable[w.Part1.Name] ~= nil and w.Part1.Name) or w.Part0.Name)
                end
            end
        end
    end
    notify("Removed " .. count .. " welds.")
end


----------
--Commands
----------

LocalPlayer.Chatted:Connect(processCommand)

local hookMessageOld

hookMessageOld = hookmetamethod(game, "__namecall", function(Self, ...)
    if Toggles.InterceptChat and not checkcaller() and getnamecallmethod() == "FireServer" and Self == ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest then
        local arguments = {...}
        local splitStr = string.split(arguments[1], " ")
        if string.sub(splitStr[1], 1, #Prefix) == Prefix then
            splitStr[1] = string.gsub(splitStr[1], Prefix, "")
        end
        if Commands[string.lower(splitStr[1])] then
            return
        end
        return hookMessageOld(Self, ...)
    end

    return hookMessageOld(Self, ...)
end)

------
--Bans
------

thread(function()
    while true do
        sleep()
        if #BannedPlayers >= 1 then
            for _, plr in pairs(Players:GetPlayers()) do
                thread(function()
                    if workspace:FindFirstChild(plr.Name) and plr.Character == workspace:FindFirstChild(plr.Name) and table.find(BannedPlayers, plr.Name) then
                        send("respawn " .. plr:GetAttribute("fixName"), "punish " .. plr:GetAttribute("fixName"), "setgrav " .. plr:GetAttribute("fixName") .. " -9e9")
                    end
                end)
            end
        end
    end
end)

-------
--ANTIS
-------

Players.DescendantAdded:Connect(function(Child)
    if Toggles.Protect then
        if table.find(CrashGears, Child.Name) and Child:IsA("Tool") then
            local crasher = Child.Parent.Parent
            
            if not table.find(WhitelistedPlayers, crasher.Name) and crasher ~= LocalPlayer then
                local nm = crasher:GetAttribute("fixName")

                send("ungear " .. nm, "punish " .. nm, "unpunish " .. nm, "pm " .. nm .. " [Ï]\nSorry, you can't use this gear right now. (AntiCrash)")

                notify(crasher.DisplayName .. " (" .. crasher.Name .. ") tried to use " .. Child.Name)
            end
        end
    end

    if Toggles.AntiAttach then
        if Child.Name == "IvoryPeriastron" and Child:IsA("Tool") then
            local attacher = Child.Parent.Parent
            
            if attacher ~= LocalPlayer and not table.find(WhitelistedPlayers, attacher.Name) then
                local nm = attacher:GetAttribute("fixName")

                send("ungear " .. nm, "punish " .. nm, "unpunish " .. nm, "pm " .. nm .. " [Ï]\nSorry, you can't use this gear right now. (AntiAttach)")

                notify(attacher.DisplayName .. " (" .. attacher.Name .. ") tried to use " .. Child.Name)
            end
        end
    end
end)

LocalPlayer.PlayerGui.ChildAdded:Connect(function(Child)
    if Toggles.AntiAbuseSelf and Child.Name == "EFFECTGUIBLIND" then
        game.Debris:AddItem(Child,0)
    end
end)

KAHInstances.ChildAdded:Connect(function(c)
    if c:IsA("BasePart") and not c.Anchored then
        c.CanCollide = false
        c.CanTouch = false
    end
    local strcheck = c.Name:gsub("'s jail", "")
    if WhitelistedPlayersAntis[strcheck] and table.find(WhitelistedPlayers, strcheck) and WhitelistedPlayersAntis[strcheck].AntiJail then
        send("unjail " .. Players:FindFirstChild(strcheck):GetAttribute("fixName"))
    end
    if c:IsA("Model") then
        if Toggles.AntiAbuseSelf then
            if string.sub(c.Name, (#c.Name + 1) - #("'s jail"), #c.Name) == "'s jail" then
                local name = string.gsub(c.Name, "'s jail", "")
                if name == LocalPlayer.Name then
                    send("unjail me")
                end
                if table.find(WhitelistedPlayers, name) then
                    send("unjail " .. name)
                end
            end
        end
    end
end)

local function characterWatch(Ch)

    if spawnPoint then
        Ch:WaitForChild("HumanoidRootPart").CFrame = spawnPoint
    end

    local lastPosition

    local Hum = Ch:WaitForChild("Humanoid")

    local lastCFrameTP

    thread(function()
        while Ch do
            sleep(.25)
            lastCFrameTP = Ch:WaitForChild("HumanoidRootPart").Position
        end
    end)
    
    Ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("CFrame"):Connect(function()
        if Toggles.AntiTeleport and lastCFrameTP and (lastCFrameTP - Ch:WaitForChild("HumanoidRootPart").Position).Magnitude >= 4 and not string.find(latestChat[LocalPlayer.Name].Msg, "tp") and not string.find(latestChat[LocalPlayer.Name].Msg, "teleport") then
            send('')
            Ch:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(lastCFrameTP)
        end
    end)

    Hum:GetPropertyChangedSignal("Sit"):Connect(function()
        if Hum.Sit and Toggles.AntiSit then
            Hum.Sit = false
        end
    end)

    Hum:GetPropertyChangedSignal("PlatformStand"):Connect(function()
        if Hum.PlatformStand and Toggles.AntiStun then
            Hum.PlatformStand = false
        end
    end)
    
    Hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        Hum.WalkSpeed = ((Hum.WalkSpeed ~= Hum.WalkSpeed) or (Hum.WalkSpeed > 1000) or (Hum.WalkSpeed < 1000)) and 16 
        for _,v in pairs(Ch:GetChildren()) do
            if v:IsA("BasePart") then
                v:ApplyImpulse(Vector3.new(0,0,0))
                v.Velocity = Vector3.new(0,0,0)
            end
        end
    end)


    Ch:WaitForChild("Torso").ChildAdded:Connect(function(C)
        if Toggles.AntiAbuseSelf and C:IsA("BodyForce") then
            C.Force = Vector3.new(0,0,0)
            Ch.Torso:ApplyImpulse(Vector3.new(0,0,0))
            Ch.Torso.Velocity = Vector3.new(0,0,0)
            game.Debris:AddItem(C,0)
        end
    end)

    Ch.ChildAdded:Connect(function(Child)
        if Toggles.AntiName and Child.ClassName == "Model" and Child.Name ~= AFKMessage .. "\n" .. LocalPlayer.DisplayName then
            send("unname me")
            notify("[AntiName]: Removed foreign name.")
        end
        if Child.Name == "Torso" and Child.ClassName == "BasePart" then
            Ch:WaitForChild("Torso").ChildAdded:Connect(function(C)
                if Toggles.AntiAbuseSelf and C:IsA("BodyForce") then
                    C.Force = Vector3.new(0,0,0)
                    Ch.Torso:ApplyImpulse(Vector3.new(0,0,0))
                    Ch.Torso.Velocity = Vector3.new(0,0,0)
                    game.Debris:AddItem(C,0)
                end
            end)
        end
        if Toggles.AntiAbuseSelf then
            if Child.Name == "ice" then
                send("thaw me")
                game:GetService("Debris"):AddItem(Child, 0)
            end
            if Child.Name == "Addon" then
                send("normal me")
            end
            if Child.Name == "Seizure" then
                Child.Disabled = true
                game.Debris:AddItem(Child, 0)
                Hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
                Ch.Torso.Velocity = Vector3.new(0,0,0)
				Ch.Torso.RotVelocity = Vector3.new(0,0,0)
            end
        end
    end)

    for _,Brick in pairs(ObbyBricks:GetChildren()) do
        Brick.CanTouch = not Toggles.AntiDeath
        Brick:GetPropertyChangedSignal("CanTouch"):Connect(function()
            if Brick.CanTouch ~= not Toggles.AntiDeath then
                Brick.CanTouch = not Toggles.AntiDeath
            end
        end)
    end

    if Toggles.AntiDeath then
    	send("god me")
    end

    local Hum = Ch:WaitForChild("Humanoid")
    if Hum then
        local conn
        local conn2

        conn2 = Hum:GetPropertyChangedSignal("Health"):Connect(function(newHealth)
            if Toggles.AntiDeath and Hum.Health < math.huge then
                send('god me')
            end
        end)

        conn = Hum.Died:Connect(function()
            if Toggles.AntiDeath then
                send("reload me")
            end
            conn:Disconnect()
            conn2:Disconnect()
        end)
    end
end

if LocalPlayer.Character and workspace:FindFirstChild(LocalPlayer.Name) then
    characterWatch(LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(characterWatch)

--------------------------------
--Anti Punish/Altered Punish Fix
--------------------------------

----------
--LIGHTING
----------

Lighting.ChildAdded:Connect(function(p)
    if p.Name == LocalPlayer.Name and Toggles.AntiAbuseSelf then
        send("unpunish me")
        thread(function()
            while p.Parent == Lighting do
                sleep(.5)
                send("unpunish me")
            end
        end)
    end
    if table.find(WhitelistedPlayers, p.Name) and Toggles.AntiAbuseSelf then
        send("unpunish " .. p.Name)
        thread(function()
            while p.Parent == Lighting do
                sleep(.5)
                send("unpunish " .. p.Name)
            end
        end)
    end
end)

----------------
--PLAYER BUTTONS
----------------

for _,player in pairs(Players:GetPlayers()) do
    thread(function()
    if player ~= LocalPlayer then
            local char = player.Character or player.CharacterAdded:Wait()
            repeat sleep() until char:FindFirstChild("Humanoid")
            char:GetPropertyChangedSignal("Parent"):Connect(function()
                print('yass')
                if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiPunish then
                    if char.Parent == game.Lighting then
                        send("unpunish " .. player:GetAttribute('fixName'))
                    end
                end
            end)

            local conna
            conna = char.Humanoid.Died:Connect(function()
                if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiDeath then
                    send('reset ' .. player:GetAttribute('fixName'))
                    conna:Disconnect()
                end
            end)

            player.CharacterAdded:Connect(function(ch)
                local connd 
                repeat sleep() until ch:FindFirstChild("Humanoid")
                connd = ch.Humanoid.Died:Connect(function()
                    if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiDeath then
                        send('reset ' .. player:GetAttribute('fixName'))
                        condd:Disconnect()
                    end
                end)
                ch:GetPropertyChangedSignal("Parent"):Connect(function()
                    if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiPunish then
                        if ch.Parent == game.Lighting then
                            send("unpunish " .. player:GetAttribute('fixName'))
                        end
                    end
                end)
            end)

            local playerMenu = PlayersTab:CreatePlayerMenu({
                Username = player.Name,
            })

        
            local setOptions

            if table.find(WhitelistedPlayers, player.Name) then
                if not WhitelistedPlayersAntis[player.Name] then
                    WhitelistedPlayersAntis[player.Name] = {
                        AntiPunish = false,
                        AntiDeath = false,
                        AntiJail = false
                    }
                end
                setOptions = {"Select an option","Goto", "Bring", "All Antis: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish and WhitelistedPlayersAntis[player.Name].AntiJail and WhitelistedPlayersAntis[player.Name].AntiDeath), "AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish) }
            else
                if not WhitelistedPlayersAntis[player.Name] then
                    WhitelistedPlayersAntis[player.Name] = {
                        AntiPunish = false,
                        AntiDeath = false,
                        AntiJail = false
                    }
                end
                if table.find(BannedPlayers, player.Name) then
                    setOptions = {"Select an option", "Unban"}
                else
                    setOptions = {"Select an option", "Goto", "Bring", "Whitelist", "Ban"}
                end
            end
            

        playerMenu:CreateDropdown({
                Name = "Actions",
                Options = setOptions,
                CurrentOption = {"Select an option"},
                MultipleOptions = false,
                Flag = "PlayerActions",
                Callback = function(Self, Option)
                    print(Option)
                    if Option ~= "Select an option" then
                        if Option == "Goto" or Option == "Bring" then
                            processCommand(Prefix .. string.lower(Option) .. " " .. player.Name)
                            return
                        elseif Option == "Whitelist" then
                            whitelist(player.Name, true)
                            Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                        elseif Option == "Unwhitelist" then
                            whitelist(player.Name, false)
                            Self:Refresh({"Select an option", "Goto", "Bring", "Whitelist", "Ban"}, {"Select an option"})
                        elseif Option == "Ban" then
                            ban(player.Name, true)
                            Self:Refresh({"Select an option", "Unban"}, {"Select an option"})
                        elseif Option == "Unban" then
                            ban(player.Name, false)
                            Self:Refresh({"Select an option", "Goto", "Bring", "Whitelist", "Ban"}, {"Select an option"})
                        elseif Option:find("AntiDeath") then
                            WhitelistedPlayersAntis[player.Name].AntiDeath = not WhitelistedPlayersAntis[player.Name].AntiDeath
                            Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                        elseif Option:find("AntiPunish") then
                            WhitelistedPlayersAntis[player.Name].AntiPunish = not WhitelistedPlayersAntis[player.Name].AntiPunish
                            Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                        elseif Option:find("AntiJail") then
                            WhitelistedPlayersAntis[player.Name].AntiJail = not WhitelistedPlayersAntis[player.Name].AntiJail
                            Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                        end
                    end
                end
            })
        end
    end)
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
       --if player ~= LocalPlayer then
       local char = player.Character or player.CharacterAdded:Wait()
        repeat sleep() until char:FindFirstChild("Humanoid")
        char:GetPropertyChangedSignal("Parent"):Connect(function()
            print('yass')
            if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiPunish then
                if char.Parent == game.Lighting then
                    send("unpunish " .. player:GetAttribute('fixName'))
                end
            end
        end)

        local conna
        conna = char.Humanoid.Died:Connect(function()
            if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiDeath then
                send('reset ' .. player:GetAttribute('fixName'))
                conna:Disconnect()
            end
        end)

        player.CharacterAdded:Connect(function(ch)
            local connd 
            repeat sleep() until ch:FindFirstChild("Humanoid")
            connd = ch.Humanoid.Died:Connect(function()
                if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiDeath then
                    send('reset ' .. player:GetAttribute('fixName'))
                    condd:Disconnect()
                end
            end)
            ch:GetPropertyChangedSignal("Parent"):Connect(function()
                if WhitelistedPlayersAntis[player.Name] and table.find(WhitelistedPlayers, player.Name) and WhitelistedPlayersAntis[player.Name].AntiPunish then
                    if ch.Parent == game.Lighting then
                        send("unpunish " .. player:GetAttribute('fixName'))
                    end
                end
            end)
        end)

	    local playerMenu = PlayersTab:CreatePlayerMenu({
            Username = player.Name,
        })

    
        local setOptions

        if table.find(WhitelistedPlayers, player.Name) then
            if not WhitelistedPlayersAntis[player.Name] then
                WhitelistedPlayersAntis[player.Name] = {
                    AntiPunish = false,
                    AntiDeath = false,
                    AntiJail = false
                }
            end
            setOptions = {"Select an option","Goto", "Bring", "All Antis: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish and WhitelistedPlayersAntis[player.Name].AntiJail and WhitelistedPlayersAntis[player.Name].AntiDeath), "AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish) }
        else
            if not WhitelistedPlayersAntis[player.Name] then
                WhitelistedPlayersAntis[player.Name] = {
                    AntiPunish = false,
                    AntiDeath = false,
                    AntiJail = false
                }
            end
            if table.find(BannedPlayers, player.Name) then
                setOptions = {"Select an option", "Unban"}
            else
                setOptions = {"Select an option", "Goto", "Bring", "Whitelist", "Ban"}
            end
        end
        

       playerMenu:CreateDropdown({
            Name = "Actions",
            Options = setOptions,
            CurrentOption = {"Select an option"},
            MultipleOptions = false,
            Flag = "PlayerActions",
            Callback = function(Self, Option)
                print(Option)
                if Option ~= "Select an option" then
                    if Option == "Goto" or Option == "Bring" then
                        processCommand(Prefix .. string.lower(Option) .. " " .. player.Name)
                        return
                    elseif Option == "Whitelist" then
                        whitelist(player.Name, true)
                        Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                    elseif Option == "Unwhitelist" then
                        whitelist(player.Name, false)
                        Self:Refresh({"Select an option", "Goto", "Bring", "Whitelist", "Ban"}, {"Select an option"})
                    elseif Option == "Ban" then
                        ban(player.Name, true)
                        Self:Refresh({"Select an option", "Unban"}, {"Select an option"})
                    elseif Option == "Unban" then
                        ban(player.Name, false)
                        Self:Refresh({"Select an option", "Goto", "Bring", "Whitelist", "Ban"}, {"Select an option"})
                    elseif Option:find("AntiDeath") then
                        WhitelistedPlayersAntis[player.Name].AntiDeath = not WhitelistedPlayersAntis[player.Name].AntiDeath
                        Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                    elseif Option:find("AntiPunish") then
                        WhitelistedPlayersAntis[player.Name].AntiPunish = not WhitelistedPlayersAntis[player.Name].AntiPunish
                        Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                    elseif Option:find("AntiJail") then
                        WhitelistedPlayersAntis[player.Name].AntiJail = not WhitelistedPlayersAntis[player.Name].AntiJail
                        Self:Refresh({"Select an option", "Goto", "Bring", "Unwhitelist", "AntiDeath: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiDeath),"AntiPunish: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiPunish), "AntiJail: " .. tostring(WhitelistedPlayersAntis[player.Name].AntiJail)}, {"Select an option"})
                    end
                end
            end
        })
    end
end)

Players.PlayerRemoving:Connect(function(plr)
	PlayersTab:DestroyPlayer(plr.Name)
end)



local currentCode
local currentArgs
local currentName
local currentAlias
local currentDesc


CustomCommandsTab:CreateInput({
    Name = "Arg Number",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Callback = function(args)
        currentArgs = tonumber(args)
    end
})

CustomCommandsTab:CreateInput({
    Name = "Alias",
    PlaceholderText = "",
    RemoveTextAfterFocusLost = false,
    Callback = function(args)
        currentAlias = args
    end
})

CustomCommandsTab:CreateInput({
    Name = "Command Name",
    PlaceholderText = "",
    RemoveTextAfterFocusLost = false,
    Callback = function(args)
        currentName = args
    end
})

CustomCommandsTab:CreateBigBox(function(txt)
    currentCode = txt
end)
 
CustomCommandsTab:CreateButton({
    Name = "Add Command",
    Callback = function()
        print("Clicked")
        print()
        if currentCode and currentCode ~= "" and currentCode ~= " " and currentName and currentArgs then
            if not isfile("PI/CustomCommands.lua") then
                writefile("PI/CustomCommands.lua", "-- Custom Commands")
            end
            appendfile("PI/CustomCommands.lua", 
            "\n--[[\t" .. currentName .. "\t]]\n" .. "\nshared.addCommand({\n\tName = '" .. currentName .. "',\n\tAliases = {" .. (currentAlias and "'" .. currentAlias .. "'" or "") .. "},\n\tArgs = " .. currentArgs .. ",\n\tFunction = " .. currentCode .. ",\n\tDesc = " .. (currentDesc and "'" .. currentDesc .. "'" or "'No Description'") .. ",\n\tCustom = true\n})")
            loadstring(readfile("PI/CustomCommands.lua"))()
        end
    end
})


----------------------------------------------------------
--                  Self Toggles
----------------------------------------------------------

local TogglesSelf = SelfTab:CreateSection("Main Toggles", false)

local AntiAbuseSelfToggle = SelfTab:CreateToggle({
    Name = "Anti Abuse",
    CurrentValue = false,
    Flag = "AntiAbuseSelfToggle",
    Info = {
        Title = 'Anti Abuse',
        Image = '13979806434',
        Description = 'Prevents you from being affected by any abusive commands',
    },
    Callback = function(value)
        workspace.FallenPartsDestroyHeight = value and 0/0 or -500
        Toggles.AntiAbuseSelf = value
    end
})


local AntiDeathToggle = SelfTab:CreateToggle({
    Name = "Anti Death",
    CurrentValue = false,
    Flag = "AntiDeathToggle",
    Callback = function(value)
        Toggles.AntiDeath = value
        for _,Brick in pairs(ObbyBricks:GetChildren()) do
            Brick.CanTouch = not Toggles.AntiDeath
            Brick:GetPropertyChangedSignal("CanTouch"):Connect(function()
                if Brick.CanTouch ~= not Toggles.AntiDeath then
                    Brick.CanTouch = not Toggles.AntiDeath
                end
            end)
        end
    
        if Toggles.AntiDeath then
            local Hum = LocalPlayer.Character:WaitForChild("Humanoid")
            
            if Hum then
                if Hum.Health <= 0 then
                    send('reload me')
                else
                    local conn
                    local conn2
        
                    conn2 = Hum:GetPropertyChangedSignal("Health"):Connect(function(newHealth)
                        if not Toggles.AntiDeath then
                            conn2:Disconnect()
                        end
                        if Hum.Health < math.huge then
                            send('god me')
                        end
                    end)
        
                    conn = Hum.Died:Connect(function()
                        if not Toggles.AntiDeath then
                            conn:Disconnect()
                            conn2:Disconnect()
                        end
                        send("reload me")
                        
                    end)
                end
    
            end
        end
    end
})

local KeepPadsToggle = SelfTab:CreateToggle({
    Name = "Keep Pads",
    CurrentValue = false,
    Flag = "LoopGrabToggle",
    Callback = function(value)
        Toggles.KeepPads = value
    end
})

local PermToggle = SelfTab:CreateToggle({
    Name = "Perm",
    CurrentValue = false,
    Flag = "PermToggle",
    Callback = function(value)
        Toggles.Perm = value
    end
})

local TogglesSelf = SelfTab:CreateSection("Misc Toggles", false)


local AntiTeleportToggle = SelfTab:CreateToggle({
    Name = "Anti Teleport",
    CurrentValue = false,
    Flag = "AntiTeleportToggle",
    Callback = function(value)
        Toggles.AntiTeleport = value
    end
})

local AntiNameToggle = SelfTab:CreateToggle({
    Name = "Anti Name",
    CurrentValue = false,
    Flag = "AntiNameToggle",
    Callback = function(value)
        Toggles.AntiName = value
    end
})

local AntiStunToggle = SelfTab:CreateToggle({
    Name = "Anti Stun",
    CurrentValue = false,
    Flag = "AntiStunToggle",
    Callback = function(value)
        Toggles.AntiStun = value
    end
})

local AntiSitToggle = SelfTab:CreateToggle({
    Name = "Anti Sit",
    CurrentValue = false,
    Flag = "AntiSitToggle",
    Callback = function(value)
        Toggles.AntiSit = value
    end
})

----------------------------------------------------------
--                  Server Toggles
----------------------------------------------------------



local TogglesServer = ServerTab:CreateSection("Toggles")

local LockdownToggle = ServerTab:CreateToggle({
    Name = "Lockdown",
    CurrentValue = false,
    Flag = "LockdownToggle",
    Callback = function(value)
        Toggles.Lockdown = value
        for _, player in pairs(Players:GetPlayers()) do
            thread(function()
                if player ~= LocalPlayer then
                    local fixName = player:GetAttribute("fixName")
                    if not table.find(WhitelistedPlayers, player.Name) then
                        if value then
                            table.insert(LockdownBans, player.Name)
                            ban(player.Name, true)
                            sleep(.25)
                            send("pm " .. fixName .. " [Ï]\nHello,\nThis server is currently locked down. Ask to be whitelisted or join another server.")
                        else
                            if table.find(LockdownBans, player.Name) then
                                ban(player.Name, false)
                            end
                        end 
                    else
                        if not value then
                            if table.find(LockdownBans, player.Name) then
                                ban(player.Name, false)
                            end
                        end   
                    end
                end
            end)
        end
    end
})

local ProtectToggle = ServerTab:CreateToggle({
    Name = "Protect",
    CurrentValue = false,
    Flag = "AntiCrashToggle",
    Callback = function(value)
        Toggles.Protect = value
        if value then
            for _, player in pairs(Players:GetPlayers()) do
                for __,v in pairs(player:GetDescendants()) do
                    if v:IsA("Tool") and table.find(CrashGears, v.Name) then
                        local nm = player:GetAttribute("fixName")
        
                        if v.Name == "OrinthianSwordAndShield" then
                            send("ungear " .. nm, "removelimbs " .. nm, "refresh " .. nm, "pm " .. nm .. " [Ï]\nSorry, you can't use this gear right now. \n\n\n")
                        else
                            send("punish " .. nm, "unsize " .. nm,  "unpunish " .. nm, "pm " .. nm .. " [Ï]\nSorry, you can't use this gear right now. \n\n\n")
                        end
                    end
                end
            end
        end
    end
})

local AutoModToggle = ServerTab:CreateToggle({
    Name = "AutoMod",
    CurrentValue = false,
    Flag = "AutoMod Toggle",
    Callback = function(val)
        Toggles.AutoMod = val
    end
})

local MyAdminCommandsToggle = ServerTab:CreateToggle({
    Name = "My Admin Commands",
    CurrentValue = false,
    Flag = "MyAdminCommands Toggle",
    Callback = function(val)
        Toggles.MyAdminCommands = val
        send('h \n\n\n' .. LocalPlayer.DisplayName .. "'s Admin Commands are now " .. (val and "on." or "off.") .. "\n\n\n")
    end
})

local AntiAttachToggle = ServerTab:CreateToggle({
    Name = "Anti Attach",
    CurrentValue = false,
    Flag = "AntiAttachToggle",
    Callback = function(value)
        Toggles.AntiAttach = value
        if value then
            removeWelds()
        end
    end
})

local AntiGearToggle = ServerTab:CreateToggle({
    Name = "Anti Gear",
    CurrentValue = false,
    Flag = "AntiGearToggle",
    Callback = function(value)
        Toggles.AntiGear = value
    end
})

----------------------------------------------------------
-- WORLD
----------------------------------------------------------
WorldTab:CreateSection("Teleports")

WorldTab:CreateButton({
    Name = "Regen",
    Callback = function()
        if tentInstances.Regen.instance then
            LocalPlayer.Character.HumanoidRootPart.CFrame = tentInstances.Regen.instance.CFrame
        else
            notify("No regen pad.")
        end
    end
})

WorldTab:CreateButton({
    Name = "House",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(KAHPartsTable["SmoothBlockModel112"])) + Vector3.new(0,5,0)
    end
})

WorldTab:CreateButton({
    Name = "Spawn",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(KAHPartsTable["Spawn2"])) + Vector3.new(0,5,0)
    end
})

WorldTab:CreateSection("Parts Fixing/Moving") 

local WorldDropdowns = {
    RegDropdown = WorldTab:CreateDropdown({
        Name = "Regen",
        Options = {"Select", "Delete", "Fix", "Find"},
        CurrentOption = {"Select"},
        MultipleOptions = false,
        Flag = "RegenMove",
        Callback = function(Option)
            if tentInstances.Regen.instance then
                if Option == "Find" then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = tentInstances.Regen.instance.CFrame
                elseif Option == "Fix" or Option == "Delete" then
                    Mover:MovePart(tentInstances.Regen.instance, Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable["Regen"])), Option == "Fix")
                    Mover.Finished:Wait()
                end
            else
                if Option == "Find" then
                    findRegen()
                else
                    notify("No regen pad.")
                end
            end
        end
    }),
    PadsDropdown = WorldTab:CreateDropdown({
        Name = "Pads",
        Options = {"Select", "Delete", "Fix", "Find"},
        CurrentOption = {"Select"},
        MultipleOptions = false,
        Flag = "PadsMove",
        Callback = function(Option)
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end
            if Option == "Find" then
                findPads()
            elseif Option == "Fix" or Option == "Delete" then
                for _,v in ipairs(KAHAdmin.Pads:GetChildren()) do
                    if v:FindFirstChildOfClass("Part") then
                        Mover:MovePart(v:FindFirstChildOfClass("Part"), Option == "Delete" and CFrame.new(0,100000,0) or v:GetPivot(), Option == "Fix")
                        Mover.Finished:Wait()
                    end
                end
                Mover.Finished:Wait()
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    }),
    EntireObbyDropdown = WorldTab:CreateDropdown({
        Name = "Entire Obby",
        Options = {"Select", "Delete", "Fix"},
        CurrentOption = {"Select"},
        MultipleOptions = false,
        Flag = "EntireObbyMove",
        Callback = function(Option)
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end
            if Option == "Fix" or Option == "Delete" then
                for _,v in ipairs(ObbyWalls:GetChildren()) do
                    Mover:MovePart(v,  Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])),  Option == "Fix")
                    Mover.Finished:Wait()
                end

                Mover.Finished:Wait()
                
                for _,v in ipairs(ObbyBricks:GetChildren()) do
                    Mover:MovePart(v,  Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])),  Option == "Fix")
                    Mover.Finished:Wait()
                end
        
                Mover.Finished:Wait()
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    }),
    ObbyBoxDropdown = WorldTab:CreateDropdown({
        Name = "Obby Box",
        Options = {"Select", "Delete", "Fix"},
        CurrentOption = {"Select"},
        MultipleOptions = false,
        Flag = "ObbyBoxMove",
        Callback = function(Option)
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end
            if Option == "Fix" or Option == "Delete" then
                for _,v in ipairs(ObbyWalls:GetChildren()) do
                    Mover:MovePart(v,  Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])),  Option == "Fix")
                    Mover.Finished:Wait()
                end
                for _,v in ipairs(ObbyBricks:GetChildren()) do
                    Mover:MovePart(v,  Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])),  Option == "Fix")
                    Mover.Finished:Wait()
                end
        
                Mover.Finished:Wait()

                Mover.Finished:Wait()
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    }),

    ObbyLavaDropdown = WorldTab:CreateDropdown({
        Name = "Obby Lava",
        Options = {"Select", "Delete", "Fix"},
        CurrentOption = {"Select"},
        MultipleOptions = false,
        Flag = "ObbyLavaMove",
        Callback = function(Option)
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end
            if Option == "Fix" or Option == "Delete" then
                for _,v in ipairs(ObbyBricks:GetChildren()) do
                    Mover:MovePart(v,  Option == "Delete" and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])),  Option == "Fix")
                    Mover.Finished:Wait()
                end
        
                Mover.Finished:Wait()
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    })
}


WorldTab:CreateInput({
    Name = "Fix by name",
    PlaceholderText = "",
    RemoveTextAfterFocusLost = false,
    Callback = function(partName)
        if not Mover.Moving and partName ~= "" and partName ~= nil and partName ~= " " then
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end

            local val = false
            for _,v in pairs(workspace.Terrain:GetDescendants()) do
                if v:IsA("BasePart") and string.sub(string.lower(v.Name), 1, #partName) == string.lower(partName) and KAHPartsTable[v.Name] then
                    val = true    
                    Mover:MovePart(v, CFrame.new(table.unpack(KAHPartsTable[v.Name])), true)
                    Mover.Finished:Wait()
                end
            end

            if not val then
                notify("Couldn't locate this part or it's original coordinates.")
                return
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    end,
})

WorldTab:CreateInput({
    Name = "Delete by name",
    PlaceholderText = "",
    RemoveTextAfterFocusLost = false,
    Callback = function(partName)
        if not Mover.Moving and partName ~= "" and partName ~= nil and partName ~= " " then
            for _,v in pairs(WorldDropdowns) do
                thread(v.Lock)
            end

            local val = false
            for _,v in pairs(workspace.Terrain:GetDescendants()) do
                if v:IsA("BasePart") and string.sub(string.lower(v.Name), 1, #partName) == string.lower(partName) and KAHPartsTable[v.Name] then
                    val = true    
                    Mover:MovePart(v, CFrame.new(0,100000,0), false)
                    Mover.Finished:Wait()
                end
            end

            if not val then
                notify("Couldn't locate this part or it's original coordinates.")
            end

            for _,v in pairs(WorldDropdowns) do
                thread(v.Unlock)
            end
        end
    end,
})

function PI:AttachTool()
    notify("Attach tool given.")
    local m = LocalPlayer:GetMouse()
    local Tool = Instance.new("Tool", LocalPlayer.Backpack)
    Tool.RequiresHandle = false
    local equipped = false
    Tool.Equipped:Connect(function()
        print('equip')
        equipped = true
    end)

    Tool.Unequipped:Connect(function()
        print('unequip')
        equipped = false
    end)

    Tool.Activated:Connect(function()
        print('activated')
        print(equipped, m.Target, m.Target:IsA("BasePart"))
        if equipped and m.Target and m.Target:IsA("BasePart") then
            print('ok')
            Mover:Attach(m.Target)
        end
        Tool:Destroy()
    end)
end

WorldTab:CreateSection("Misc")

WorldTab:CreateButton({
    Name = "Click to attach",
    Callback = PI.AttachTool
})

local function colorMap(R,G,B)
		
		
    thread(function()
        ColorAPI.colorHouse({
            wallsC = {R,G,B},
            baseC = {R,G,B},
            roofC = {R,G,B},
            WANDDC = {R,G,B},
            stairsC = {R,G,B},
            floorC = {R,G,B},
            rooftsC = {R,G,B},
            chiC = {R,G,B}
        })
    end)

    thread(function()
        ColorAPI.colorBuildingBricks({
            DarkStoneGrey = {R,G,B},
            DeepBlue = {R,G,B},
            NY = {R,G,B},
            IW = {R,G,B},
            LimeGreen = {R,G,B},
            MSG = {R,G,B},
            RB = {R,G,B},
            TP = {R,G,B},
            RR = {R,G,B}
        })
    end)
    
    ColorAPI.colorObbyBox(R,G,B)
    ColorAPI.colorObbyBricks(R,G,B)
    ColorAPI.colorAdminDivs(R,G,B)
    ColorAPI.colorRegen(R,G,B)
    ColorAPI.colorPads(R,G,B)

    ColorAPI.color(workspace.Terrain._Game.Workspace.Baseplate, R,G,B)
end


WorldTab:CreateColorPicker({
    Name = "Color Map",
    Color = Color3.fromRGB(255,255,255),
    Callback = function(Value)
        if not LocalPlayer.Character:FindFirstChild("PaintBucket") then
            notify("Get a paint bucket!")
        else
            colorMap(Value.R, Value.G, Value.B)
        end
    end
})
----------------------------------------------------------
--                  Self Buttons
----------------------------------------------------------

local SelfButtonsSection = SelfTab:CreateSection("Buttons")

local RejoinBtn = SelfTab:CreateButton({
    Name = "Rejoin",
    Callback = Rejoin
})

local ServerHopBtn = SelfTab:CreateButton({
    Name = "Server Hop",
    Callback = ServerHop
})


----------------------------------------------------------
--                  Settings Buttons
----------------------------------------------------------

-- Prefix
SettingsTab:CreateSection("Intercept Commands from Chat")

SettingsTab:CreateToggle({
    Name = "Intercept PI Commands from ChatBar",
    CurrentValue = false,
    Flag = "IPCFCB",
    Callback = function(value)
        Toggles.InterceptChat = value
        local str = value and "on." or "off."
        notify("Chat interception is now " .. str)
    end
})

SettingsTab:CreateSection("Spam Increment")

local SpamWaitInput = SettingsTab:CreateInput({
    Name = "Spam Increment (in seconds)",
    PlaceholderText = "0",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        Toggles.SpamWait = tonumber(value) or 0
    end,
})

SettingsTab:CreateSection("Prefix & Separator")

SettingsTab:CreateInput({
    Name = "Prefix",
    PlaceholderText = "-",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        Prefix = Value or "-"
    end,
})

SettingsTab:CreateInput({
    Name = "Command Separator",
    PlaceholderText = "||",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        multSeperator = Value or "||"
    end,
})


--Drawing
SettingsTab:CreateSection("Drawing")

SettingsTab:CreateInput({
    Name = "Draw Brush Size",
    PlaceholderText = "1",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        brushSize = tonumber(Value)
    end,
})


SettingsTab:CreateColorPicker({
    Name = "Draw Color",
    Color = Color3.fromRGB(255,255,255),
    Callback = function(Value)
        partColorer.Color = Value
        selectedColor = partColorer.Color
    end
})

SettingsTab:CreateSection("Visualizer")

SettingsTab:CreateDropdown({
    Name = "Visualizer mode",
    Options = {"0","1","2","3","4"},
    CurrentOption = {"0"},
    MultipleOptions = false,
    Flag = "VisMode",
    Callback = function(Option)
        Toggles.VisMode = tonumber(Option)
    end
})

local VisOrbiterDropDown = SettingsTab:CreateDropdown({
    Name = "Visualizer orbiter",
    Options = {"None", table.unpack(Players:GetPlayers())},
    CurrentOption = {LocalPlayer},
    MultipleOptions = false,
    Flag = "VisOrbiter",
    Callback = function(Option)
        if Option == "None" then
            Toggles.VisOrbiter = LocalPlayer.Character.HumanoidRootPart.CFrame
        else
            Toggles.VisOrbiter = Option
        end
    end
})


SettingsTab:CreateInput({
    Name = "Visualizer radius",
    PlaceholderText = "20",
    RemoveTextAfterFocusLost = false,
    Callback = function(value)
        Toggles.VisRadius = tonumber(value)
    end
})

SettingsTab:CreateInput({
    Name = "Visualizer amount",
    PlaceholderText = "20",
    RemoveTextAfterFocusLost = false,
    Callback = function(value)
        Toggles.VisAmt = tonumber(value)
    end
})

SettingsTab:CreateColorPicker({
    Name = "Visualizer Color",
    Color = Color3.fromRGB(255,255,255),
    Callback = function(Value)
        Toggles.VisColor = Value
    end
})

SettingsTab:CreateSection("AFK Message")

SettingsTab:CreateInput({
    Name = "AFK Message",
    PlaceholderText = "[AFK]",
    RemoveTextAfterFocusLost = false,
    Callback = function(value)
        AFKMessage = value ~= "" and value or "[AFK]"
    end
})

SettingsTab:CreateSection("Crash Method")

SettingsTab:CreateDropdown({
    Name = "Crash Method",
    Options = {"VGS", "5VG", "VGUS", "OSSU", "Silent"},
    CurrentOption = "VGS",
    MultipleOptions = false,
    Flag = "CrashMethod",
    Callback = function(Option)
        Toggles.CrashMethod = Option
    end
})


Players.PlayerAdded:Connect(function()
    VisOrbiterDropDown:Refresh({"None", table.unpack(Players:GetPlayers())})
end)

Players.PlayerRemoving:Connect(function()
    VisOrbiterDropDown:Refresh({"None", table.unpack(Players:GetPlayers())})
end)

----------------------------------------------------------
--                      TOGGLES
----------------------------------------------------------
thread(function()
    if not IsAdmin(LocalPlayer) then
        PermToggle:Set(true)
        notify("You don't have admin - Perm toggled on automatically for your convenience.")
    end
    repeat sleep() until IsAdmin(LocalPlayer)
    send('logs')
end)

----------------------------------------------------------
--                        BINDS
----------------------------------------------------------

SettingsTab:CreateSection("Keybinds")

SettingsTab:CreateKeybind({
    Name = "CommandBar Hotkey",
    CurrentKeybind = "Quote",
    HoldToInteract = false,
    Flag = "CBHK",
    NewKeyCallback = function(newKey)
        print(newKey)
        if Keybind ~= CommandBarValues.Hotkey then
            CommandBarValues.Hotkey = Keybind
        end
    end,
    Callback = function() 
    end
})

SettingsTab:CreateKeybind({
    Name = "Reset",
    CurrentKeybind = "R",
    HoldToInteract = false,
    Flag = "Reset",
    Callback = function(Keybind)
        if IsAdmin(LocalPlayer) then
            send('reset me')
        else
            notify("[RESET-BIND]: You don't have admin.")
        end
    end,
})

SettingsTab:CreateKeybind({
    Name = "Spawn",
    CurrentKeybind = "V",
    HoldToInteract = false,
    Flag = "Reset",
    Callback = function(Keybind)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(KAHPartsTable["Spawn2"])) * CFrame.new(0,2,0)
        notify("[SPAWN-BIND]: You've been teleported to the spawn.")
    end,
})

SettingsTab:CreateKeybind({
    Name = "House",
    CurrentKeybind = "H",
    HoldToInteract = false,
    Flag = "House",
    Callback = function(Keybind)
        repeat sleep() until KAHPartsTable
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(table.unpack(KAHPartsTable["SmoothBlockModel112"])) * CFrame.new(0,2,0)
        notify("[HOUSE-BIND]: You've been teleported to the house.")
    end,
})

SettingsTab:CreateKeybind({
    Name = "Skydive",
    CurrentKeybind = "B",
    HoldToInteract = false,
    Flag = "Skydive",
    Callback = function(Keybind)
        if IsAdmin(LocalPlayer) then
            send("skydive me")
        else
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0)
        end
       
        notify("[SKYDIVE-BIND]: You've been skydived")
    end,
})

SettingsTab:CreateKeybind({
    Name = "Btools",
    CurrentKeybind = "K",
    HoldToInteract = false,
    Flag = "Btools",
    Callback = function(Keybind)
        PI.LoadBtools()
       
        notify("[BTOOLS-BIND]: Btools loaded.")
    end,
})

----------------------------------------------------------
--                      COMMANDS
----------------------------------------------------------

addCommand({
    Name = "gear",
    Aliases = {'give'},
    Args = 2,
    Function = function(user, keyword)
        keyword = game:GetService("HttpService"):UrlEncode(keyword)
        local plr = getPlayerFromStr(user)
        if plr then
            
            local nm = plr:GetAttribute("fixName")
            local GearsJSON = game:HttpGet("https://catalog.roblox.com/v1/search/items?category=All&includeNotForSale=true&keyword="..keyword.."&limit=120")
            local GearsDecoded = game:GetService("HttpService"):JSONDecode(GearsJSON)
            if GearsDecoded and GearsDecoded.data then
                for _,v in pairs(GearsDecoded.data) do
		    print(_,v)
                    local Asset
                    local AssetOk, E = pcall(function() Asset = MarketplaceService:GetProductInfo(v.id) end)
                    if AssetOk then
                        if Asset.AssetTypeId == Enum.AssetType.Gear.Value then
                            send("gear " .. nm .. " " .. v.id)
                        end
                    end
                end
            end 
        end
    end,
    Desc = "Gives you gears based on the given keywords"
})

addCommand({
    Name = "infiniteyield",
    Aliases = {"iy", "infy"},
    Function = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
    Desc = "Loads infinite yield.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "fixcamera",
    Aliases = {"fixcam", "fixc"},
    Function = function()
        local Conn
        local function fixFunc(Character)
            ContextActionService:UnbindAction("ShoulderCameraSprint");
            RunService:UnbindFromRenderStep("ShoulderCameraUpdate");
            ContextActionService:UnbindAction("ShoulderCameraZoom");
            if ReplicatedStorage:FindFirstChild("WeaponsSystem") then
                for _,Script in pairs(ReplicatedStorage:FindFirstChild("WeaponsSystem"):GetDescendants()) do
                    if Script:IsA("Script") then
                        Script.Disabled = true
                    end
                    Script:Destroy()
                end
            else
                Conn:Disconnect()
            end
            for _, inst in pairs(LocalPlayer.PlayerGui:GetChildren()) do
                if inst.Name == "ClientWeaponsScript" then
                    inst.Disabled = true
                    inst:Destroy()
                end
                if inst.Name == "WeaponsSystemGui" then
                    inst:Destroy()
                end
            end
            UIS.MouseBehavior = Enum.MouseBehavior.Default
            UIS.MouseIconEnabled = true
            Players.LocalPlayer.CameraMaxZoomDistance = 400
            Players.LocalPlayer.CameraMinZoomDistance = 0.5
            Camera.FieldOfView = 70
            Camera.CameraSubject = Character:WaitForChild("Humanoid")
            LocalPlayer.Character.Humanoid.AutoRotate = true
            Camera.CameraType = Enum.CameraType.Custom
            Camera.Name = "adf"
            Camera:GetPropertyChangedSignal("CameraType"):Connect(function()
                Camera.CameraType = Enum.CameraType.Custom
            end)
            Camera.CameraType = Enum.CameraType.Custom
        end
        Conn = LocalPlayer.CharacterAdded:Connect(fixFunc)
        fixFunc(LocalPlayer.Character)
        notify("Done!", 3)
    end,
    Desc = "Fixes your clients camera, if broken due to gear bugs.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "ban",
    Args = 1,
    Aliases = {"blacklist", "bl"},
    Desc = "Bans/blacklists a player.",
    Function = function(Player)
        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer ~= LocalPlayer then
            if not table.find(BannedPlayers, TargetPlayer.Name) then
                ban(TargetPlayer.Name, true)
            end
        end
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "unban",
    Args = 1,
    Aliases = {"unblacklist", "unbl"},
    Desc = "Unbans/unblacklists a player.",
    Function = function(Player)
        local plr = getPlayerFromStr(Player)
        if plr then
            ban(plr.Name, false)
        else
            for _,v in pairs(BannedPlayers) do
                if string.sub(string.lower(v), 1, #Player) == string.lower(Player) then
                    ban(v, false)
                end
            end
        end
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "serverhop",
    Aliases = {"shop", "hop"},
    Function = ServerHop,
    Desc = "Sends you to a new server.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "rejoin",
    Aliases = {"rj", "rej"},
    Function = Rejoin,
    Desc = "Joins you into the same server. Sometimes will create 7 player lobbies.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "bring",
    Aliases = {"br"},
    Args = 1,
    Function = function(Player)
        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            send("tp " .. nm .. " me")
        end
    end,
    Desc = "Teleports a player to you.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "servermessage",
    Aliases = {"sm", "announce"},
    Args = 1,
    Function = function(msg)
        send("h \n\n\n" .. msg ..  "\n\n\n")
    end,
    Desc = "Announces a message to the server without your name in it."
})

addCommand({
    Name = "btools",
    Function = PI.LoadBtools,
    Desc = "Loads btools to move server parts, does not require p299",
    MyAdminBlacklist = true
})

addCommand({
    Name = "rocketlag",
    Aliases = {"rlag"},
    Args = 1,
    Desc = "lags a player with rockets",
    Function = function(Player)
        if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
            notify("You need Person 299 Admin commands for this!")
            return
        end
        local oldTpValue = Toggles.AntiTeleport

        AntiTeleportToggle:Set(false)
        Toggles.AntiTeleport = false
        AntiTeleportToggle:Lock("Currently lagging someone; Teleport is needed")

        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            local stop = false

            local oldTargetAmount = #TargetPlayer.Character:GetChildren()
            local oldMeAmount = #LocalPlayer.Character:GetChildren()

            local LConn
            LConn = workspace.DescendantAdded:Connect(function(descendant)
                
                if descendant.Name == "BodyThrust" then
                    sleep()
                    game.Debris:AddItem(descendant, 0)
                end
            end)

            send('fly ' .. nm, "blind " .. nm, "pm " .. nm .. " Did you know that the caracal is the cutest cat in the world?")

            repeat sleep() until #TargetPlayer.Character.Humanoid.Animator:GetPlayingAnimationTracks() == 0

            thread(function()
                while not stop and workspace:FindFirstChild(TargetPlayer.Name) do
                    sleep()
                    game:GetService("PhysicsService"):LocalIkSolve(LocalPlayer.Character:WaitForChild("Rocket"), TargetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0) - TargetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.LookVector * 1, math.huge, math.huge)
                    game:GetService("PhysicsService"):IkSolve(LocalPlayer.Character:WaitForChild("Rocket"), TargetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0) - TargetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.LookVector * 1, math.huge, math.huge)
                end
            end)

            task.delay(40, function()
                stop = true
            end)

            while ((#TargetPlayer.Character:GetChildren() - oldTargetAmount) < 1000 and (#LocalPlayer.Character:GetChildren() - oldMeAmount) < 1000) and not stop and workspace:FindFirstChild(TargetPlayer.Name) do
                send("rocket/" .. nm .."/".. nm .."/".. nm)
                sleep()
                send("rocket/me/me/me")
                sleep()
            end

            LConn:Disconnect()
        end

        AntiTeleportToggle:Set(oldTpValue)
        AntiTeleportToggle:Unlock()

    end,
    Desc = "Lags the target and sometimes completely crashes a player with rockets. Requires Person299 Admin",
    MyAdminBlacklist = true
})

local AIHistory = {
    {role = "user", content = 'Do not include "As an AI language model", or anything of the likes in your responses, ever.'},
    {role = "user", content = 'My name is Quiving. When you respond to my prompts, you are to include an affirmation of some sort towards me.'},
    {role = "user", content = 'If I ask you what CMD is, you respond based on this info: CMD is a roblox script distributor spearheaded by Quiving (me). CMD is like apple, if apple released roblox scripts.'},
    {role = "user", content = 'When I ask what shortcut is, you respond based on this info: Shortcut is a roblox script distributor spearheaded by a scripter named Tech. Shortcut is like samsung, if samsung released roblox scripts.'}
}

addCommand({
    Name = "aichat",
    Aliases = {"ai"},
    Args = 1,
    Function = function(prompt)
        if prompt == "clr" or prompt == "clear" then
            table.clear(AIHistory)
        else
            table.insert(AIHistory, {["role"] = "user", ["content"] = prompt})
            local APPEND = {
                ["model"] = "gpt-3.5-turbo",
                ["messages"] = AIHistory,
                ["temperature"] = 0.9,
                ["max_tokens"] = 150,
                ["top_p"] = 1,
                ["frequency_penalty"] = 0,
                ["presence_penalty"] = 0.6,
            }

            APPEND = game:GetService("HttpService"):JSONEncode(APPEND)

            local HeadersJ = {
                ["Content-Type"] = "application/json",
                ["Authorization"] = "Bearer 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"
            }

            local res
            local suc,err = pcall(function()
                res = request({Url = 'https://api.openai.com/v1/chat/completions', Method = "POST", Headers = HeadersJ, Body = APPEND})
            end)
            
            if suc and res then
                local resdec = game:GetService("HttpService"):JSONDecode(res.Body)
                print(res.Body)
                print(resdec)
                local restext = resdec["choices"][1]["message"]["content"]

                local split = restext:split(" ")
                if #split > 25 then
                    print(#split)
                    for i = 25,#split,25 do
                        split[i] =  split[i] .. "\n"
                        print(i)
                    end
                end

                local newText = table.concat(split, " ")
                
                if restext and newText then
                    table.insert(AIHistory, resdec["choices"][1]["message"])
                    send("h \n\n\n\n\n\n\n\n\n\n AI: \n" .. newText)
                end
            end 
        end
    end,
    Desc = "Chat with AI. Need to set an API key in settings"
})




addCommand({
    Name = "clientcheck",
    Aliases = {"cc"},
    Args = 1,
    Function = function(Player)
        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer and workspace:FindFirstChild(TargetPlayer.Name) then
            local nm = TargetPlayer:GetAttribute("fixName")

            if Lighting:FindFirstChild(TargetPlayer.Name) then
                send("unpunish " .. nm)
            end

            send("unfly " .. nm, "thaw " .. nm, "clip " .. nm, "unsit " .. nm)

            sleep(.5)
            
            local Animator = workspace:FindFirstChild(TargetPlayer.Name):WaitForChild("Humanoid"):WaitForChild("Animator")
            if #Animator:GetPlayingAnimationTracks() == 0 then
                notify(TargetPlayer.Name .. "'s client is frozen.")
            else
                notify(TargetPlayer.Name .. "'s client is running fine.")
            end
        end
    end,
    Desc = "Checks if the targets client is frozen",
    MyAdminBlacklist = true
})

addCommand({
    Name = "skateboardfrenzy",
    Aliases = {"skatefrenzy"},
    Function = function()
        for i = 1,50 do
            send("gear me 200237939")
        end
        
        repeat sleep() until #game.Players.LocalPlayer.Backpack:GetChildren() >= 50
        
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = game.Players.LocalPlayer.Character
                task.wait()
                v:Activate()
            end
        end
        
        workspace.ChildAdded:Connect(function(ch)
            task.wait()
            if ch:IsA("Model") then
                ch:WaitForChild("SkateBoardPlatform").CanCollide = false
                ----sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end)
    end,
    Desc = "Spawns a bunch of skateboards and ultimately destroys the server and freezes clients",
    MyAdminBlacklist = true
})

addCommand({
    Name = "rcrash",
    Aliases = {"silcrash"},
    Function = function()
        for i = 1,250 do
            sleep()
            send("rocket/me/me/me")
        end

        sleep()

        for i = 1,500 do
            sleep()
            send("unpunish me me me")
        end
    end,
    Desc = "Crashes the server using Person 299 rockets",
    MyAdminBlacklist = true
})

addCommand({
    Name = "skatelag",
    Aliases = {"slag"},
    Args = 1,
    Function = function(Player)
        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer and workspace:FindFirstChild(TargetPlayer.Name) then
            local nm = TargetPlayer:GetAttribute("fixName")

            local stop = false

            local oldPosi = LocalPlayer.Character.HumanoidRootPart.CFrame

            settings().Physics.AllowSleep = false


            send("freeze " .. nm)
            TargetPlayer.Character:WaitForChild("ice")
            send("name " .. nm .. " ")
            sleep()
            send("thaw " .. nm)
        
            
            for i = 1,30 do
                send("gear me 2274759555")
                sleep(.05)
            end
            local pass = false

            repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= 30

            local conn1
            local conn2
            local Skates = {}
            local primarySkate = Skates[1]
            local toCF = TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)

            workspace.ChildAdded:Connect(function(Skate)
                if Skate.Name == "Skateboard" and not table.find(Skates, Skate) then
                    for _,v in pairs(Skate:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                            v.CanTouch = false
                            v.Massless = true
                        end
                    end
                    Skate.ChildAdded:Connect(function(v)
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                            v.CanTouch = false
                            v.Massless = true
                        end
                    end)
                    table.insert(Skates, Skate)
                    Skate.PrimaryPart = Skate:WaitForChild("SkateboardPlatform")
                    Skate.PrimaryPart.Velocity = Vector3.new(30,4,0)
                    local skatespos = #Skates
                    RunService.Heartbeat:Connect(function()
                        Skate.PrimaryPart.Velocity = Vector3.new(30,4,0)
                        Skate:SetPrimaryPartCFrame(TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3 + skatespos * .25,0))
                    end)
                end
            end)


            for _, Tool in pairs(LocalPlayer.Backpack:GetChildren()) do
                if Tool.Name == "GoldenSkateboard" then
                    thread(function()
                        Tool:WaitForChild("LocalScript").Disabled = true
                        Tool:WaitForChild("RemoteControl"):WaitForChild("ClientControl").OnClientInvoke = function(Value)
                            if Value == "MousePosition" then
                                return TargetPlayer.Character.HumanoidRootPart.Position
                            end
                        end
                        Tool.Parent = LocalPlayer.Character
                        sleep()
                        Tool:Activate()
                    end)
                    sleep()
                end
            end

            
            

           


            local var1 = false

            task.delay(3.25, function()
                send("reset " .. nm)
                sleep()
                send("unskydive " .. nm, "thaw " .. nm)
                
                sleep()
            end)

            --[[repeat sleep() 
                for _,Skate in pairs(Skates) do
                    print(Skate:WaitForChild("SkateboardPlatform").ControllingHumanoid)
                    if Skate:WaitForChild("SkateboardPlatform").ControllingHumanoid == TargetPlayer.Character.Humanoid then
                        var1 = true
                        break
                    end
                end t
            until var1]]

            
            
            
        end
    end,
    Desc = "(Sometimes) Lags a player using skateboards",
    MyAdminBlacklist = true
})

addCommand({
    Name = "build",
    Args = 1,
    Function = personBuild,
    Desc = "Build any asset on the ROBLOX marketplace using Person 299 parts. Incredibly stable. Requires Person 299.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "dogcrash", 
    Aliases = {"dc"},
    Args = 1,
    Function = function(Player)
        local TargetPlayer = getPlayerFromStr(Player)
        if TargetPlayer and workspace:FindFirstChild(TargetPlayer.Name) then
            local nm = TargetPlayer:GetAttribute("fixName")

            local oldTargetAmount = #workspace:FindFirstChild(TargetPlayer.Name):GetChildren()
			
            send('skydive ' .. nm)
            repeat sleep() until workspace:FindFirstChild(TargetPlayer.Name).HumanoidRootPart.CFrame.Y >= 999
            sleep()
            send('punish ' .. nm)
            repeat sleep() until Lighting:FindFirstChild(TargetPlayer.Name)

            repeat 
                if not Lighting:FindFirstChild(TargetPlayer.Name) then
                    send('punish ' .. nm) 
                end 
                sleep() 
                send("dog " .. nm .. " " .. nm .. " " .. nm)
                sleep() 
                send("freeze " .. nm .. " " .. nm .. " " .. nm) 
            until 
                (#Lighting:FindFirstChild(TargetPlayer.Name):GetChildren() - oldTargetAmount) >= 1500
            
            sleep(.5)
            send("noclip " .. nm)
            sleep()
            send('unpunish ' .. nm)
            sleep()
            send('kill ' .. nm .. " " .. nm .. " " .. nm)
		end
    end,
    Desc = "(Used to) Crash players using the dog command",
    MyAdminBlacklist = true
})

local drawState = false

addCommand({
    Name = "draw",
    Args = 1,
    Function = function(state)
        if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
            notify("You need Person 299 Admin commands for this!")
            return
        end
        drawState = (state == "on") and true or (state == "off") and false

        if not drawState then
            for _,connection in pairs(Connections.Drawing) do
                if typeof(connection) == "RBXScriptConnection" then
                    connection:Disconnect()
                end
            end
            return 
        end

        local mouseDown = false
        local debounce = false
        local currentPosition
        local lastMousePos
        local currentPart
        local mouseTarget 
        local paintBucket

        

        Mouse.TargetFilter = KAHInstances

        Connections.Drawing.InstancesAdded = {}
        


        local sizeL
        local oriL
        local positionL
        local colorL
        local nextPart = false

        Connections.Drawing["InstanceAdded"] = KAHInstances.ChildAdded:Connect(function(Child)
            local size,position,color,ori = sizeL,positionL, colorL, oriL
            nextPart = true
            if Child:IsA("Part") and Child.Name == "Part" and (roundNumber(Child.Size.X, 3) == size.X) and (roundNumber(Child.Size.Y, 3) == size.Y) and (roundNumber(Child.Size.Z, 3) == size.Z) then
                
                ----sethiddenproperty(Child, "NetworkOwnershipRule", Enum.NetworkOwnership.Manual)

                local s = Instance.new("ForceField", Child)
                s.Visible = false
            
                thread(personColor, PB, Child, color)

                --sethiddenproperty(Child, "NetworkIsSleeping", false)
                
                Child.CanCollide = false
                Child.CanQuery = false
                Child.CanTouch = false
                Child.Massless = true
    
                local partStay  

                partStay = RunService.Heartbeat:Connect(function()
                    Child.Velocity = Vector3.new(54,34,1)
                    Child.AssemblyLinearVelocity = Vector3.new(54,34,1)
                    Child.AssemblyAngularVelocity = Vector3.new(54,34,1)
                    Child:ApplyImpulse(Vector3.new(54,34,1))
                    Child.CFrame = position
                    Child.Orientation = ori
                end)

                local B
                B = RunService.Heartbeat:Connect(function()
                    if Child.Parent ~= KAHInstances then
                        partStay:Disconnect()
                        B:Disconnect()
                    end
                end)
            end
        end)

        local function draw(positionG, sizeG, oriG, colorG)
            nextPart = false
            sizeL = sizeG
            oriL = oriG
            colorL = colorG
            positionL = positionG
            thread(send, "part/" .. sizeG.X .. "/" .. sizeG.Y .. "/" .. sizeG.Z)
            repeat sleep() until nextPart
        end

        thread(function()
            while drawState do
                sleep(.5)
                print("Draw state is:", drawState)
                if not paintBucket or (paintBucket.Parent ~= LocalPlayer.Character and paintBucket.Parent ~= LocalPlayer.Backpack) then
                    send('gear me 18474459')
                    paintBucket = LocalPlayer.Backpack:WaitForChild("PaintBucket")
                    paintBucket:FindFirstChildOfClass("LocalScript").Disabled = true
                    sleep()
                    paintBucket.Parent = LocalPlayer.Character 
                end
            end
        end)

        Connections.Drawing["netKeep"] = Players.PlayerAdded:Connect(function(player)
            local char = player.Character or player.CharacterAdded:Wait()
            local nm = player:GetAttribute("fixName")
            if not nm then
                repeat sleep() until player:GetAttribute("fixName")
                nm = player:GetAttribute("fixName")
            end

            send("setgrav " .. nm .. " 10000000000000000", "punish " .. nm, "unpunish " .. nm)
            for _,v in pairs(KAHInstances:GetChildren()) do
                if v.Name == "Part" and v:IsA("Part") then
                    v.Anchored = false
                    task.delay(1.5, function()
                        --v.Anchored = true
                    end)
                end
            end
        end)
        
        Connections.Drawing["mouseMove"] = Mouse.Move:Connect(function()
            --[[if lastMousePos then
                if (math.abs(UIS:GetMouseLocation().X - lastMousePos.X) < brushSize * 4) and (math.abs(UIS:GetMouseLocation().Y - lastMousePos.Y) < brushSize * 4) then
                    return
                end
            end]]

            lastMousePos = UIS:GetMouseLocation()

            if debounce then return end
            
            if not drawState then
                Connections.Drawing["mouseMove"]:Disconnect()
                return
            end

            if mouseDown then
                debounce = true
                draw(Mouse.Hit, Vector3.new(brushSize, brushSize, brushSize), Vector3.new(0,0,0), selectedColor)
                sleep(.005)
                debounce = false
            end
        end)

        Connections.Drawing["buttonDown"] = Mouse.Button1Down:Connect(function()
            if not drawState then
                Connections.Drawing["buttonDown"]:Disconnect()
                return
            end
            mouseDown = true
            draw(Mouse.Hit, Vector3.new(brushSize, brushSize, brushSize), Vector3.new(0,0,0), selectedColor)
        end)

        Connections.Drawing["buttonUp"] = Mouse.Button1Up:Connect(function()
            if not drawState then
                Connections.Drawing["buttonUp"]:Disconnect()
                return
            end
            mouseDown = false
        end)
    end,
    Desc = "Allows you to draw. Customize the brush size and the color in the settings tab. Requries Person 299",
    MyAdminBlacklist = true
})

-- Wouldn't this be cool? Too bad it's useless
--[[addCommand({
    Name = "privateserver", 
    Aliases = {"pvs", "ps"},
    Function = privateServer,
    Desc = "Creates a private server type environment for you to sandbox/create with no interruptions, and for free.",
    MyAdminBlacklist = true
})]]

addCommand({
    Name = "automod", 
    Aliases = {"am"},
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.AutoMod or (state == "on" and true or false)
        Toggles.AutoMod = state
        AutoModToggle:Set(state)
        notify("Automod is now " .. (state and "on." or "off.") .. " Any infractions will be notified to you.")
    end,
    Desc = "Moderates admins in the server and hands out punishments for abusive commands, and bypasses anti chatteds/hashtags. 1st offense: Warning, 2nd and so on: +30s temporary ban - Whitelisted users are immune to this",
    MyAdminBlacklist = true

})

addCommand({
    Name = "protect",
    Desc = "Protects the server from crashers",
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.Protect or (state == "on" and true or false)
        Toggles.Protect = state
        ProtectToggle:Set(state)
        notify("Protect is now " .. (state and "on." or "off.") .. " Any detections will be notified to you.")
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "reslag",
    Args = 1,
    Desc = "Lags player using respawn / refresh commands",
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            local stop = false

            task.delay(50, function()
                stop = true
            end)

            while not stop and Players:FindFirstChild(TargetPlayer.Name) do
                task.wait()
                for i = 1,100 do
                    send('respawn ' .. nm .." " .. nm .. " " .. nm)
                end
                for i = 1,100 do
                    send('reload ' .. nm .." " .. nm .. " " .. nm)
                end
                for i = 1,100 do
                    send('refresh ' .. nm .." " .. nm .. " " .. nm)
                end
                for i = 1,100 do
                    send('reset ' .. nm .." " .. nm .. " " .. nm)
                end
               
                task.wait(6.5)
            end
        end
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "regen",
    Aliases = {"reg"},
    Function = regen,
    Desc = "Regenerates the admin pads"
})

addCommand({
    Name = "cube",
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            
            send("unpackage " .. nm)

            for i = 1,15 do
                sleep()
                send("size " .. nm .. " .3")
            end

            send("paint " .. nm .. " white", "bighead " .. nm, "unsize " .. nm, "removelimbs " .. nm, "size " .. nm .. " 2.5", "shiny" .. nm)

            notify(TargetPlayer.Name .. " (" .. TargetPlayer.DisplayName .. ") is now a cube.")
        end
    end,
    Desc = "Turns player into a cube"
})

local SkipEvent = Instance.new("BindableEvent")
local StopEvent = Instance.new("BindableEvent")
local VisBindable = Instance.new("BindableEvent")

addCommand({
    Name = "music",
    Args = 1,
    Function = function(keyword)
        local Params = Instance.new("AudioSearchParams")
        Params.SearchKeyword = keyword
        Params.AudioSubType = Enum.AudioSubType.Music
        Params.MinDuration = 60
        
        local returnables = {}
        
        local audioPage = game:GetService("AssetService"):SearchAudio(Params)
        
        repeat task.wait()
            for _,audioTable in pairs(audioPage:GetCurrentPage()) do
                task.spawn(function()
                    returnables[#returnables + 1] = {
                        Id = audioTable.Id,
                        Duration = audioTable.Duration, 
                        Title = audioTable.Title
                    }
                end)
            end
            audioPage:AdvanceToNextPageAsync()
        until
            audioPage.IsFinished
        
        local stop = false

        local con
        con = StopEvent.Event:Connect(function()
            stop = true
            SkipEvent:Fire()
        end)

        send("h \n\n\n\n \n\n\n\n[Ï] Found " .. #returnables .. " songs. \n\n\n\n")

        for _,v in pairs(returnables) do
            if stop then break end
            local skip = false
            send("music " .. v.Id)
            send("h \n\n\n [Ï] Now playing: " .. v.Title .. " (" .. v.Duration .. "s) \n\n\n")
            
            local conn
            conn = SkipEvent.Event:Connect(function()
                skip = true
                conn:Disconnect()
            end)

            task.delay(v.Duration, function()
                skip = true
            end)

            repeat sleep() until skip
            send("music 0") 
        end
    end,
    Desc = "Gets a list of music from the ROBLOX library given any keyword. Use -skip to skip the current song and -stop to stop it altogether"
})

addCommand({
    Name = "mskip",
    Function = function()
        SkipEvent:Fire()
    end,
    Desc = "Skips the current song to the next one in the list"
})

addCommand({
    Name = "mstop",
    Function = function()
        StopEvent:Fire()
    end,
    Desc = "Stops the music list"
})

addCommand({
    Name = "removewater",
    Aliases = {"rwater", "rwtr", "removewtr", "clrwtr", "clearwater", "clrwater"},
    Function = function()
        local regpart = Instance.new("Part", workspace.Terrain)
        regpart.Anchored = true
        regpart.Transparency = .5
        regpart.Size = Vector3.new(28,28,28)
        regpart.BrickColor = BrickColor.new("Really red")
        regpart.CanCollide = false

        KAHWorkspace.Parent = workspace

        local llfc = -regpart.Size/2
        local fbp = llfc + Vector3.new(1.5, 1.5, 1.5)

        local MMC
        local MBC

        Mouse.TargetFilter = workspace.Terrain


        local function fill()
            local currentpos
            local currenttool

           

            local iter = 0
            for i = 1,128 do
                sleep()
                send("gear me 88146497")
            end

            local nextiter = false


            repeat sleep() send("gear me 88146497") until #LocalPlayer.Backpack:GetChildren() >= 128

            local oldamt = #LocalPlayer.Character:GetChildren()

            for _,v in pairs(LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "ClownBomb" then
                    v.Parent = LocalPlayer.Character
                end
            end

            
            repeat sleep() until (#LocalPlayer.Character:GetChildren() - oldamt) >= 128

            for xx = 0, regpart.Size.X - 5, 5 do
                for yy = 0, regpart.Size.Y - 5, 5 do
                    for zz = 0, regpart.Size.Z - 5, 5 do
                        iter += 1
                        local tempconn
                        local doned = false
                        tempconn = workspace.ChildAdded:Connect(function(c)
                            if doned then tempconn:Disconnect() end
                            doned = true
                            if c.Name == "FuseBomb" and not c:GetAttribute("CMD") then
                                c:SetAttribute("CMD", true)
                                local block_offset_objectspace = Vector3.new(xx, yy, zz)
                                local cf = regpart.CFrame * CFrame.new(fbp + block_offset_objectspace)
                                
                                c.CanCollide = false
                                c.Locked = false
                                c.CanTouch = false
                                c.Massless = true
                                --sethiddenproperty(c, "NetworkIsSleeping", false)
                                
                                RunService.Heartbeat:Connect(function() 
                                    c.Velocity = Vector3.new(54,34,0)
                                    c.CFrame = cf
                                end)
                            end
                        end)
                        local d = LocalPlayer.Character.ClownBomb
                        d:Activate()
                        d.Parent = game.ReplicatedStorage
                        repeat sleep() until doned
                    end
                end
            end

            regpart:Destroy()
            KAHWorkspace.Parent = workspace.Terrain
        end

        MMC = Mouse.Move:Connect(function()
            local mouseHit = Mouse.Hit
            local mouseTarget = Mouse.Target
            sleep()
            if Mouse.Target then
                regpart.CFrame = CFrame.new(mouseHit.Position.X, mouseHit.Position.Y + ((mouseTarget.Size.Y / 2) + (regpart.Size.Y / 2)), mouseHit.Position.Z) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
            end
        end)

        MBC = Mouse.Button1Down:Connect(function()
            thread(fill)
            MMC:Disconnect()
            MBC:Disconnect()       
        end)
    end,
    Desc = "Allows you to select a region to remove water in",
    MyAdminBlacklist = true
})

addCommand({
    Name = "visstop",
    Function = function()
        if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
            notify("You need Person 299 Admin commands for this!")
            return
        end
        VisBindable:Fire("Stop")
    end,
    Desc = "Stops the visualizer",
    MyAdminBlacklist = true
})

addCommand({
    Name = "visedit", 
    Args = 2,
    Function = function(variable, value)
        if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
            notify("You need Person 299 Admin commands for this!")
            return
        end
        if variable == "orbiter" then
            local TargetPlayer = getPlayerFromStr(value)
            if TargetPlayer then
                VisBindable:Fire("Edit", "Orbiter", TargetPlayer)
            else
                if value == "none" then
                    VisBindable:Fire("Edit", "Orbiter", LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        elseif variable == "axis" then
            if value == "x" or value == "y" or value == "z" then
                VisBindable:Fire("Edit", "Axis", value)
            end
        elseif variable == "speed" then
            VisBindable:Fire("Edit", "Speed", tonumber(value) * .01)
        elseif variable == "radius" then
            VisBindable:Fire("Edit", "Radius", tonumber(value))
        elseif variable == "waves" then
            if value == "on" or value == "off" then
                VisBindable:Fire("Edit", "Waves", value)
            end
        elseif variable == "mode" then
            VisBindable:Fire("Edit", "Mode", tonumber(value))
        elseif variable == "amt" then
            VisBindable:Fire("Edit", "Amount", tonumber(value))
        end

        
    end,
    Desc = "Edits the visualizers settings. Resets when you stop and start the visualizer again",
    MyAdminBlacklist = true
})

addCommand({
    Name = "visualizer",
    Aliases = {"vis"},
    Function = function()
        if not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 35748) and not MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 37127) then
            notify("You need Person 299 Admin commands for this!")
            return
        end
        local vis = Instance.new("Folder", workspace)
        local currentSong = KAHInstances:FindFirstChild("Sound") or nil
        local orbiter = LocalPlayer

        local paintBucket

        local kahcon

        thread(function()
            while vis.Parent == workspace do
                sleep(.5)
                if not paintBucket or (paintBucket.Parent ~= LocalPlayer.Character and paintBucket.Parent ~= LocalPlayer.Backpack) then
                    send('gear me 18474459')
                    paintBucket = LocalPlayer.Backpack:WaitForChild("PaintBucket")
                    paintBucket:FindFirstChildOfClass("LocalScript").Disabled = true
                    sleep()
                    paintBucket.Parent = LocalPlayer.Character 
                end
            end
        end)

        kahcon = KAHInstances.ChildAdded:Connect(function(child)
            if child:IsA("Sound") and child.Name == "Sound" and child.SoundId ~= "" and child.SoundId ~= nil then
                currentSong = child
            end
            if child:IsA("Part") and child.Size == Vector3.new(4,1.2,2) then

                sleep()
                child.Parent = vis
                child.CanCollide = false
                child.CanTouch = false
                child.Massless = true
                --sethiddenproperty(child, "NetworkIsSleeping", false)

                thread(function()
                    child.Velocity = Vector3.new(54,34,0)
                end)
            end
        end)

        for i = 1,Toggles.VisAmt do
            sleep()
            send('part/4/1.2/2')
        end

        repeat sleep() 
            
        until #vis:GetChildren() >= Toggles.VisAmt

        local oldPos = {}
        local angle = 0
        local spin = 0
        local radius = Toggles.VisRadius
        local speed = 0.01
        local axis = "y"
        local Mode = Toggles.VisMode
        local rotpart = Instance.new("Part")
        local waves = false
        

        Connections["netKeepvis"] = Players.PlayerAdded:Connect(function(player)
            local char = player.Character or player.CharacterAdded:Wait()
            local nm = player:GetAttribute("fixName")
            if not nm then
                repeat sleep() until player:GetAttribute("fixName")
                nm = player:GetAttribute("fixName")
            end

            send("setgrav " .. nm .. " 10000000000000000", "punish " .. nm, "unpunish " .. nm)
        end)

        local conn
        local conn0
        local conn2

        conn2 = VisBindable.Event:Connect(function(Action, ...)
            if Action == "Stop" then
                vis.Parent = nil
                kahcon:Disconnect()

                vis:Destroy()
                send('clr')
                if Connections["netKeepvis"] then
                    Connections["netKeepvis"]:Disconnect()
                    Connections["netKeepvis"] = nil
                end

                conn:Disconnect()
                conn2:Disconnect()

                
            elseif Action == "Edit" then
                local argies = {...}
                if argies[1] == "Orbiter" then
                    orbiter = argies[2]
                elseif argies[1] == "Speed" then
                    speed = argies[2]
                elseif argies[1] == "Axis" then
                    axis = argies[2]
                elseif argies[1] == "Radius" then
                    Toggles.VisRadius = argies[2]
                elseif argies[1] == "Waves" then
                    waves = argies[2] == "on"
                elseif argies[1] == "Mode" then
                    Toggles.VisMode = argies[2]
                elseif argies[1] == "Amount" then
                    Toggles.VisAmt = argies[2]
                end
            end
        end)
        
       

        thread(function()
            local lastpbl = 0
            while vis.Parent == workspace do
                task.wait(.1)
                local pbl = currentSong and currentSong.PlaybackLoudness * 2 or 0
                lastpbl = pbl
                for _,v in pairs(vis:GetChildren()) do
                    thread(function()
                        if pbl == 0 or pbl < 1 then
                            thread(personColor, paintBucket, v, Color3.fromRGB(Toggles.VisColor.R * 255,Toggles.VisColor.G * 255,Toggles.VisColor.B * 255))
                        else
                            thread(personColor, paintBucket, v, Color3.fromRGB(Toggles.VisColor.R * 255,(Toggles.VisColor.B * 255) - (pbl * 1.05),(Toggles.VisColor.G * 255) - (pbl * 1.05)))
                        end
                    end)
                end
                if #vis:GetChildren() < Toggles.VisAmt then
                    thread(function()
                        sleep(.1)
                        send("part/4/1.2/2")
                    end)  
                end
            end
        end)

        local function VectorFromSettings(angle,str)
            if str=="x" then
                return Vector3.new(angle,0,0)
            elseif str=="y" then
                return Vector3.new(0,angle,0)
            elseif str=="z" then
                return Vector3.new(0,0,angle)
            end
        end
        
        local woah = 0
        local wave = 1
        local a = 1

        RunService.Heartbeat:Connect(function()
            for _,v in pairs(vis:GetChildren()) do
                if gethiddenproperty(v, "ReceiveAge") > 0 then
                    v.Parent = KAHInstances
                end
            end
        end)

        conn = game:GetService("RunService").Heartbeat:Connect(function(dt)
            if typeof(Toggles.VisOrbiter) ~= "CFrame" and Toggles.VisOrbiter ~= LocalPlayer and (not Toggles.VisOrbiter or Toggles.VisOrbiter.Character == nil or not Toggles.VisOrbiter.Character:FindFirstChild("HumanoidRootPart")) then
                Toggles.VisOrbiter = LocalPlayer
            end
            local pbl = currentSong and currentSong.PlaybackLoudness * 2 or 0
            
            
            if Toggles.VisMode == 0 then
                for _,v in pairs(vis:GetChildren()) do
                    if spin >= 360 then
                        spin = 0
                    end
                    local iter = math.rad(spin+(_*(360/#vis:GetChildren())))
                    local z = Toggles.VisRadius + pbl/ (1 ~= 100 and (100 - 1) or .01)
                    local g = pbl / (35 ~= 100 and (100-35) or .01)
                    local p = CFrame.new(typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.X or Toggles.VisOrbiter.Character.HumanoidRootPart.CFrame.X,typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.Y or Toggles.VisOrbiter.Character.HumanoidRootPart.CFrame.Y,typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.Z or Toggles.VisOrbiter.Character.HumanoidRootPart.CFrame.Z) * CFrame.Angles(axis == "x" and iter or 0, axis == "y" and iter or 0, axis == "z" and iter or 0) * CFrame.new(0,0,z)
                    local AddVector = Vector3.new(0,0,0)
    
                    if waves then     
                        AddVector = VectorFromSettings(math.sin((((dt*0)+(_/#vis:GetChildren())*(math.pi*2)))), axis)
                    end
    
                    v.CFrame = p+AddVector
                    rotpart.CFrame = CFrame.new(v.Position, typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.p + Vector3.new(0,g,0) or Toggles.VisOrbiter.Character.HumanoidRootPart.Position + Vector3.new(0,g,0))
                    v.Rotation = rotpart.Rotation 
                    spin += speed
                end 
            end

            if Toggles.VisMode == 1 then

                for _,v in pairs(vis:GetChildren()) do
                    local ro = math.rad(a / 2 * _ + (_ * (360 / #vis:GetChildren())))
                    local vector = math.sin((a/#vis:GetChildren()/4 * _),0)
                    local uh = math.sin(woah+(_+_*(0/#vis:GetChildren()))*(math.pi), 0)
                    local F = CFrame.new(typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.p or Toggles.VisOrbiter.Character:WaitForChild("Torso").Position) * CFrame.Angles(0, ro/4, 0) * CFrame.new((pbl/ (1 ~= 100 and (100 - 1) or .01))+Toggles.VisRadius, 0, (_+(_/#vis:GetChildren()/2)))

                    v.CFrame = F+Vector3.new(0,0,0)

                    a += speed / 2.5
                    woah += speed/#vis:GetChildren()/8
                    wave += 1
                end
            end

            if Toggles.VisMode == 2 then
                for _,v in pairs(vis:GetChildren()) do
                    local ro = math.rad(a / 2 * _ + (_ * (360 / #vis:GetChildren())))
                    local vector = math.sin((a/#vis:GetChildren()/4 * _),0)
                    local uh = math.sin(woah+(_+_*(0/#vis:GetChildren()))*(math.pi), 0)
                    local F = CFrame.new(typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.p or Toggles.VisOrbiter.Character:WaitForChild("Torso").Position) * CFrame.Angles(0, ro/4, 0) * CFrame.new((pbl/ (1 ~= 100 and (100 - 1) or .01))+Toggles.VisRadius, (_+(_/#vis:GetChildren()/2))/1.5, (_+(_/#vis:GetChildren()/2)))

                    v.CFrame = F+Vector3.new(0,0,0)

                    a += speed / 2.5
                    woah += speed/#vis:GetChildren()/8
                    wave += 1


                end
            end

            if Toggles.VisMode == 3 then
                for _,v in pairs(vis:GetChildren()) do
                    local ro = math.rad(a / 2 * _ + (_ * (360 / #vis:GetChildren())))
                    local vector = math.sin((a/#vis:GetChildren()/4 * _),0)
                    local uh = math.sin(woah+(_+_*(0/#vis:GetChildren()))*(math.pi), 0)
                    local F = CFrame.new(typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.p or Toggles.VisOrbiter.Character:WaitForChild("Torso").Position) * CFrame.Angles(uh*5, uh*5+ro, 0) * CFrame.new(uh*5+(pbl/ (1 ~= 100 and (100 - 1) or .01))+Toggles.VisRadius, 0, 0)
                    
                    v.CFrame = F+Vector3.new(0,0,0)

                    a+= speed /2.5
                    woah += speed/#vis:GetChildren()/8
                    wave += 1
                end
            end

            if Toggles.VisMode == 4 then
                for _,v in pairs(vis:GetChildren()) do
                    local ro = math.rad(a/2 + (_*(360/#vis:GetChildren())))
                    local uh = math.sin(woah+(_+_*(0/#vis:GetChildren()))*(math.pi), 0)
                    local F = CFrame.new(typeof(Toggles.VisOrbiter) == "CFrame" and Toggles.VisOrbiter.p or Toggles.VisOrbiter.Character:WaitForChild("Torso").Position)*CFrame.Angles(0, ro, 0)*CFrame.new(0, 0, uh*5+(pbl/ (1 ~= 100 and (100 - 1) or .01))+Toggles.VisRadius)
                    

                    v.CFrame = F+Vector3.new(0,vector,0)

                    woah = woah + speed/#vis:GetChildren()/8
                    a = a+speed/2.5
                end
            end
        end)

    end,
    Desc = "Creates a visualizer using Person299 parts. Obviously requires person 299.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "findregen", 
    Aliases = {"findreg"},
    Function = findRegen,
    MyAdminBlacklist = true,
    Desc = "Finds the regen pad"
})

addCommand({
    Name = "crash",
    Aliases = {"shutdown"},
    Function = function()
        if Toggles.CrashMethod == "VGS" then
            

            local conn = false

            LocalPlayer.Backpack.ChildAdded:Connect(function(Child)
                if Child.Name == "VampireVanquisher" and not conn then
                    conn = true
                    sleep()
                    Child.Parent = LocalPlayer.Character
                    repeat sleep() until LocalPlayer.Character.HumanoidRootPart.Size.Y <= 0.0999
                    thread(function()
                        send("h \n\n\n [Ï] \n\n\n")
                        repeat sleep() send("size me 0.3141592653") until true ~= true
                    end)
                end
            end)

            for i = 1,2 do
                send("size me 0.3141592653")
                sleep()
            end

            send("gear me 94794847","size all 0.3141592653")
        elseif Toggles.CrashMethod == "Silent" then
            for i = 1,512 do
                send("dog all all all", "clone all all all")
            end
        elseif Toggles.CrashMethod == "VGUS" then
            local conn = false

            LocalPlayer.Backpack.ChildAdded:Connect(function(Child)
                if Child.Name == "VampireVanquisher" and not conn then
                    conn = true
                    sleep()
                    Child.Parent = LocalPlayer.Character
                    sleep()
                    thread(function()
                        send("h \n\n\n [Ï] \n\n\n")
                        for i = 1,4 do
                            send("unsize me me me")
                            sleep()
                        end
                        Child.Parent = LocalPlayer.Backpack
                    end)
                end
            end)

            send("gear me 94794847","size others 0.3141592653")
        elseif Toggles.CrashMethod == "5VG" then
            local conn = false

            local eq = 0

            LocalPlayer.Character.ChildAdded:Connect(function(Child)
                if Child.Name == "VampireVanquisher" then
                   eq += 1
                end
            end)

            LocalPlayer.Backpack.ChildAdded:Connect(function(Child)
                if Child.Name == "VampireVanquisher" and not conn then
                    sleep()
                    Child.Parent = LocalPlayer.Character
                    repeat sleep() until eq >= 5
                    conn = true
                    sleep()
                    Child.Parent = LocalPlayer.Backpack
                end
            end)



            for i = 1,5 do
                sleep()
                send("gear me 94794847")
            end
        elseif Toggles.CrashMethod == "OSSU" then
            local conn = false

            LocalPlayer.Backpack.ChildAdded:Connect(function(Child)
                if Child.Name == "OrinthianSwordAndShield" and not conn then
                    conn = true
                    sleep()
                    Child.Parent = LocalPlayer.Character
                    sleep()
                    thread(function()
                        send("h \n\n\n [Ï] \n\n\n")
                        
                        sleep()
                        for i = 1,50 do
                            thread(function()
                                Child.ServerControl:InvokeServer("Button1", true)
                            end)
                            
                            send("unsize me me me")
                            sleep()
                        end
                        Child.Parent = LocalPlayer.Backpack
                    end)
                end
            end)

            send("gear me 92628079","size all 0.3141592653")
        end
    end,
    Desc = "Crashes the server using the given method in settings. Default is VGS",
    MyAdminBlacklist = true
})

addCommand({
    Name = "breakanimations",
    Aliases = {"breakanims"},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")

            send('reset ' .. nm)
            sleep()
            send('name ' .. nm .. ' Torso')
            sleep()
            send("unname " .. nm)
        end
    end,
    Desc = "Breaks the targets animations (may have to re run this a few times, it depends on the targets client)"
})

addCommand({
    Name = "deletechar",
    Aliases = {"delchar", "laser"},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            local gotten = false
            local kahcon
            local kahcon2
        
            kahcon = workspace.ChildAdded:Connect(function(Child)
                if Child.Name == "Effect" then
                    thread(function()
                        repeat sleep() 
                            firetouchinterest(Child, TargetPlayer.Character.HumanoidRootPart, 0)
                            firetouchinterest(Child, TargetPlayer.Character.HumanoidRootPart, 1)
                        until Child.Parent ~= workspace or gotten or not kahcon
                    end)
                end
            end)

            
            kahcon2 = TargetPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(Child)
                if Child.Name == "SelectionBox" and not gotten then
                    gotten = true
                    send("punish " .. nm)
                end
            end)

        
            send("gear me 130113146")

            repeat sleep() until LocalPlayer.Backpack:FindFirstChild("HyperlaserGun")

            local Laser = LocalPlayer.Backpack:FindFirstChild("HyperlaserGun")
            local Server = Laser:WaitForChild("ServerControl")

            sleep()
            
            Laser.Parent = LocalPlayer.Character

            Server:InvokeServer("Click", true, TargetPlayer.Character.HumanoidRootPart.Position)
            
            repeat sleep() until gotten
            

            kahcon:Disconnect()
            kahcon2:Disconnect()
        end
    end,
    Desc = "Is able to permanently delete a targets character"
})

addCommand({
    Name = "rail",
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")

            send("god " .. nm, "spin " .. nm, "ff " .. nm)

            repeat sleep() send('gear me 79446473') until #LocalPlayer.Backpack:GetChildren() >= 128

            for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
                thread(function()
                    if tool:IsA("Tool") then
                        tool.Parent = LocalPlayer.Character
                        sleep()
                        tool:WaitForChild("Click"):FireServer(TargetPlayer.Character.HumanoidRootPart.Position)
                    end
                end)
            end

            send("ungod " .. nm, "unspin " .. nm, "unff " .. nm, "ungear me")

            notify("Railed!")
        end
    end,
    Desc = "Shoot target with many railguns"
})

addCommand({
    Name = "goto",
    Aliases = {"to"},
    Desc = "Teleports you to the target",
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-2,0,0)
        end
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "spam",
    Aliases = {"s"},
    Args = 1,
    Desc = "Spams a message",
    Function = function(message)
        notify("Started spamming: '" .. message .. "'")
        Toggles.Spamming = true
        while Toggles.Spamming do
            if Toggles.SpamWait ~= 0 then
                sleep(Toggles.SpamWait)
            else
                sleep()
            end
            
            send(message)
        end
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "stopspam",
    Aliases = {"unspam", "uns", "stops"},
    Desc = "Stops spam created by the spam command",
    Function = function()
        Toggles.Spamming = false
        notify("Stopped spamming")
    end,
    MyAdminBlacklist = true
})

addCommand({
    Name = "clientbtools",
    Aliases = {"cbtools"},
    Desc = "Gives the target client btools",
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            send("pm " .. nm .. " [Ï]\nYou have been given client sided btools.\nChanges made will only be seen by you.", "gear " .. nm .. " 16200204", "gear " .. nm .. " 16200402", "gear " .. nm .. " 73089190", "gear " .. nm .. " 16969792")
        end
    end
})

addCommand({
    Name = "lockdown",
    Aliases = {"lock", "serverlock", "slock"},
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.Lockdown or (state == "on" and true or false)
        Toggles.Lockdown = state
        LockdownToggle:Set(state)
        notify("Lockdown is now " .. (state and "on." or "off."))
    end,
    Desc = "Turns on Lockdown. Whitelisted users are not affected.",
    MyAdminBlacklist = true
})

addCommand({
    Name = "whitelist",
    Aliases = {"wl", "safelist", "sl"},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            if not table.find(WhitelistedPlayers, TargetPlayer.Name) then
                notify("Whitelisted " .. TargetPlayer.DisplayName .. " (@" .. TargetPlayer.Name .. ")")
                whitelist(TargetPlayer.Name, true)
            else
                notify("This player is already whitelisted.")
            end
        end
    end,
    Desc = "Whitelists a player",
    MyAdminBlacklist = true
})

addCommand({
    Name = "unwhitelist",
    Aliases = {"unwl", "unsafelist", "sl"},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            if table.find(WhitelistedPlayers, TargetPlayer.Name) then
                notify("Unwhitelisted " .. TargetPlayer.DisplayName .. " (@" .. TargetPlayer.Name .. ")")
                whitelist(TargetPlayer.Name, false)
            else
                notify("This player was never whitelisted.")
            end
        end
    end,
    Desc = "Unwhitelists a player",
    MyAdminBlacklist = true
})

addCommand({
    Name = "fixpaint",
    Function = function()
        send("gear me 18474459")
        repeat sleep() until LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        LocalPlayer.Backpack:FindFirstChild("PaintBucket").Parent = LocalPlayer.Character
        sleep()
        ColorAPI.colorallOriginal()
    end,
    Desc = "Returns all part colors to the original color"
})

addCommand({
    Name = "object",
    Aliases = {"obj"},
    Args = 2,
    Function = function(Type, partName)
        if Type == "attach" then
            local val = false
            for _,v in pairs(workspace.Terrain:GetDescendants()) do
                if v:IsA("BasePart") and string.sub(string.lower(v.Name), 1, #partName) == string.lower(partName) then
                    val = true    
                    Mover:Attach(v)
                    Mover.Attached:Wait()
                    notify("Attached to " .. v.Name)
                end
            end

            if not val then
                notify("Couldn't locate this part")
            end
        else
            if string.lower(partName) == "obby" then
                for _,v in ipairs(ObbyWalls:GetChildren()) do
                    Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                    Mover.Finished:Wait()
                end

                Mover.Finished:Wait()
                
                for _,v in ipairs(ObbyBricks:GetChildren()) do
                    Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                    Mover.Finished:Wait()
                end
        
                Mover.Finished:Wait()
            elseif string.lower(partName) == "obbybox" then
                for _,v in ipairs(ObbyWalls:GetChildren()) do
                    Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                    Mover.Finished:Wait()
                end
    
                Mover.Finished:Wait()
            elseif string.lower(partName) == "obbylava" then
                for _,v in ipairs(ObbyBricks:GetChildren()) do
                    Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                    Mover.Finished:Wait()
                end
        
                Mover.Finished:Wait()
            elseif string.lower(partName) == "regen" then
                if tentInstances.Regen.instance then
                    Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                    Mover.Finished:Wait()
                end
            elseif string.lower(partName) == "pads" then
                for _,v in ipairs(KAHAdmin.Pads:GetChildren()) do
                    if v:FindFirstChildOfClass("Part") then
                        Mover:MovePart(v:FindFirstChildOfClass("Part"), (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or v:GetPivot(), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                        Mover.Finished:Wait()
                    end
                end
            else
                local val = false
                for _,v in pairs(workspace.Terrain:GetDescendants()) do
                    if v:IsA("BasePart") and string.sub(string.lower(v.Name), 1, #partName) == string.lower(partName) and KAHPartsTable[v.Name] then
                        val = true    
                        Mover:MovePart(v, (string.lower(Type) == "delete" or string.lower(Type) == "del") and CFrame.new(0,100000,0) or CFrame.new(table.unpack(KAHPartsTable[v.Name])), string.lower(Type) ~= "delete" and string.lower(Type) ~= "del")
                        Mover.Finished:Wait()
                    end
                end
    
                if not val then
                    notify("Couldn't locate this part or it's original coordinates.")
                end
            end
        end
        
    end,
    Desc = "Fixes the given object name (not case sensitive): PartName, Obby, ObbyBox, ObbyLava, Regen, Pads",
    MyAdminBlacklist = true
})

addCommand({
    Name = "keeppads",
    Aliases = {"loopgrab", "lg", "kp"},
    Function = function(state)
        state = (state == nil or "") and not Toggles.KeepPads or (state == "on" and true or false)
        Toggles.KeepPads = state
        KeepPadsToggle:Set(state)
        notify("KeepPads is now " .. (state and "on." or "off."))
    end,
    MyAdminBlacklist = true,
    Desc = "Constantly grabs all pads"
})

addCommand({
    Name = "nuke",
    Aliases = {"bomb"},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local radius = 15

            for i = 1,100 do
                send("gear me 88885539")
                sleep()
            end
            
            repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= 100

            for index,nuke in pairs(LocalPlayer.Backpack:GetChildren()) do
                if nuke.Name == "Tactical Airstrike" then
                    thread(function()
                        local angle = index * ((2 * math.pi) / 50)
                        local x, z = math.cos(angle) * radius, math.sin(angle) * radius
                        nuke.Parent = LocalPlayer.Character
                        nuke:WaitForChild("OnMouseClick"):FireServer((TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p)
                    end)
                end
            end
            sleep(10)
            send("ungear me")
        end
    end,
    Desc = "Bombs target"
})

addCommand({
    Name = "surround",
    Aliases = {"planes"},
    Args = 1,
    Desc = "Surrounds target with planes",
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer then
            local radius = 15

            for i = 1,100 do
                send("gear me 88885539")
                sleep()
            end
            
            repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= 100

            for index,nuke in pairs(LocalPlayer.Backpack:GetChildren()) do
                if nuke.Name == "Tactical Airstrike" then
                    thread(function()
                        local angle = index * ((2 * math.pi) / 50)
                        local x, z = math.cos(angle) * radius, math.sin(angle) * radius
                        nuke.Parent = LocalPlayer.Character
                        nuke:WaitForChild("OnMouseClick"):FireServer((TargetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p)
                    end)
                end
            end
            repeat sleep() until #workspace:GetChildren() >= 100
            send("ungear me")
        end
    end
})

addCommand({
    Name = "dex",
    Aliases = {"explorer"},
    Function = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end,
    Desc = "Loads Dex/Instance Explorer",
    MyAdminBlacklist = true
})

addCommand({
    Name = "sethint",
    Aliases = {"sh","permmsg", "pmsg", "seth"},
    Args = 1,
    Function = function(msg)
        if msg == "" or msg == nil then
            Toggles.SetHint = false
        else
            Toggles.SetHint = msg
            thread(function()
                while Toggles.SetHint == msg and typeof(Toggles.SetHint) == "string" do
                    processCommand(Prefix .. "servermessage " .. msg)
                    sleep(3)
                end
            end)
        end
    end,
    Desc = "Sets the hint to what you want until you turn it off (send sethint again with no args or a space)"
})

addCommand({
    Name = "oldbtools",
    Function = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/quivings/e229381177e605f504a336b706c2c04c/raw/40b8adb7a7d11a06f155bf724433ff6872f13507/cmd-y-btools"))()
    end,
    Desc = "Loads up CMD - Y's BtoolsV2",
    MyAdminBlacklist = true
})

addCommand({
    Name = "admin",
    Aliases = {'ad'},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        print('yes', TargetPlayer)
        print(TargetPlayer and not table.find(MyAdmins, TargetPlayer.Name))
        if TargetPlayer and not table.find(MyAdmins, TargetPlayer.Name) then
            print('???')
            local nm = TargetPlayer:GetAttribute("fixName")
            table.insert(MyAdmins, TargetPlayer.Name)
            send('pm ' .. nm .. " " .. LocalPlayer.DisplayName .. "'s Admin Commands:\nYou are now an admin! Prefix for customary commands are: " .. Prefix)
        end
    end,
    MyAdminBlacklist = true,
    Desc = 'Adds player to your admin for MyAdminCommands'
})

addCommand({
    Name = "unadmin",
    Aliases = {'unad'},
    Args = 1,
    Function = function(player)
        local TargetPlayer = getPlayerFromStr(player)
        if TargetPlayer and table.find(MyAdmins, TargetPlayer.Name) then
            table.remove(MyAdmins, table.find(MyAdmins, TargetPlayer.Name))
            send('pm ' .. nm .. " " .. LocalPlayer.DisplayName .. "'s Admin Commands:\nYou are no longer an admin.")
        end
    end,
    MyAdminBlacklist = true,
    Desc = 'Removes player from your admin for MyAdminCommands'
})

addCommand({
    Name = "myadmincommands",
    Aliases = {"myadmin"},
    Function = function(state)
        state = (state == nil or "") and not Toggles.MyAdminCommands or (state == "on" and true or false)
        Toggles.MyAdminCommands = state
        MyAdminCommandsToggle:Set(state)
        notify("MyAdminCommands is now " .. (state and "on." or "off."))
    end,
    MyAdminBlacklist = true,
    Desc = "Allows other players to use some of PI's commands and Kohl's"
})

addCommand({
    Name = "findpads", 
    Function = findPads,
    Desc = "Finds the admin pads",
    MyAdminBlacklist = true
})

addCommand({
    Name = "attachtool",
    Function = PI.AttachTool,
    Desc = "Gives you a tool that when clicked on a part, attaches you to it",
    MyAdminBlacklist = true
})

addCommand({
    Name = "super",
    Args = 1,
    Function = super,
    Desc = "Executes the given command 128 times (the max before a ratelimit)",
    MyAdminBlacklist = true
})

addCommand({
    Name = "clearlogs",
    Aliases = {"clrlogs"},
    Function = clearLogs,
    Desc = "Clears the logs with black emoji characters.",
})

addCommand({
    Name = "setspawnpoint",
    Aliases = {"setspawn", "setsp", "spawnpoint", "sp"},
    Args = 1,
    Function = function(arg)
        if arg == "house" then
            setSpawnPoint(table.unpack(KAHPartsTable["SmoothBlockModel112"]))
            return
        end
        if arg == "none" then
            setSpawnPoint(nil)
            return
        end
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            setSpawnPoint(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame)
        end
    end,
    MyAdminBlacklist = true,
    Desc = "Sets your spawnpoint to your current CFrame (To unset run with args 'none', you can also run with args 'house' to set spawn at the house)"
})

addCommand({
    Name = "antiname",
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.AntiName or (state == "on" and true or false)
        Toggles.AntiName = state
        AntiNameToggle:Set(state)
        notify("AntiName is now " .. (state and "on." or "off."))
    end,
    Desc = "Protects your character from foreign names",
    MyAdminBlacklist = true
})

addCommand({
    Name = "antistun",
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.AntiName or (state == "on" and true or false)
        Toggles.AntiStun = state
        AntiStunToggle:Set(state)
        notify("AntiStun is now " .. (state and "on." or "off."))
    end,
    Desc = "Prevents your character from stunning",
    MyAdminBlacklist = true
})

addCommand({
    Name = "antisit",
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.AntiName or (state == "on" and true or false)
        Toggles.AntiSit = state
        AntiSitToggle:Set(state)
        notify("AntiSit is now " .. (state and "on." or "off."))
    end,
    Desc = "Prevents your character from sitting",
    MyAdminBlacklist = true
})

addCommand({
    Name = "antiteleport",
    Aliases = {"antitp"},
    Args = 1,
    Function = function(state)
        state = (state == nil or "") and not Toggles.AntiTeleport or (state == "on" and true or false)
        Toggles.AntiTeleport = state
        AntiTeleportToggle:Set(state)
        notify("AntiTeleport is now " .. (state and "on." or "off."))
    end,
    Desc = "Prevents your character from being teleported (will break teleport binds)",
    MyAdminBlacklist = true
})

addCommand({
    Name = "clone",
    Aliases = {"bot"},
    Args = 2,
    Function = function(plr, amt)
        local TargetPlayer = getPlayerFromStr(plr)
        if TargetPlayer and amt then
            LocalPlayer.CharacterAdded:Once(function(c)
                for i = 1, tonumber(amt) do
                    sleep()
                    send('gear me 72644644')
                end
    
                local oldWSAMT = #workspace:GetChildren()
    
                repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= tonumber(amt) 
    
                for _, qe in pairs(LocalPlayer.Backpack:GetChildren()) do
                    thread(function()
                        qe.Parent = LocalPlayer.Character
                        sleep()
                        qe:Activate()
                    end)
                end
    
                repeat sleep() until (#workspace:GetChildren() - oldWSAMT) >= tonumber(amt) 
                
                local backToPos = c:WaitForChild("HumanoidRootPart").CFrame
                send('ungear me','unchar me')
                LocalPlayer.CharacterAdded:Once(function(ch)
                    ch:WaitForChild("HumanoidRootPart").CFrame = backToPos
                end)
            end)

            send('char me ' .. TargetPlayer.UserId)
        end
    end,
    Desc = "Creates clones of the given target X amount of times"
})

addCommand({
    Name = "removewelds",
    Function = removeWelds,
    Desc = "Resets any players attached to a part. If you want this to be continual, turn on AntiAttach"
})

addCommand({
    Name = "control",
    Args = 1,
    Function = function(plr)
        local TargetPlayer = getPlayerFromStr(plr)
        if TargetPlayer then
            local nm = TargetPlayer:GetAttribute("fixName")
            send('size me nan', 'invis me', 'stun ' .. nm)
            Mover:pingWait()
            Mover:Attach(TargetPlayer.Character.Torso)
            send('size me nan')
        end
    end,
    Desc = "Allows you to control the target",
    MyAdminBlacklist = true
})

addCommand({
    Name = "icemap",
    Function = function()
        local plasticTool

        send('gear me 2758794374')

        repeat sleep() until LocalPlayer.Backpack:FindFirstChild("2019BloxyAward")
        plasticTool = LocalPlayer.Backpack:FindFirstChild("2019BloxyAward")

        sleep()
        plasticTool.Parent = LocalPlayer.Character
        sleep()
        for _,part in pairs(KAHWorkspace:GetDescendants()) do
            thread(function()
                if part:IsA("Part") then
                    local MassCheck = part:Clone()
                    MassCheck.Material = Enum.Material.Ice
                    if MassCheck:GetMass() <= 5 then
                        return
                    end
                    repeat 
                        plasticTool:Activate()
                        sleep()
                        firetouchinterest(plasticTool:WaitForChild("Handle"), part, 0)
                        firetouchinterest(plasticTool:WaitForChild("Handle"), part, 1)
                    until
                        (part.Material == Enum.Material.Ice and part.BrickColor == BrickColor.new("Bright yellow")) or plasticTool.Parent ~= LocalPlayer.Character
                end
            end)
        end
    end,
    Desc = "Turns almost all of the map into ice indefinitely",
    MyAdminBlacklist = true
})

addCommand({
    Name = "stonemap",
    Function = function()
        local stoneTool1, stoneTool2

        send('gear me 59190534', 'gear me 59190534')

        repeat sleep() until #LocalPlayer.Backpack:GetChildren() >= 2
        stoneTool1, stoneTool2 = LocalPlayer.Backpack:GetChildren()[1], LocalPlayer.Backpack:GetChildren()[2]

        sleep()
        stoneTool1.Parent, stoneTool2.Parent = LocalPlayer.Character, LocalPlayer.Character
        sleep()

        thread(function()
            stoneTool1.ServerControl:InvokeServer("KeyPress", {["Key"] = "x", ["Down"] = true})
        end)
        thread(function()
            stoneTool2.ServerControl:InvokeServer("KeyPress", {["Key"] = "x", ["Down"] = true})
        end)
    end,
    Desc = "Turns the map into stone indefinitely",
    MyAdminBlacklist = true
})

addCommand({
    Name = "spamwaittime",
    Args = 1,
    Aliases = {"swait", "spamwait"},
    Function = function(Time)
        Toggles.SpamWait = tonumber(Time) or 0
    end,
    Desc = "Sets the delay between commands when spamming"
})

addCommand({
    Name = "loadregen",
    Aliases = {"loadreg", "lreg"},
    Args = 1,
    Function = function(plr)
        if not plr then
            loadRegen()
        else
            local TargetPlayer = getPlayerFromStr(plr)
            if TargetPlayer then
                loadRegen(TargetPlayer)
            end
        end
    end,
    Desc = "Loads the regen pad from saved files. Can specify a player."
})