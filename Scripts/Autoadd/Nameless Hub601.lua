local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()

local Window = Library:AddWindow({
	title = {"Nameless Hub", "Redwood Prison"},
	theme = {
		Accent = Color3.fromRGB(4, 175, 236)
	},
	key = Enum.KeyCode.RightControl,
	default = true
})

local Tab = Window:AddTab("Antikick", {default = true})

local Section = Tab:AddSection("Toggles", {default = true})

local toggleEnabled = false

local Toggle = Section:AddToggle("Teamlock", {flag = "Toggle_Flag", default = false}, function(bool)
    toggleEnabled = bool
end)

local function teamlockLoop()
    while true do
        if toggleEnabled then
            local args = {
                "requestTeam",
                "police"
            }
         
            workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
        end
        wait()
    end
end

coroutine.wrap(teamlockLoop)()

local toggleEnabled = true

local Toggle = Section:AddToggle("Autohostile", {flag = "Toggle_Flag", default = true}, function(bool)
    toggleEnabled = bool
end)

local function autoHostileLoop()
    while true do
        if toggleEnabled then
            local args = {
                "becomeHostile"
            }
         
            workspace:WaitForChild("resources"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
        end
        wait()
    end
end

coroutine.wrap(autoHostileLoop)()

local Section = Tab:AddSection("Buttons", {default = true})

local Button = Section:AddButton("Delete Spawn", function()
    while workspace:FindFirstChild("robber spawn") do
        workspace["robber spawn"]:Destroy()
        wait()
    end
 
    wait()
 
    while true do
        for _, player in ipairs(game.Players:GetPlayers()) do
            local character = player.Character
            if character then
                local robberSpawn = character:FindFirstChild("robber spawn")
                if robberSpawn then
                    robberSpawn:Destroy()
                end
            end
        end
        wait()
    end
end)

local Button = Section:AddButton("Antidelay", function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local RunService = game:GetService("RunService")
 
    local function checkAndFire()
        if true then 
            local ohString1 = "resetNetworkOwnership"
            local ohInstance2 = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local ohBoolean3 = false
 
            workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohBoolean3)
        end
    end
 
    RunService.Heartbeat:Connect(checkAndFire)
end)

local Button = Section:AddButton("Anticlone", function()
 while true do
        for _, player in ipairs(game.Players:GetPlayers()) do
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                for _, part in ipairs(character:GetDescendants()) do
                    if not (part:IsA("Part") and (part.Name == "HumanoidRootPart" or
                                                  part.Name == "Left Leg" or
                                                  part.Name == "Right Leg" or
                                                  part.Name == "Right Arm" or
                                                  part.Name == "Left Arm" or
                                                  part.Name == "Head" or
                                                  part.Name == "Torso")) and
                       not (part:IsA("Tool") or part:IsA("Accessory") or part:IsA("LocalScript") or
                            part:IsA("Script") or part:IsA("Shirt") or part:IsA("Pants") or
                            part:IsA("Humanoid") or part:IsA("BodyColors") or part:IsA("CharacterMesh")) then
                        local parent = part.Parent
                        local isExcluded = false
 
                        while parent do
                            if parent == character.HumanoidRootPart or
                               parent == character["Left Leg"] or
                               parent == character["Right Leg"] or
                               parent == character["Right Arm"] or
                               parent == character["Left Arm"] or
                               parent == character.Head or
                               parent == character.Torso or
                               parent:IsA("Tool") or
                               parent:IsA("Accessory") or
                               parent:IsA("LocalScript") or
                               parent:IsA("Script") or
                               parent:IsA("Shirt") or
                               parent:IsA("Pants") or
                               parent:IsA("Humanoid") or
                               parent:IsA("BodyColors") or
                               parent:IsA("CharacterMesh") then
                                isExcluded = true
                                break
                            end
                            parent = parent.Parent
                        end
 
                        if not isExcluded then
                            part:Destroy()
                        end
                    end
                end
            end
        end
        wait()
    end
end)

local Button = Section:AddButton("Antilag", function()
   while true do
    local connections = getconnections(RemoteEvent.OnClientEvent)
    for _, connection in ipairs(connections) do
        local success, result = pcall(function()
            connection:Disable()
        end)
        if not success then
            warn("Error occurred:", result)
        end
    end
    
end
end)

local Tab = Window:AddTab("Local", {default = false})
local Section = Tab:AddSection("Local Player", {default = true})

local connection

local Toggle = Section:AddToggle("Noclip", {flag = "Toggle_Flag", default = false}, function(bool)
    if bool then
        connection = game:GetService("RunService").Stepped:Connect(function()
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
    end
end)

local player = game.Players.LocalPlayer
local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")

local function handleHealthChanged(health)
    if health <= 0 then
        Toggle:Set(false)
    end
end

local function characterAdded(character)
    humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.HealthChanged:Connect(handleHealthChanged)
    end
end

player.CharacterAdded:Connect(characterAdded)
if humanoid then
    humanoid.HealthChanged:Connect(handleHealthChanged)
end

local loopEnabled = false

local Toggle = Section:AddToggle("Kill Aura", {flag = "Toggle_Flag", default = false}, function(bool)
    loopEnabled = bool
end)

local function KillAuraCoroutine()
    while true do
        if loopEnabled then
            local localPlayer = game.Players.LocalPlayer
            local localPlayerCharacter = localPlayer.Character
            local localPlayerHumanoidRootPart = localPlayerCharacter and localPlayerCharacter:FindFirstChild("HumanoidRootPart")
         
            if localPlayerHumanoidRootPart then
                local targetPosition = localPlayerHumanoidRootPart.Position
         
                local players = game.Players:GetPlayers()
                for _, otherPlayer in ipairs(players) do
                    local otherPlayerCharacter = otherPlayer.Character
                    if otherPlayerCharacter then
                        local otherPlayerHumanoidRootPart = otherPlayerCharacter:FindFirstChild("HumanoidRootPart")
                        if otherPlayerHumanoidRootPart then
                            if (otherPlayerHumanoidRootPart.Position - targetPosition).Magnitude <= 10 then
                                for x = 1, 2 do
                                    local args = {
                                        [1] = "FireOtherClients",
                                        [2] = "drawLaser",
                                        [3] = Vector3.new(0, 0, 0),
                                        [4] = Vector3.new(0, 0, 0),
                                        [5] = {
                                            ["Name"] = "Head",
                                            ["CFrame"] = otherPlayerCharacter.Head.CFrame,
                                            ["Material"] = Enum.Material.ForceField,
                                            ["Parent"] = otherPlayerCharacter,
                                            ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                                            ["Transparency"] = 1
                                        }
                                    }
                                 
                                    workspace.resources.RemoteEvent:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end
        
        wait()
    end
end

coroutine.wrap(KillAuraCoroutine)()

local Slider = Section:AddSlider("Speed", 16, 120, 16, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = false, fireondrag = true, rounded = true}, function(val, bool)
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        humanoid.WalkSpeed = val
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        local currentWalkSpeed = humanoid.WalkSpeed
        local sliderValue = Slider.Value

        if currentWalkSpeed ~= sliderValue then
            humanoid.WalkSpeed = sliderValue
        end
    end
end)


