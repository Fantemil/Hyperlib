
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Nameless Hub | Redwood Prison", HidePremium = false, IntroEnabled = true, SaveConfig = true, IntroText = "Nameless Hub", IntroIcon = "rbxassetid://4483362748", Icon = "rbxassetid://4483362748", ConfigFolder = "Loader"})
local Tab = Window:MakeTab({
	Name = "Antikick",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Toggles"
})

local toggleEnabled = false

Tab:AddToggle({
	Name = "Teamlock",
	Default = false,
	Callback = function(Value)
		toggleEnabled = Value
	end    
})

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

Tab:AddToggle({
	Name = "Autohostile",
	Default = true,
	Callback = function(Value)
		toggleEnabled = Value
	end    
})

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

local Section = Tab:AddSection({
	Name = "Buttons"
})

Tab:AddButton({
	Name = "Delete Spawn",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Antidelay",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Anticlone",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Antilag",
	Callback = function()
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
  	end    
})

local Tab = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Local Player"
})

local connection

Tab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(Value)
    if Value then
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
	end    
})

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

Tab:AddToggle({
	Name = "Kill Aura",
	Default = false,
	Callback = function(Value)
		loopEnabled = Value
	end    
})

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

Tab:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 120,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        humanoid.WalkSpeed = Value
    end
	end    
})

Tab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 100,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        humanoid.JumpPower = Value
    end
	end    
})

Tab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 120,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if camera then
        camera.FieldOfView = Value
    end
	end    
})

local Section = Tab:AddSection({
	Name = "Autoitem"
})

local toolToClone = "M98B" 

Tab:AddToggle({
    Name = "Autoitem",
    Default = false,
    Callback = function(Value)
        local remoteEvent = game.Workspace.resources.RemoteEvent

        local function duplicateTool()
            local player = game.Players.LocalPlayer
            local backpack = player.Backpack
            local tool = backpack:FindFirstChild(toolToClone)

            if Value and not remoteEvent:FindFirstChild(toolToClone) then
                if tool then
                    local clonedTool = tool:Clone()
                    clonedTool.Parent = remoteEvent
                end
            end
        end

        local function removeTools()
            if not Value then
                for _, child in ipairs(remoteEvent:GetChildren()) do
                    child:Destroy()
                end
            end
        end

        local function addToolOnCharacterAdded(character)
            if Value and not game.Players.LocalPlayer.Character:FindFirstChild(toolToClone) then
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

        if Value then
            duplicateTool()
            game.Players.LocalPlayer.CharacterAdded:Connect(addToolOnCharacterAdded)
        else
            removeTools()
        end
    end
})

Tab:AddDropdown({
    Name = "Items",
    Default = "M98B",
    Options = {"Taser", "Handcuffs", "Beretta M9", "M16", "SPAS-12", "M98B", "M60", "UMP-45", "M14", "ACR", "Revolver", "Parachute", "AK47", "M1014", "S&W 638", "L86A2", "AK47-U", "Makarov", "Hammer", "Fake ID Card", "Guitar"},
    Callback = function(Value)
        toolToClone = Value 
    end
})

local Section = Tab:AddSection({
	Name = "drawLaser"
})

local loopEnabled = false
local Bubble = nil
local lib = require(game:GetService("Workspace").upsilonLibrary)

local loopEnabled = false
local Bubble = nil
local lib = require(game:GetService("Workspace").upsilonLibrary)

Tab:AddToggle({
	Name = "Bubble",
	Default = false,
	Callback = function(Value)
    loopEnabled = Value
    if Value then
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
	end    
})

Tab:AddSlider({
	Name = "Bubble Size",
	Min = 7,
	Max = 200,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
    if Bubble then
        Bubble.Size = Vector3.new(Value, Value, Value)
    end
	end    
})

Tab:AddColorpicker({
	Name = "Bubble Color",
	Default = Color3.fromRGB(17, 17, 17),
	Callback = function(Value)
    if Bubble then
        Bubble.Color = Value
    end
	end	  
})

local Tab = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Actions"
})

Tab:AddTextbox({
	Name = "Target Player",
	TextDisappear = false,
	Callback = function(Value)
    targetPlayer = Value
	end	  
})

Tab:AddButton({
	Name = "Bring",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Goto",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Kill",
	Callback = function()
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
  	end    
})

local loopRunning = false

Tab:AddToggle({
	Name = "Loop Kill",
	Default = false,
	Callback = function(Value)
    loopRunning = Value

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
	end    
})

Tab:AddButton({
	Name = "Bring All",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Kill Others",
	Callback = function()
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
  	end    
})

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

Tab:AddToggle({
	Name = "Loop Kill Others",
	Default = false,
	Callback = function(Value)
    enabled = Value

    if enabled then
        executeCode()
    end
	end    
})

local Tab = Window:MakeTab({
	Name = "drawLaser",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Combat"
})

Tab:AddButton({
	Name = "Click Kill",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Lightsaber",
	Callback = function()
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
  	end    
})

