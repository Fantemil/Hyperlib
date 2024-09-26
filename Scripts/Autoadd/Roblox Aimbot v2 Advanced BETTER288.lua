local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Universal Aimlock GUI v2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Main Tab
local Tab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Sections
local AimbotSection = Tab:AddSection({
	Name = "Aimbot Settings"
})

local TargetSection = Tab:AddSection({
	Name = "Target Settings"
})

local ESPSection = Tab:AddSection({
	Name = "ESP Settings"
})

-- Variables
local aimbotEnabled = false
local aimAtPart = "HumanoidRootPart"
local wallCheckEnabled = false
local targetNPCs = false
local teamCheckEnabled = false
local headSizeEnabled = false
local espEnabled = false

-- Functions
local function getClosestTarget()
    local Cam = workspace.CurrentCamera
    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local localRoot = character:WaitForChild("HumanoidRootPart")
    local nearestTarget = nil
    local shortestDistance = math.huge

    local function checkTarget(target)
        if target and target:IsA("Model") and target:FindFirstChild("Humanoid") and target:FindFirstChild(aimAtPart) then
            local targetRoot = target[aimAtPart]
            local distance = (targetRoot.Position - localRoot.Position).Magnitude

            if distance < shortestDistance then
                if wallCheckEnabled then
                    local rayDirection = (targetRoot.Position - Cam.CFrame.Position).Unit * 1000
                    local raycastParams = RaycastParams.new()
                    raycastParams.FilterDescendantsInstances = {character}
                    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

                    local raycastResult = workspace:Raycast(Cam.CFrame.Position, rayDirection, raycastParams)

                    if raycastResult and raycastResult.Instance:IsDescendantOf(target) then
                        shortestDistance = distance
                        nearestTarget = target
                    end
                else
                    shortestDistance = distance
                    nearestTarget = target
                end
            end
        end
    end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and (not teamCheckEnabled or player.Team ~= localPlayer.Team) then
            checkTarget(player.Character)
        end
    end

    if targetNPCs then
        for _, npc in pairs(workspace:GetDescendants()) do
            checkTarget(npc)
        end
    end

    return nearestTarget
end

local function lookAt(targetPosition)
    local Cam = workspace.CurrentCamera
    if targetPosition then
        Cam.CFrame = CFrame.new(Cam.CFrame.Position, targetPosition)
    end
end

local function aimAtTarget()
    local runService = game:GetService("RunService")
    local connection
    connection = runService.RenderStepped:Connect(function()
        if not aimbotEnabled then
            connection:Disconnect()
            return
        end

        local closestTarget = getClosestTarget()
        if closestTarget and closestTarget:FindFirstChild(aimAtPart) then
            local targetRoot = closestTarget[aimAtPart]

            while aimbotEnabled and closestTarget and closestTarget:FindFirstChild(aimAtPart) and closestTarget.Humanoid.Health > 0 do
                lookAt(targetRoot.Position)
                local rayDirection = (targetRoot.Position - workspace.CurrentCamera.CFrame.Position).Unit * 1000
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {character}
                raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

                local raycastResult = workspace:Raycast(workspace.CurrentCamera.CFrame.Position, rayDirection, raycastParams)

                if not raycastResult or not raycastResult.Instance:IsDescendantOf(closestTarget) then
                    break
                end

                runService.RenderStepped:Wait()
            end
        end
    end)
end

local function resizeHeads()
    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer

    local function resizeHead(model)
        local head = model:FindFirstChild("Head")
        if head and head:IsA("BasePart") then
            head.Size = Vector3.new(5, 5, 5)
            head.CanCollide = false
        end
    end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character then
            resizeHead(player.Character)
        end
    end

    for _, npc in pairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and npc:FindFirstChild("Head") then
            resizeHead(npc)
        end
    end
end

local function createESP()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local billboard = Instance.new("BillboardGui")
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 100, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0)
            billboard.AlwaysOnTop = true

            local textLabel = Instance.new("TextLabel")
            textLabel.Parent = billboard
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.Text = player.Name
            textLabel.BackgroundTransparency = 1
            textLabel.TextStrokeTransparency = 0
            textLabel.TextScaled = true

            if player.Team then
                textLabel.TextColor3 = player.Team.TeamColor.Color
            else
                textLabel.TextColor3 = Color3.new(1, 1, 1)
            end

            billboard.Parent = head
        end
    end
end

local function removeESP()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Head") then
            for _, child in pairs(player.Character.Head:GetChildren()) do
                if child:IsA("BillboardGui") then
                    child:Destroy()
                end
            end
        end
    end
end

-- GUI Elements
Tab:AddToggle({
	Name = "Enable Aimbot",
	Default = false,
	Callback = function(Value)
		aimbotEnabled = Value
		if aimbotEnabled then
			aimAtTarget()
		end
	end
})

Tab:AddButton({
	Name = "Switch Aim Part",
	Callback = function()
		if aimAtPart == "HumanoidRootPart" then
			aimAtPart = "Head"
		else
			aimAtPart = "HumanoidRootPart"
		end
		OrionLib:MakeNotification({
			Name = "Aim Part",
			Content = "Now aiming at: " .. aimAtPart,
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

Tab:AddToggle({
	Name = "Enable Wall Check",
	Default = false,
	Callback = function(Value)
		wallCheckEnabled = Value
	end
})

Tab:AddToggle({
	Name = "Target NPCs",
	Default = false,
	Callback = function(Value)
		targetNPCs = Value
	end
})

Tab:AddToggle({
	Name = "Enable Team Check",
	Default = false,
	Callback = function(Value)
		teamCheckEnabled = Value
	end
})

Tab:AddToggle({
	Name = "Resize Heads",
	Default = false,
	Callback = function(Value)
		headSizeEnabled = Value
		if headSizeEnabled then
			resizeHeads()
		end
	end
})

Tab:AddToggle({
	Name = "ESP Labels",
	Default = false,
	Callback = function(Value)
		espEnabled = Value
		if espEnabled then
			createESP()
		else
			removeESP()
		end
	end
})

OrionLib:Init()