local Slider = Section:AddSlider("Jumppower", 50, 100, 50, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = false, fireondrag = true, rounded = true}, function(val, bool)
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        humanoid.JumpPower = val
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        local currentJumpPower = humanoid.JumpPower
        local sliderValue = Slider.Value

        if currentJumpPower ~= sliderValue then
            humanoid.JumpPower = sliderValue
        end
    end
end)


local Slider = Section:AddSlider("FOV", 70, 120, 70, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = false, fireondrag = true, rounded = true}, function(val, bool)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if camera then
        camera.FieldOfView = val
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if camera then
        local currentFOV = camera.FieldOfView
        local sliderValue = Slider.Value

        if currentFOV ~= sliderValue then
            camera.FieldOfView = sliderValue
        end
    end
end)

local Section = Tab:AddSection("Autoitem", {default = true})

local Toggle = Section:AddToggle("Autoitem", {flag = "ToggleFlag", default = false}, function(bool)
    local remoteEvent = game.Workspace.resources.RemoteEvent

    local function duplicateTool()
        local player = game.Players.LocalPlayer
        local backpack = player.Backpack
        local tool = backpack:FindFirstChild(toolToClone)

        if bool and not remoteEvent:FindFirstChild(toolToClone) then
            if tool then
                local clonedTool = tool:Clone()
                clonedTool.Parent = remoteEvent
            end
        end
    end

    local function removeTools()
        if not bool then
            for _, child in ipairs(remoteEvent:GetChildren()) do
                child:Destroy()
            end
        end
    end

    local function addToolOnCharacterAdded(character)
        if bool and not game.Players.LocalPlayer.Character:FindFirstChild(toolToClone) then
            duplicateTool()
        end
    end

    local function moveToolToBackpackOnCharacterRemoving(character)
        local tool = remoteEvent:FindFirstChild(toolToClone)
        if tool then
            tool:Clone().Parent = game.Players.LocalPlayer.Backpack
            tool:Destroy()
        end
    end

    game.Players.LocalPlayer.CharacterAdded:Connect(addToolOnCharacterAdded)
    game.Players.LocalPlayer.CharacterRemoving:Connect(moveToolToBackpackOnCharacterRemoving)

    if bool then
        duplicateTool()
        game.Players.LocalPlayer.CharacterAdded:Connect(addToolOnCharacterAdded)
    else
        removeTools()
    end
end)

local Dropdown = Section:AddDropdown("Items", {"Taser", "Handcuffs", "Beretta M9", "M16", "SPAS-12", "M98B", "M60", "UMP-45", "M14", "ACR", "Revolver", "Parachute", "AK47", "M1014", "S&W 638", "L86A2", "AK47-U", "Makarov", "Hammer", "Fake ID Card", "Guitar"}, {default = "M98B"}, function(selected)
    toolToClone = selected
end)

local Section = Tab:AddSection("drawLaser", {default = true})

local loopEnabled = false
local Bubble = nil
local lib = require(game:GetService("Workspace").upsilonLibrary)

local loopEnabled = false
local Bubble = nil
local lib = require(game:GetService("Workspace").upsilonLibrary)

local Toggle = Section:AddToggle("Bubble", {flag = "Toggle_Flag", default = false}, function(bool)
    loopEnabled = bool
    if bool then
        if not Bubble then
            Bubble = Instance.new("Part")
            Bubble.Name = "Bubble"
            Bubble.Parent = Workspace
            Bubble.Size = Vector3.new(20, 20, 20)
            Bubble.CastShadow = true
            Bubble.CanCollide = false
            Bubble.Anchored = true
            Bubble.Shape = Enum.PartType.Ball
            Bubble.Color = Color3.fromRGB(17, 17, 17)
            Bubble.Material = Enum.Material.ForceField
            Bubble.Transparency = 0

            function Shield(part)
                local properties = {
                    CanCollide = true,
                    Parent = Workspace,
                    Anchored = true,
                    BrickColor = part.BrickColor,
                    RotVelocity = part.RotVelocity,
                    Name = part.Name,
                    Position = part.Position,
                    Material = part.Material,
                    Shape = part.Shape,
                    Size = part.Size,
                    CastShadow = true,
                    Transparency = 1
                }

                lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
            end

            local function RespawnBubble(character)
                if Bubble then
                    Bubble:Destroy()
                    Bubble = nil
                end

                if character and loopEnabled then
                    wait(1)
                    Bubble = Instance.new("Part")
                    Bubble.Name = "Bubble"
                    Bubble.Parent = Workspace
                    Bubble.Size = Vector3.new(20, 20, 20)
                    Bubble.CastShadow = true
                    Bubble.CanCollide = false
                    Bubble.Anchored = true
                    Bubble.Shape = Enum.PartType.Ball
                    Bubble.Color = Color3.fromRGB(17, 17, 17)
                    Bubble.Material = Enum.Material.ForceField
                    Bubble.Transparency = 0

                    Bubble.CFrame = character.HumanoidRootPart.CFrame
                    Shield(Bubble)
                end
            end

            RespawnBubble(game.Players.LocalPlayer.Character)

            game.Players.LocalPlayer.CharacterAdded:Connect(RespawnBubble)

            game.Players.LocalPlayer.CharacterRemoving:Connect(function(character)
                if Bubble then
                    Bubble:Destroy()
                    Bubble = nil
                end
            end)
        end

        while loopEnabled do
            wait()
            if Bubble and game.Players.LocalPlayer.Character then
                Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                Shield(Bubble)
            end
        end
    else
        loopEnabled = false
        if Bubble then
            Bubble:Destroy()
            Bubble = nil
        end
    end
end)

