repeat wait() until game:IsLoaded(); if not player.Character then wait(5) end

local active = true
local player = game:GetService("Players").LocalPlayer

local function getCoilPart()
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.ClassName == "MeshPart" and v.Name == "ToolGrab" and v.MeshId == "rbxassetid://16606212" then
            return v -- Script by Amph#5896
        end
    end
end

if _G.running then _G.running = false task.wait(0.1) end  _G.running = active
while _G.running do task.wait(1) pcall(function()
    repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 1
    if not player.Character:FindFirstChild("coil") and not player.Backpack:FindFirstChild("coil") then
        local coiL = getCoilPart()
        local currentPos = player.Character.HumanoidRootPart.CFrame task.wait(0.1)

        repeat 
            player.Character.HumanoidRootPart.CFrame = coiL.CFrame - Vector3.new(0, 5, 0)
            fireproximityprompt(coiL.ProximityPrompt, 0) task.wait()
        until player.Character:FindFirstChild("coil") or player.Backpack:FindFirstChild("coil")

        player.Character.HumanoidRootPart.CFrame = currentPos
    end
end) end