local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Rock Fruit FROG HUB v1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Section = Window:MakeTab({
    Name = "Script"
})

local toggleButtons = {}
local activeConnections = {}

local function removeToggleButton(name)
    if toggleButtons[name] then
        toggleButtons[name]:Destroy()
        toggleButtons[name] = nil
    end
end

local function createAutoFarmToggle(name, modelName)
    removeToggleButton(name)

    toggleButtons[name] = Section:AddToggle({
        Name = name,
        Default = false,
        Callback = function(Value)
            if Value then
                activeConnections[name] = game:GetService("RunService").Heartbeat:Connect(function()
                    local player = game.Players.LocalPlayer.Character.HumanoidRootPart
                    for _, v in ipairs(game.Workspace.Mob:GetDescendants()) do
                        if v:IsA("Model") and v.Name == modelName and v:FindFirstChild("HumanoidRootPart") then
                            local JN = v:FindFirstChild("HumanoidRootPart")
                            if JN and player and v.Humanoid.Health > 0 then
                                -- Teleport 11 studs above NPC's head and point towards the floor
                                local targetPosition = JN.Position + Vector3.new(0, JN.Size.Y/2 + 11, 0) -- Adjust to NPC's head position + 11 studs up
                                player.CFrame = CFrame.new(targetPosition, targetPosition - Vector3.new(0, 1, 0))
                                wait() -- Wait briefly (default interval)
                            end
                        end
                    end
                end)
            else
                if activeConnections[name] then
                    activeConnections[name]:Disconnect()
                    activeConnections[name] = nil
                end
            end
        end
    })
end

local function populateDropdown()
    local options = {}
    for _, v in ipairs(game.Workspace.Mob:GetDescendants()) do
        if v:FindFirstChild("HumanoidRootPart") then
            table.insert(options, v.Name)
        end
    end
    return options
end

local function populateNpcDropdown()
    local options = {}
    for _, v in ipairs(game.Workspace.npcClick:GetDescendants()) do
        if v:FindFirstChild("HumanoidRootPart") then
            table.insert(options, v.Name)
        end
    end
    return options
end

Section:AddDropdown({
    Name = "Select Mob to Auto Farm",
    Default = "",
    Options = populateDropdown(),
    Callback = function(selectedMob)
        createAutoFarmToggle("Auto Farm " .. selectedMob, selectedMob)
    end
})

Section:AddDropdown({
    Name = "Select NPC to Teleport",
    Default = "",
    Options = populateNpcDropdown(),
    Callback = function(selectedNpc)
        local player = game.Players.LocalPlayer.Character.HumanoidRootPart
        for _, v in ipairs(game.Workspace.npcClick:GetDescendants()) do
            if v:IsA("Model") and v.Name == selectedNpc and v:FindFirstChild("HumanoidRootPart") then
                local JN = v:FindFirstChild("HumanoidRootPart")
                if JN and player then
                    -- Teleport 11 studs above NPC's head and point towards the floor
                    local targetPosition = JN.Position + Vector3.new(0, JN.Size.Y/2 + 11, 0) -- Adjust to NPC's head position + 11 studs up
                    player.CFrame = CFrame.new(targetPosition, targetPosition - Vector3.new(0, 1, 0))
                end
            end
        end
    end
})

Section:AddToggle({
    Name = "Collect Existing Fruit",
    Default = false,
    Callback = function(Value)
        if Value then
            activeConnections["Collect Existing Fruit"] = game:GetService("RunService").Heartbeat:Connect(function()
                local player = game.Players.LocalPlayer.Character.HumanoidRootPart
                for _, v in ipairs(game.Workspace.Fruits:GetChildren()) do
                    if v:IsA("Tool") then
                        player.CFrame = v.Handle.CFrame
                    end
                end
            end)
        else
            if activeConnections["Collect Existing Fruit"] then
                activeConnections["Collect Existing Fruit"]:Disconnect()
                activeConnections["Collect Existing Fruit"] = nil
            end
        end
    end
})

Section:AddToggle({
    Name = "Enlarge HumanoidRootParts",
    Default = false,
    Callback = function(Value)
        if Value then
            for _, v in ipairs(game.Workspace.Mob:GetDescendants()) do
                if v:FindFirstChild("HumanoidRootPart") then
                    local HRP = v:FindFirstChild("HumanoidRootPart")
                    HRP.Size = Vector3.new(50, 50, 50)
                    HRP.Transparency = 0.5
                    HRP.Color = Color3.fromRGB(255, 255, 255)
                    HRP.Visible = true
                end
            end
        end
    end
})

Section:AddToggle({
    Name = "Equip All Tools",
    Default = false,
    Callback = function(Value)
        if Value then
            activeConnections["Equip All Tools"] = game:GetService("RunService").Heartbeat:Connect(function()
                for _, v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
            end)
        else
            if activeConnections["Equip All Tools"] then
                activeConnections["Equip All Tools"]:Disconnect()
                activeConnections["Equip All Tools"] = nil
            end
        end
    end
})

local function autoSkillAttack()
    activeConnections["Auto Skill Attack"] = game:GetService("RunService").Heartbeat:Connect(function()
        -- Check if the player has any tool equipped
        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if tool then
            -- Get the equipped tool's name and fire server actions for {"x", "z", "c", "v"}
            local toolName = tool.Name
            for _, skillKey in ipairs({"x", "z", "c", "v"}) do
                local args = {
                    [1] = toolName, -- Use the equipped tool's name
                    [2] = skillKey,
                    [3] = game:GetService("Players").LocalPlayer.PlayerGui.HUD.MobileSkill
                }
                game:GetService("ReplicatedStorage").Remote.Action:FireServer(unpack(args))
            end
        end
    end)
end

Section:AddToggle({
    Name = "Auto Skill Attack",
    Default = false,
    Callback = function(Value)
        if Value then
            autoSkillAttack()
        else
            if activeConnections["Auto Skill Attack"] then
                activeConnections["Auto Skill Attack"]:Disconnect()
                activeConnections["Auto Skill Attack"] = nil
            end
        end
    end
})

-- Initialize the UI library
OrionLib:Init()