local Slider = Section:AddSlider("Bubble Size", 7, 200, 20, {toggleable = false, default = false, flag = "Slider_Flag", fireontoggle = false, fireondrag = true, rounded = true}, function(val, bool)
    if Bubble then
        Bubble.Size = Vector3.new(val, val, val)
    end
end)

local Picker = Section:AddPicker("Bubble Color", {color = Color3.fromRGB(17, 17, 17)}, function(color)
    if Bubble then
        Bubble.Color = color
    end
end)

local Tab = Window:AddTab("Players", {default = false})
local Section = Tab:AddSection("Actions", {default = true})

local Box = Section:AddBox("Target Player", {fireonempty = true}, function(text)
    targetPlayer = text
end)

local Button = Section:AddButton("Bring", function()
    local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Upsilon = require(workspace:WaitForChild("upsilonLibrary"))
    local targetPlayerName = targetPlayer
    
    if targetPlayerName == "" then
        
        return
    end
    
    wait(0.5)
    
    local playerModel = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
    if playerModel then
        playerModel:Destroy()
    end
    
    wait(0.5)
    
    local resources = workspace:FindFirstChild("resources")
    if not resources or not resources:FindFirstChild("RemoteEvent") then
        
        return
    end
    
    local remoteEvent = resources.RemoteEvent
    
    local ohString2 = "reloadMe"
    remoteEvent:FireServer(ohString2)
    
    wait(0.8)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
    
    wait(0.5)
    
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer then
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetTorso = targetCharacter:FindFirstChild("Torso")
            if targetTorso then
                Upsilon.InvokeServer("giveRiotShield", targetTorso)
                
                wait(0.5)
                
                ohString2 = "reloadMe"
                remoteEvent:FireServer(ohString2)
                
                wait(0.7)
                
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
            end
        end
    end
end)

local Button = Section:AddButton("Goto", function()
    local player = game.Players:FindFirstChild(targetPlayer)
    if player then
        local character = player.Character
        if character then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootPart.CFrame
            end
        end
    end
end)

local Button = Section:AddButton("Kill", function()
    local player = game.Players:FindFirstChild(targetPlayer) 
    if player then
        for x = 1, 2 do
            local args = {
                [1] = "FireOtherClients",
                [2] = "drawLaser",
                [3] = Vector3.new(0, 0, 0),
                [4] = Vector3.new(0, 0, 0),
                [5] = {
                    ["Name"] = "Head",
                    ["CFrame"] = player.Character.Head.CFrame,
                    ["Material"] = Enum.Material.ForceField,
                    ["Parent"] = player.Character,
                    ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                    ["Transparency"] = 1
                }
            }

            workspace.resources.RemoteEvent:FireServer(unpack(args))
        end
    end
end)

local loopRunning = false

local Toggle = Section:AddToggle("Loop kill", {flag = "Toggle_Flag", default = false}, function(bool)
    loopRunning = bool

    if not loopRunning then
        return
    end

    while loopRunning do
        local player = game.Players:FindFirstChild(targetPlayer)
        if player and player.Character and player.Character:FindFirstChild("Head") then
            for x = 1, 2 do
                local args = {
                    [1] = "FireOtherClients",
                    [2] = "drawLaser",
                    [3] = Vector3.new(0, 0, 0),
                    [4] = Vector3.new(0, 0, 0),
                    [5] = {
                        ["Name"] = "Head",
                        ["CFrame"] = player.Character.Head.CFrame,
                        ["Material"] = Enum.Material.ForceField,
                        ["Parent"] = player.Character,
                        ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                        ["Transparency"] = 1
                    }
                }

                workspace.resources.RemoteEvent:FireServer(unpack(args))
            end
        end
        wait()
    end
end)

local Button = Section:AddButton("Bring all", function()
local Upsilon = require(workspace.upsilonLibrary)

local TeleportationRoutine = {}

function TeleportationRoutine:new()
    local obj = {}
    setmetatable(obj, self)
    self.__index = self

    obj.running = false 
    obj.processedPlayers = {}

    return obj
end

function TeleportationRoutine:Toggle()
    self.running = not self.running

    if self.running then
        self:Execute()
    end
end

function TeleportationRoutine:Execute()
    while self.running do
        local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        wait(0.5)

        local playerModel = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
        if playerModel then
            playerModel:Destroy()
        end

        wait(0.5)

        local ohString2 = "reloadMe"
        workspace.resources.RemoteEvent:FireServer(ohString2)

        wait(0.8)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition

        wait(0.5)

        local targetPlayer
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local playerName = player.Name
                if not self:HasProcessedPlayer(playerName) then
                    targetPlayer = player
                    self:MarkPlayerAsProcessed(playerName)
                    break
                end
            end
        end

        if targetPlayer then
            Upsilon.InvokeServer("giveRiotShield", targetPlayer.Character.Torso)

            wait(0.5)

            ohString2 = "reloadMe"
            workspace.resources.RemoteEvent:FireServer(ohString2)

            wait(0.7)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = initialPosition
        else
            
            self.running = false
        end

        wait()
    end
end

function TeleportationRoutine:HasProcessedPlayer(playerName)
    return self.processedPlayers[playerName] == true
end

function TeleportationRoutine:MarkPlayerAsProcessed(playerName)
    self.processedPlayers[playerName] = true
end

local routine = TeleportationRoutine:new()

routine:Toggle()
end)

local Button = Section:AddButton("Kill others", function()
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then  
        for x = 1, 2 do
            local args = {
                [1] = "FireOtherClients",
                [2] = "drawLaser",
                [3] = Vector3.new(0, 0, 0),
                [4] = Vector3.new(0, 0, 0),
                [5] = {
                    ["Name"] = "Head",
                    ["CFrame"] = player.Character.Head.CFrame,
                    ["Material"] = Enum.Material.ForceField,
                    ["Parent"] = player.Character,
                    ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                    ["Transparency"] = 1
                }
            }
    
            workspace.resources.RemoteEvent:FireServer(unpack(args))
        end
    end
end
end)