Tab:AddColorpicker({
	Name = "Lightsaber Color",
	Default = Color3.fromRGB(98, 37, 209),
	Callback = function(Value)
    LightsaberColor = Value
	end	  
})

local Section = Tab:AddSection({
	Name = "Miscellaneous"
})

Tab:AddButton({
	Name = "Blackhole",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Mars",
	Callback = function()
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
  	end    
})

local bubbleEnabled = false
local bubble

local bubbleEnabled = false
local bubble

Tab:AddToggle({
	Name = "Atomic Bomb",
	Default = false,
	Callback = function(Value)
    bubbleEnabled = Value

    if Value then
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
	end    
})

while true do
    if not bubbleEnabled then
        break
    end
    wait()
end

local toggleEnabled = false
local loopEnabled = false
local pulseFlyColor = Color3.fromRGB(13, 105, 172)

Tab:AddToggle({
	Name = "Pulse Fly",
	Default = false,
	Callback = function(Value)
    toggleEnabled = Value
    if Value and not loopEnabled then
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
    elseif not Value then
        loopEnabled = false
    end
	end    
})

Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(13, 105, 172),
	Callback = function(Value)
    pulseFlyColor = Value
	end	  
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Refresh"
})

Tab:AddButton({
	Name = "Refresh",
	Callback = function()
	local ohString2 = "reloadMe"
	workspace.resources.RemoteEvent:FireServer(ohString2)
  	end    
})

local Section = Tab:AddSection({
	Name = "Antis"
})

Tab:AddButton({
	Name = "Antivoid",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "AntidrawLaser",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Delete Keycards",
	Callback = function()
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
  	end    
})

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "Owl Hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end    
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

Tab:AddButton({
	Name = "D00M Gui",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/8F8Ep6th"))()
  	end    
})

Tab:AddButton({
	Name = "Chat Bypass",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols.
    Keybind = "f", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Must be lowercase
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})
  	end    
})

local Tab = Window:MakeTab({
	Name = "Op Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Kick"
})

Tab:AddTextbox({
	Name = "Target Player",
	TextDisappear = false,
	Callback = function(Value)
    targetPlayer = Value
	end	  
})

Tab:AddButton({
	Name = "Kick",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Kick All",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
  	end    
})

local autokickEnabled = false
local autokickConnection

Tab:AddToggle({
	Name = "Autokick",
	Default = false,
	Callback = function(Value)
    autokickEnabled = Value

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
	end    
})

local serverLockEnabled = false
local serverLockConnection

Tab:AddToggle({
	Name = "Serverlock",
	Default = false,
	Callback = function(Value)
    serverLockEnabled = Value

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
	end    
})

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

Tab:AddToggle({
	Name = "Autokick All",
	Default = false,
	Callback = function(Value)

    autoKickAllEnabled = Value

    if autoKickAllEnabled then
        autoKickAllConnection = game.Players.PlayerAdded:Connect(function(newPlayer)
            wait(1)
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
        end)
    else
        if autoKickAllConnection then
            autoKickAllConnection:Disconnect()
            autoKickAllConnection = nil
        end
    end
	end    
})

local Section = Tab:AddSection({
	Name = "Delay"
})

local playerName = ""

Tab:AddTextbox({
	Name = "Target Player",
	TextDisappear = False,
	Callback = function(Value)
    playerName = Value
	end	  
})

local isToggleOn = false

Tab:AddToggle({
	Name = "Delay",
	Default = false,
	Callback = function(Value)
    isToggleOn = Value

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
	end    
})

local isToggleOns = false
local delayOthersLoop

Tab:AddToggle({
	Name = "Delay Others",
	Default = false,
	Callback = function(Value)
    isToggleOns = Value

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
	end    
})

local Section = Tab:AddSection({
	Name = "Crash"
})

Tab:AddButton({
	Name = "Crash Server",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "drawLaser Crash Others",
	Callback = function()
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

for i = 1, 1500 do
    coroutine.wrap(function()
        CreatePermPart(part, game.Workspace)
    end)()
end
  	end    
})

local Section = Tab:AddSection({
	Name = "Pants"
})

Tab:AddButton({
	Name = "Pants",
	Callback = function()
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
  	end    
})

local Tab = Window:MakeTab({
	Name = "Teams",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Police"
})

Tab:AddButton({
	Name = "Kick Police Team",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team and player.Team.Name == "Police" then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
  	end    
})

Tab:AddButton({
	Name = "Kill Police Team",
	Callback = function()
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer and player.Team and player.Team.Name == "Police" then
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
})

loopRunning = false

Tab:AddToggle({
	Name = "Loop Kill Police Team",
	Default = false,
	Callback = function(Value)
loopRunning = Value

if not loopRunning then
    return
end

while loopRunning do
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Police" and player.Character and player.Character:FindFirstChild("Head") then
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
    wait()
end
	end    
})

isTogglesOns = false

