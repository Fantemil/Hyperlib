local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("don't let her in [HORROR] - Free", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

local playerGui = game.Players.LocalPlayer.PlayerGui["Health/Stamina"]
local healthSystem = playerGui.Health.HealthSystem
local staminaSystem = playerGui.Stamina.StaminaSystem

local detectorHealth = playerGui.Health:FindFirstChild("Detector")
if detectorHealth then
    detectorHealth:Destroy()
end

local detectorStamina = playerGui.Stamina:FindFirstChild("Detector")
if detectorStamina then
    detectorStamina:Destroy()
end

local immortalActive = false

tab.newLabel("")
tab.newToggle("Immortal", "Toggle", false, function(immortal)
    immortalActive = immortal
    if immortal then
        healthSystem.Parent = game.ReplicatedStorage
        while immortalActive do
            wait(0.5)
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                if game.Players.LocalPlayer.Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
                    game:GetService("ReplicatedStorage").DamagePlayer:FireServer(-10000)
                end
            end
        end
    else
        immortalActive = false
        healthSystem.Parent = playerGui.Health
    end
end)

tab.newToggle("Infinite Stamina", "Toggle", false, function(infiniteStamina)
    if infiniteStamina then
        staminaSystem.Parent = game.ReplicatedStorage
    else
        staminaSystem.Parent = playerGui.Stamina
    end
end)
tab.newLabel("")
tab.newButton("No-FrostEffect", "Click To Run", function()
    local looopskibidi = true
    while looopskibidi do
        wait(0.5)
        local frostEffect = game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("FrostEffect")
        if frostEffect then
            frostEffect:Destroy()
        end
    end
end)

tab.newButton("Instant Interact", "Instant Proximity Prompt", function()
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
        fireproximityprompt(prompt)
    end)
end)

tab.newButton("Full Brightness", "Click To Light", function()
local Lighting = game:GetService("Lighting")

Lighting.FogEnd = 100000
Lighting.FogColor = Color3.new(1, 1, 1)
Lighting.Brightness = 2
end)
tab.newLabel("")