local enabled = false
local loopDelay = 0

local function executeCode()
    while enabled do
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                local character = player.Character
                if character:FindFirstChild("Head") then
                    for x = 1, 2 do
                        local args = {
                            [1] = "FireOtherClients",
                            [2] = "drawLaser",
                            [3] = Vector3.new(0, 0, 0),
                            [4] = Vector3.new(0, 0, 0),
                            [5] = {
                                ["Name"] = "Head",
                                ["CFrame"] = character.Head.CFrame,
                                ["Material"] = Enum.Material.ForceField,
                                ["Parent"] = character,
                                ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                                ["Transparency"] = 1
                            }
                        }

                        workspace.resources.RemoteEvent:FireServer(unpack(args))
                    end
                end
            end
        end
        wait(loopDelay)
    end
end

local Toggle = Section:AddToggle("Loop kill others", {flag = "Toggle_Flag", default = false}, function(bool)
    enabled = bool

    if enabled then
        executeCode()
    end
end)

local Tab = Window:AddTab("drawLaser", {default = false})
local Section = Tab:AddSection("Combat", {default = true})

local Button = Section:AddButton("Click Kill", function()
local lib = require(game:GetService("Workspace").upsilonLibrary)

local lib = require(game:GetService("Workspace").upsilonLibrary)

local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Kill"

local cooldown = 0.5
local lastActivated = 0

function CreateBubble(position)
    local Bubble = Instance.new("Part")
    Bubble.Parent = workspace
    Bubble.CastShadow = false
    Bubble.CanCollide = false
    Bubble.Anchored = true
    Bubble.Shape = Enum.PartType.Ball
    Bubble.BrickColor = BrickColor.new("Bright blue")
    Bubble.Material = Enum.Material.Neon
    Bubble.CFrame = CFrame.new(position)
    Bubble.Transparency = 0

    function Portal(part)
        local properties = {
            CanCollide = false,
            Parent = workspace,
            Anchored = true,
            BrickColor = part.BrickColor,
            RotVelocity = part.RotVelocity,
            Name = part.Name,
            Position = part.Position,
            CFrame = part.CFrame,
            Material = part.Material,
            Shape = part.Shape,
            Size = part.Size,
            CastShadow = false,
            Transparency = 1
        }

        lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
    end

    local function animateBubble()
        Bubble.Size = Vector3.new(15, 15, 15)
        wait(0.1)
        Bubble.Size = Vector3.new(14, 14, 14)
        wait(0.1)
        Bubble.Size = Vector3.new(13, 13, 13)
        wait(0.1)
        Bubble.Size = Vector3.new(12, 12, 12)
        wait(0.1)
        Bubble.Size = Vector3.new(11, 11, 11)
        wait(0.1)
        Bubble.Size = Vector3.new(10, 10, 10)
        wait(0.1)
        Bubble.Size = Vector3.new(9, 9, 9)
        wait(0.1)
        Bubble.Size = Vector3.new(8, 8, 8)
        wait(0.1)
        Bubble.Size = Vector3.new(7, 7, 7)
        wait(0.1)
        Bubble.Size = Vector3.new(6, 6, 6)
        wait(0.1)
        Bubble.Size = Vector3.new(5, 5, 5)
        wait(0.1)
        Bubble.Size = Vector3.new(4, 4, 4)
        wait(0.1)
        Bubble.Size = Vector3.new(3, 3, 3)
        wait(0.1)
        Bubble.Size = Vector3.new(2, 2, 2)
        wait(0.1)
        Bubble.Size = Vector3.new(1, 1, 1)
        wait(0.1)
        Bubble:Destroy()
    end

    local function teleportBubble()
        while true do
            Portal(Bubble)
            if Bubble.Size.X <= 1 then
                break
            end
            wait()
        end
    end

    spawn(teleportBubble)
    coroutine.wrap(animateBubble)()
end

function FireLaserOnPlayers(position)
    return coroutine.create(function()
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local distance = (player.Character.HumanoidRootPart.Position - position).Magnitude
                if distance <= 15 then
                    for x = 1, 2 do
                        local args = {
                            [1] = "FireOtherClients",
                            [2] = "drawLaser",
                            [3] = Vector3.new(0, 0, 0),
                            [4] = Vector3.new(0, 0, 0),
                            [5] = {
                                ["Name"] = "Head",
                                ["CFrame"] = player.Character.Head.CFrame,
                                ["Material"] = Enum.Material.ForceField,
                                ["Parent"] = player.Character,
                                ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                                ["Transparency"] = 1
                            }
                        }
                        workspace.resources.RemoteEvent:FireServer(unpack(args))
                    end
                end
            end
        end
    end)
end

local function RunFireLaserOnPlayers(position)
    local coroutineFireLaser = FireLaserOnPlayers(position)
    coroutine.resume(coroutineFireLaser)
end

tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastActivated >= cooldown then
        lastActivated = currentTime
        CreateBubble(mouse.Hit.Position)
        coroutine.wrap(RunFireLaserOnPlayers)(mouse.Hit.Position)
    end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end)

local Button = Section:AddButton("Lightsaber", function()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
local Handle = Instance.new("Part", Tool)
local Part2 = Instance.new("Part", Tool)
local HandleWeld = Instance.new("Weld", Handle)
local SwingSound = Instance.new("Sound", Handle)
local lib = require(game:GetService("Workspace").upsilonLibrary)
 
Tool.Name = "Lightsaber"
HandleWeld.C0 = CFrame.new(0, 0, 0)
HandleWeld.Part0 = Part2
HandleWeld.Part1 = Handle
Handle.Name = "Handle"
Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
Handle.Color = Color3.fromRGB(0, 0, 0)
Handle.Size = Vector3.new(0.2, 1.3, 0.19)
Handle.BottomSurface = Enum.SurfaceType.Smooth
Handle.BrickColor = BrickColor.new("Really black")
Handle.CanCollide = false
Handle.Material = Enum.Material.Neon
Handle.TopSurface = Enum.SurfaceType.Smooth
 
Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Part2.Orientation = Vector3.new(0, 90, -90)
Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
Part2.Rotation = Vector3.new(-90, 90, 0)
Part2.Color = Color3.fromRGB(196, 40, 28)
Part2.Size = Vector3.new(5, 0.2, 0.2)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new(LightsaberColor)
Part2.CanCollide = true
Part2.Material = Enum.Material.Neon
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Shape = Enum.PartType.Cylinder
 
HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15, 0, 0) * CFrame.Angles(0, 0, math.rad(90))
 