Tab:AddToggle({
	Name = "Delay Police Team",
	Default = false,
	Callback = function(Value)
isToggleOns = Value

if isToggleOns then
    delayOthersLoop = coroutine.wrap(function()
        while isToggleOns do
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Team and player.Team.Name == "Police" and player.Character then
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
	end    
})


Tab:AddButton({
	Name = "Become Police Team",
	Callback = function()
local args = {
	"requestTeam",
	"police"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
  	end    
})


local Section = Tab:AddSection({
	Name = "Prisoners"
})

Tab:AddButton({
	Name = "Kick Prisoners Team",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team and player.Team.Name == "Prisoners" then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
  	end    
})

Tab:AddButton({
	Name = "Kill Prisoners Team",
	Callback = function()
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer and player.Team and player.Team.Name == "Prisoners" then
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
})

loopRunning = false

Tab:AddToggle({
	Name = "Loop Kill Prisoners Team",
	Default = false,
	Callback = function(Value)
loopRunning = Value

if not loopRunning then
    return
end

while loopRunning do
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Prisoners" and player.Character and player.Character:FindFirstChild("Head") then
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
    wait()
end
	end    
})

isTogglesOns = false

Tab:AddToggle({
	Name = "Delay Prisoners Team",
	Default = false,
	Callback = function(Value)
isToggleOns = Value

if isToggleOns then
    delayOthersLoop = coroutine.wrap(function()
        while isToggleOns do
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Team and player.Team.Name == "Prisoners" and player.Character then
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
	end    
})


Tab:AddButton({
	Name = "Become Prisoners Team",
	Callback = function()
local args = {
	"requestTeam",
	"prisoners"
}

workspace:WaitForChild("resources"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
  	end    
})

local Section = Tab:AddSection({
	Name = "Fugitives"
})

Tab:AddButton({
	Name = "Kick Fugitives Team",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team and player.Team.Name == "Fugitives" then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
  	end    
})

Tab:AddButton({
	Name = "Kill Fugitives Team",
	Callback = function()
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer and player.Team and player.Team.Name == "Fugitives" then
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
})

loopRunning = false

Tab:AddToggle({
	Name = "Loop Kill Fugitives Team",
	Default = false,
	Callback = function(Value)
loopRunning = Value

if not loopRunning then
    return
end

while loopRunning do
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Fugitives" and player.Character and player.Character:FindFirstChild("Head") then
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
    wait()
end
	end    
})

isTogglesOns = false

Tab:AddToggle({
	Name = "Delay Fugitives Team",
	Default = false,
	Callback = function(Value)
isToggleOns = Value

if isToggleOns then
    delayOthersLoop = coroutine.wrap(function()
        while isToggleOns do
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Team and player.Team.Name == "Fugitives" and player.Character then
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
	end    
})


Tab:AddButton({
	Name = "Become Fugitives Team",
	Callback = function()
local targetPosition = CFrame.new(-600.986267, -25.5423031, -322.000061)
local originalPosition = nil
local originalCameraCFrame = nil
local originalCameraFocus = nil

local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera

local function teleportPlayer()
    if player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        
        if humanoidRootPart then
            if not originalPosition then
                originalPosition = humanoidRootPart.CFrame
            end
            
            originalCameraCFrame = camera.CFrame
            originalCameraFocus = camera.Focus
            humanoidRootPart.CFrame = targetPosition
        end
    end
end

teleportPlayer()

wait()

if originalPosition then
    player.Character.HumanoidRootPart.CFrame = originalPosition
    camera.CFrame = originalCameraCFrame
    camera.Focus = originalCameraFocus
end
  	end    
})

local Section = Tab:AddSection({
	Name = "Choosing"
})

Tab:AddButton({
	Name = "Kick Choosing Team",
	Callback = function()
local Upsilon = require(workspace.upsilonLibrary)

local function performActions(player)
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

local policePlayers = {}
for _, player in ipairs(game.Players:GetPlayers()) do
    if player.Team and player.Team.Name == "Choosing" then
        table.insert(policePlayers, player)
    end
end

for _, player in ipairs(policePlayers) do
    spawn(function()
        performActions(player)
    end)
end
  	end    
})

Tab:AddButton({
	Name = "Kill Choosing Team",
	Callback = function()
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer and player.Team and player.Team.Name == "Choosing" then
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
})

loopRunning = false

Tab:AddToggle({
	Name = "Loop Kill Choosing Team",
	Default = false,
	Callback = function(Value)
loopRunning = Value

if not loopRunning then
    return
end

while loopRunning do
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Choosing" and player.Character and player.Character:FindFirstChild("Head") then
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
    wait()
end
	end    
})

isTogglesOns = false

Tab:AddToggle({
	Name = "Delay Choosing Team",
	Default = false,
	Callback = function(Value)
isToggleOns = Value

if isToggleOns then
    delayOthersLoop = coroutine.wrap(function()
        while isToggleOns do
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Team and player.Team.Name == "Choosing" and player.Character then
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
	end    
})

OrionLib:Init()