SwingSound.Volume = 1
SwingSound.SoundId = "rbxassetid://605565775"
 
function sword(part)
    local properties = {
        ["CanCollide"] = false,
        ["Parent"] = workspace,
        ["Anchored"] = true,
        ["Color"] = part.Color,
        ["CFrame"] = part.CFrame,
        ["Material"] = part.Material,
        ["Shape"] = part.Shape,
        ["Size"] = part.Size,
        ["CastShadow"] = true
    }
 
    lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
end
 
local ToolEquipped = false
local ToolActive = false
 
Tool.Equipped:Connect(function()
    if not ToolEquipped then
        ToolEquipped = true
        while wait() do
            if not ToolEquipped then
                break 
            end
            sword(Handle)
            sword(Part2)
        end
    end
end)
 
Tool.Unequipped:Connect(function()
    if ToolEquipped then
        ToolEquipped = false
    end
end)
 
Tool.Activated:Connect(function()
    if ToolEquipped and not ToolActive then
        ToolActive = true
 
        AnimationId = "218504594"
 
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://" .. AnimationId
 
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        local animation = humanoid:LoadAnimation(Anim)
        animation:Play()
        animation:AdjustSpeed(1)
 
local localPlayer = game.Players.LocalPlayer
local localPlayerCharacter = localPlayer.Character
local localPlayerHumanoidRootPart = localPlayerCharacter and localPlayerCharacter:FindFirstChild("HumanoidRootPart")
 
if localPlayerHumanoidRootPart then
    local targetPosition = localPlayerHumanoidRootPart.Position
 
    local players = game.Players:GetPlayers()
    for _, otherPlayer in ipairs(players) do
        local otherPlayerCharacter = otherPlayer.Character
        if otherPlayerCharacter then
            local otherPlayerHumanoidRootPart = otherPlayerCharacter:FindFirstChild("HumanoidRootPart")
            if otherPlayerHumanoidRootPart then
                if (otherPlayerHumanoidRootPart.Position - targetPosition).Magnitude <= 10 then
                    for x = 1, 2 do
                        local args = {
                            [1] = "FireOtherClients",
                            [2] = "drawLaser",
                            [3] = Vector3.new(0, 0, 0),
                            [4] = Vector3.new(0, 0, 0),
                            [5] = {
                                ["Name"] = "Head",
                                ["CFrame"] = otherPlayerCharacter.Head.CFrame,
                                ["Material"] = Enum.Material.ForceField,
                                ["Parent"] = otherPlayerCharacter,
                                ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                                ["Transparency"] = 1
                            }
                        }
 
                        workspace.resources.RemoteEvent:FireServer(unpack(args))
                    end
                end
            end
        end
    end
end
 
        SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
        SwingSound:Play()
        wait(0.7)
        ToolActive = false
    end
end)
end)

local Picker = Section:AddPicker("Lightsaber Color", {color = Color3.fromRGB(98, 37, 209)}, function(color)
    LightsaberColor = color
end)

local Section = Tab:AddSection("Miscellaneous", {default = true})

local Button = Section:AddButton("Blackhole", function()
local function onPlayerAdded(player)
local function CreatePermPart(part,parent) 
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end

local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(8000, 8000, 8000)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1003")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10000, 30000, 30000))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part") 
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10208.3779296875, 30000, 28818.23046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10410.423828125, 30000, 28872.369140625))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part") 
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10600, 30000, 28960.76953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10771.3447265625, 30000, 29080.74609375))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10919.2529296875, 30000, 29228.654296875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11039.23046875, 30000, 29400))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11127.630859375, 30000, 29589.576171875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11181.76953125, 30000, 29791.623046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11200, 30000, 30000))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11181.76953125, 30000, 30208.376953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part") 
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11127.630859375, 30000, 30410.423828125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(11039.23046875, 30000, 30600))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10919.2529296875, 30000, 30771.345703125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10771.3447265625, 30000, 30919.25390625))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10600, 30000, 31039.23046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10410.423828125, 30000, 31127.630859375))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10208.3779296875, 30000, 31181.76953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10000, 30000, 31200))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9791.6220703125, 30000, 31181.76953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9589.576171875, 30000, 31127.630859375))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9400, 30000, 31039.23046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9228.6552734375, 30000, 30919.25390625))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9080.7470703125, 30000, 30771.345703125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8960.76953125, 30000, 30600))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8872.369140625, 30000, 30410.423828125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8818.23046875, 30000, 30208.376953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8800, 30000, 30000))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8818.23046875, 30000, 29791.623046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8872.369140625, 30000, 29589.576171875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(8960.76953125, 30000, 29400))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9080.7470703125, 30000, 29228.654296875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
 
local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9228.6552734375, 30000, 29080.74609375))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part") 
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9400, 30000, 28960.76953125))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9589.576171875, 30000, 28872.369140625))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(9791.6220703125, 30000, 28818.23046875))
part.Transparency = 0
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(250, 250, 250)
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.Shape = Enum.PartType.Ball
part.BrickColor = BrickColor.new("1")
part.Material = Enum.Material.Neon
part.CFrame = CFrame.new(Vector3.new(10000, 30000, 28800))
part.Transparency = 0
CreatePermPart(part, game.Workspace)
end

onPlayerAdded()

game.Players.PlayerAdded:Connect(onPlayerAdded)
end)

local Button = Section:AddButton("Mars", function()
local function onPlayerAdded(player)
local function CreatePermPart(part,parent) 
    local properties = {
        ["TopSurface"] = "f", 
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Shape"] = part.Shape,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end

local part = Instance.new("Part")
part.Parent = Workspace
part.Shape = Enum.PartType.Ball 
part.Size = Vector3.new(8000, 8000, 8000) 
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.BrickColor = BrickColor.new("193") 
part.Material = Enum.Material.Sandstone
part.Transparency = 0
part.CFrame = CFrame.new(Vector3.new(27000, 18000, 20000)) 
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part")
part.Parent = Workspace
part.Shape = Enum.PartType.Block
part.Size = Vector3.new(1, 12, 1) 
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.BrickColor = BrickColor.new("194") 
part.Material = Enum.Material.Plastic
part.Transparency = 0
part.CFrame = CFrame.new(Vector3.new(27000, 19029, 20000)) 
CreatePermPart(part, game.Workspace)

local part = Instance.new("Part")
part.Parent = Workspace
part.Shape = Enum.PartType.Block
part.Size = Vector3.new(6, 3, 1) 
part.CastShadow = false
part.CanCollide = true
part.Anchored = true
part.BrickColor = BrickColor.new("1003") 
part.Material = Enum.Material.Plastic
part.Transparency = 0
part.CFrame = CFrame.new(Vector3.new(27003.5, 19033.5, 20000)) 
CreatePermPart(part,game.Workspace)
end

onPlayerAdded()

wait(0.5)

local player = game:GetService("Players").LocalPlayer
local teleportPosition = Vector3.new(27000, 19000, 20000)
 
player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)

game.Players.PlayerAdded:Connect(onPlayerAdded)
end)

local bubbleEnabled = false
local bubble

local bubbleEnabled = false
local bubble

local Toggle = Section:AddToggle("Atomic Bomb", {flag = "Toggle_Flag", default = false}, function(bool)
    bubbleEnabled = bool

    if bool then
        local lib = require(game:GetService("Workspace").upsilonLibrary)

        bubble = Instance.new("Part")
        bubble.Parent = Workspace
        bubble.CastShadow = false
        bubble.CanCollide = true
        bubble.Anchored = true
        bubble.BrickColor = BrickColor.new("Bright yellow")
        bubble.Material = Enum.Material.Neon
        bubble.Transparency = 0
        bubble.Shape = Enum.PartType.Ball

        local function Portal(part)
            local properties = {
                ["CanCollide"] = true,
                ["Parent"] = Workspace,
                ["Anchored"] = true,
                ["BrickColor"] = part.BrickColor,
                ["RotVelocity"] = part.RotVelocity,
                ["Name"] = part.Name,
                ["Position"] = part.Position,
                ["Material"] = part.Material,
                ["Shape"] = part.Shape,
                ["Size"] = part.Size,
                ["CastShadow"] = false,
                ["Transparency"] = 1
            }

            lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
        end

        local function ColorTransitionCoroutine()
            local startColor = BrickColor.new("Bright yellow")
            local intermediateColor = BrickColor.new("Bright orange")
            local endColor = BrickColor.new("Bright red")
            local transitionTime = 30
            local numColors = 100

            local startTime = tick()
            local elapsedTime = 0

            while elapsedTime < transitionTime do
                local t = elapsedTime / transitionTime
                local colorIndex = math.floor(t * (numColors - 1)) + 1
                local lerpedColor

                if colorIndex < numColors / 2 then
                    lerpedColor = startColor.Color:Lerp(intermediateColor.Color, t * 2)
                else
                    lerpedColor = intermediateColor.Color:Lerp(endColor.Color, (t - 0.5) * 2)
                end

                bubble.BrickColor = BrickColor.new(lerpedColor)

                local newSize = 2300 * t
                bubble.Size = Vector3.new(newSize, newSize, newSize)

                elapsedTime = tick() - startTime
                wait()
            end

            bubble.BrickColor = endColor
            bubble.Size = Vector3.new(2300, 2300, 2300)
        end

        local function PositionTransitionCoroutine()
            local startPosition = Vector3.new(27000, 18000, 20000)
            local endPosition = Vector3.new(-87, 4, -502)
            local transitionTime = 30

            local startTime = tick()
            local elapsedTime = 0

            while elapsedTime < transitionTime do
                local t = elapsedTime / transitionTime
                local lerpedPosition = startPosition:Lerp(endPosition, t)
                bubble.CFrame = CFrame.new(lerpedPosition)

                elapsedTime = tick() - startTime
                wait()
            end

            bubble.CFrame = CFrame.new(endPosition)
        end

        local function PortalCoroutine()
            while bubbleEnabled do
                Portal(bubble)
                wait()
            end
        end

        spawn(ColorTransitionCoroutine)
        spawn(PortalCoroutine)
        spawn(PositionTransitionCoroutine)
    else
        if bubble then
            bubble:Destroy()
            bubble = nil
        end
    end
end)

while true do
    if not bubbleEnabled then
        break
    end
    wait()
end

local toggleEnabled = false
local loopEnabled = false
local pulseFlyColor = Color3.fromRGB(13, 105, 172)

local Toggle = Section:AddToggle("Pulse Fly", {flag = "Toggle_Flag", default = false}, function(bool)
    toggleEnabled = bool
    if bool and not loopEnabled then
        loopEnabled = true
        spawn(function()
            while loopEnabled do
                local NUM_RUNS = 1

                local function runCode()
                    local lib = require(game:GetService("Workspace").upsilonLibrary)

                    local Bubble = Instance.new("Part")
                    Bubble.Size = Vector3.new(15, 15, 15)
                    Bubble.CastShadow = false
                    Bubble.CanCollide = true
                    Bubble.Anchored = true
                    Bubble.Shape = Enum.PartType.Ball
                    Bubble.BrickColor = BrickColor.new(pulseFlyColor)
                    Bubble.Material = Enum.Material.Neon
                    Bubble.Transparency = 0
                    Bubble.CFrame = CFrame.new(133, 4, -183)
                    Bubble.Parent = workspace

                    function Portal(part)
                        local properties = {
                            CanCollide = true,
                            Parent = workspace,
                            Anchored = true,
                            BrickColor = part.BrickColor,
                            RotVelocity = part.RotVelocity,
                            Name = part.Name,
                            Position = part.Position,
                            CFrame = part.CFrame,
                            Material = part.Material,
                            Shape = part.Shape,
                            Size = part.Size,
                            CastShadow = false,
                            Transparency = 1
                        }

                        lib.FireOtherClients("drawLaser", part.Position, part.Position, properties)
                    end

                    local function animateBubble()
                        local sizes = {15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1}

                        for _, size in ipairs(sizes) do
                            Bubble.Size = Vector3.new(size, size, size)
                            wait(0.1)
                        end

                        Bubble:Destroy()
                    end 

                    local function teleportBubble()
                        local character = game.Players.LocalPlayer.Character
                        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

                        if humanoidRootPart then
                            Bubble.CFrame = CFrame.new(humanoidRootPart.Position.X, humanoidRootPart.Position.Y - (humanoidRootPart.Size.Y / 2) - 9.45, humanoidRootPart.Position.Z)
                        end

                        while Bubble.Size.X > 1 do
                            Portal(Bubble)
                            wait(0.0000000000001)
                        end
                    end

                    coroutine.wrap(animateBubble)()
                    teleportBubble()
                end

                for _ = 1, NUM_RUNS do
                    coroutine.wrap(runCode)()
                    wait(0.1)
                end

                if not toggleEnabled then
                    loopEnabled = false
                end
            end
        end)
    elseif not bool then
        loopEnabled = false
    end
end)

local Picker = Section:AddPicker("Pulse Fly Color", {color = Color3.fromRGB(13, 105, 172)}, function(color)
    pulseFlyColor = color
end)

local Tab = Window:AddTab("Extra", {default = false})

local Section = Tab:AddSection("Refresh", {default = true})

local Button = Section:AddButton("Refresh", function()
	local ohString2 = "reloadMe"
	workspace.resources.RemoteEvent:FireServer(ohString2)
end)

local Section = Tab:AddSection("Antis", {default = true})

local Button = Section:AddButton("Antivoid", function()
local player = game.Players.LocalPlayer
local minYCoordinate = -28
local targetYCoordinate = 5 
local teleportOffset = Vector3.new(0, 1, 0) 

local function teleportToNewPosition(character, position)
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local currentCFrame = humanoidRootPart.CFrame
        local newCFrame = CFrame.new(position)
        newCFrame = newCFrame * CFrame.Angles(0, currentCFrame.Y - currentCFrame.Y%1, 0)
        humanoidRootPart.CFrame = newCFrame
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
end

local function checkYCoordinate()
    local character = player.Character
    if character and character:IsDescendantOf(workspace) then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local currentPosition = humanoidRootPart.Position
            if currentPosition.Y < minYCoordinate then
                local newPosition = Vector3.new(currentPosition.X, targetYCoordinate, currentPosition.Z) + teleportOffset
                teleportToNewPosition(character, newPosition)
            end
        end
    end
end

local function characterAdded(character)
    checkYCoordinate()
end

local function heartbeat()
    checkYCoordinate()
end

player.CharacterAdded:Connect(characterAdded)
game:GetService("RunService").Heartbeat:Connect(heartbeat)
end)

local Button = Section:AddButton("Antidrawlaser", function()
local RunService = game:GetService("RunService") 
local RemoteEvent = workspace.resources:FindFirstChild("RemoteEvent")

local function DisableConnection()
    local connection = getconnections(RemoteEvent.OnClientEvent)[1]
    if connection then
        connection:Disable()
    end
end

RunService.Heartbeat:Connect(function()
    DisableConnection()
end)
end)

local Button = Section:AddButton("Delete Keycards", function()
local Players = game:GetService("Players")
local toolName = "Fake ID Card"

local function onDelete(v)
    if v:IsA("Tool") and v.Name == toolName and not v:IsDescendantOf(Players.LocalPlayer) then
        v:Destroy()
    end
end

for _,v in ipairs(game.Workspace:GetDescendants()) do
    onDelete(v)
end

game.Workspace.DescendantAdded:Connect(onDelete)
end)

local Tab = Window:AddTab("Scripts", {default = false})
local Section = Tab:AddSection("Scripts", {default = true})

local Button = Section:AddButton("Owl Hub", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LaeraLuzy/SyctheHubV1/main/script.lua",true))();
end)

local Button = Section:AddButton("Infinite Yield", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local Button = Section:AddButton("D00M Gui", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/8F8Ep6th"))()
end)

local Button = Section:AddButton("Chat Bypass", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols.
    Keybind = "f", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Must be lowercase
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})
end)

local Tab = Window:AddTab("Op Stuff", {default = false})
local Section = Tab:AddSection("Kick", {default = true})

local Box = Section:AddBox("Target Player", {fireonempty = true}, function(text)
    targetPlayer = text
end)

local Button = Section:AddButton("Kick", function()
    local Upsilon = require(workspace.upsilonLibrary)
    local playerName = targetPlayer
    local player = game.Players:FindFirstChild(playerName)

    if player then
        Upsilon.InvokeServer("giveRiotShield", player.Character.HumanoidRootPart)

        local function giveRiotShield()
            workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "RiotShield" then
                    game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
                    v:Destroy()
                end
            end
        end

        giveRiotShield()

        wait()

        while player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 do
            for x = 1, 2 do
                local args = {
                    [1] = "FireOtherClients",
                    [2] = "drawLaser",
                    [3] = Vector3.new(0, 0, 0),
                    [4] = Vector3.new(0, 0, 0),
                    [5] = {
                        ["Name"] = "Head",
                        ["CFrame"] = player.Character.Head.CFrame,
                        ["Material"] = Enum.Material.ForceField,
                        ["Parent"] = player.Character,
                        ["Size"] = Vector3.new(0.001, 0.001, 0.001),
                        ["Transparency"] = 1
                    }
                }
         
                workspace.resources.RemoteEvent:FireServer(unpack(args))
            end

            wait()
        end
        
        wait(0.5)
        
        local ohString2 = "reloadMe"
        workspace.resources.RemoteEvent:FireServer(ohString2)

        repeat
            wait()
        until player.Character and player.Character.Humanoid.Health > 0

        Upsilon.InvokeServer("giveRiotShield", player.Character.HumanoidRootPart)

        workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace.ignore.invisibleWalls:FindFirstChild("armoryBarrier_Cheaters"))

        ohString2 = "reloadMe"
        workspace.resources.RemoteEvent:FireServer(ohString2)
    end
end)

local autokickEnabled = false
local autokickConnection

local Toggle = Section:AddToggle("Autokick", {flag = "Toggle_Flag", default = false}, function(bool)
    autokickEnabled = bool

    if autokickEnabled then
        autokickConnection = game.Players.PlayerAdded:Connect(function(player)
            if player.Name == targetPlayer then
                wait(0.8)
                local Upsilon = require(workspace.upsilonLibrary)
                Upsilon.InvokeServer("giveRiotShield", player.Character.HumanoidRootPart)
                workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace.ignore.invisibleWalls:FindFirstChild("armoryBarrier_Cheaters"))
                wait(0.5) 
                local ohString1 = "reloadMe"
                workspace.resources.RemoteEvent:FireServer(ohString1)
            end
        end)
    else
        if autokickConnection then
            autokickConnection:Disconnect()
            autokickConnection = nil
        end
    end
end)

local serverLockEnabled = false
local serverLockConnection

local Toggle = Section:AddToggle("Serverlock", {flag = "Toggle_Flag", default = false}, function(bool)
    serverLockEnabled = bool

    if serverLockEnabled then
        serverLockConnection = game.Players.PlayerAdded:Connect(function(newPlayer)
            wait(1)
            local Upsilon = require(workspace.upsilonLibrary)
            Upsilon.InvokeServer("giveRiotShield", newPlayer.Character.HumanoidRootPart)
            workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace.ignore.invisibleWalls:FindFirstChild("armoryBarrier_Cheaters"))
            wait(0.5)
            local ohString1 = "reloadMe"
            workspace.resources.RemoteEvent:FireServer(ohString1)
        end)
    else
        if serverLockConnection then
            serverLockConnection:Disconnect()
            serverLockConnection = nil
        end
    end
end)

local autoKickAllEnabled = false
local autoKickAllConnection

local function destroyAllRiotShields(character)
    local riotShields = character:GetDescendants()
    for _, riotShield in ipairs(riotShields) do
        if riotShield.Name == "RiotShield" then
            game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
            riotShield:Destroy()
        end
    end
end

local function giveRiotShieldToAllPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        local Upsilon = require(workspace.upsilonLibrary)
        Upsilon.InvokeServer("giveRiotShield", player.Character.HumanoidRootPart)
    end
end

local Toggle = Section:AddToggle("AutoKick all", {flag = "Toggle_Flag", default = false}, function(bool)
    autoKickAllEnabled = bool

    if autoKickAllEnabled then
        autoKickAllConnection = game.Players.PlayerAdded:Connect(function(newPlayer)
            wait(1)
            local Upsilon = require(workspace.upsilonLibrary)
            Upsilon.InvokeServer("giveRiotShield", newPlayer.Character.HumanoidRootPart)
            giveRiotShieldToAllPlayers()
            workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
            workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace.ignore.invisibleWalls:FindFirstChild("armoryBarrier_Cheaters"))
            wait(0.5)
            destroyAllRiotShields(game.Players.LocalPlayer.Character)
            wait(0.5)
            local ohString1 = "reloadMe"
            workspace.resources.RemoteEvent:FireServer(ohString1)
        end)
    else
        if autoKickAllConnection then
            autoKickAllConnection:Disconnect()
            autoKickAllConnection = nil
        end
    end
end)

local Section = Tab:AddSection("Delay", {default = true})

local playerName = ""

local Box = Section:AddBox("Target Player", {fireonempty = true}, function(text)
    playerName = text
end)

local isToggleOn = false

local Toggle = Section:AddToggle("Delay", {flag = "Toggle_Flag", default = false}, function(bool)
    isToggleOn = bool

    while isToggleOn do
        local player = game.Players:FindFirstChild(playerName)
        if player then
            local ohString1 = "resetNetworkOwnership"
            local ohInstance2 = player.Character:FindFirstChild("HumanoidRootPart")
            local ohBoolean3 = true
            workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohBoolean3)
        end
        wait()
    end
end)

local isToggleOns = false
local delayOthersLoop

local Toggle = Section:AddToggle("Delay others", {flag = "Toggle_Flag_Others", default = false}, function(bool)
    isToggleOns = bool

    if isToggleOns then
        delayOthersLoop = coroutine.wrap(function()
            while isToggleOns do
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer

                for _, player in ipairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and player.Character then
                        local ohString1 = "resetNetworkOwnership"
                        local ohInstance2 = player.Character:FindFirstChild("HumanoidRootPart")
                        local ohBoolean3 = true

                        if ohInstance2 then
                            workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohBoolean3)
                        end
                    end
                end

                wait()
            end
        end)

        delayOthersLoop()
    else
        if delayOthersLoop then
            delayOthersLoop = nil
        end
    end
end)

local Section = Tab:AddSection("Crash", {default = true})

local Button = Section:AddButton("Crash Server", function()
	local remoteFunction = workspace.resources.RemoteFunction

local function invokeGiveRiotShield(part)
    remoteFunction:InvokeServer("giveRiotShield", part)
end

local function processDescendants(parent)
    local coroutines = {}

    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Part") then
            table.insert(coroutines, coroutine.create(function()
                invokeGiveRiotShield(child)
            end))
        elseif child:IsA("Model") or child:IsA("Folder") or child:IsA("UnionOperation") then
            processDescendants(child)
        end
    end

    for _, coroutineThread in ipairs(coroutines) do
        coroutine.resume(coroutineThread)
    end
end

processDescendants(workspace)
end)

local Button = Section:AddButton("drawLaser Crash others", function()
local function CreatePermPart(part, parent)
    local properties = {
        ["TopSurface"] = "f",
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = part.Anchored,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }
    
    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser", part.Position, part.Position, properties)
end

local part = Instance.new("Part")

for i = 1, 2000 do
    coroutine.wrap(function()
        CreatePermPart(part, game.Workspace)
    end)()
end
end)

local Section = Tab:AddSection("Pants", {default = true})

local Button = Section:AddButton("Pants", function()
local Players = game:GetService("Players")

local function spawnDelay()
    local ohString1 = "wearPants"
    local ohString2 = "http://www.roblox.com/asset/?id=398633811"

    wait(1)
    workspace.resources.RemoteEvent:FireServer(ohString1, ohString2)

    ohString1 = "wearShirt"
    ohString2 = "http://www.roblox.com/asset/?id=1"
    
    workspace.resources.RemoteEvent:FireServer(ohString1, ohString2)
end

local ohString2 = "reloadMe"
workspace.resources.RemoteEvent:FireServer(ohString2)

Players.LocalPlayer.CharacterAdded:Connect(spawnDelay)
end)