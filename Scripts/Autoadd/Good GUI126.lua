local ur = game:GetService("ReplicatedStorage").Events.unRagdoll
local lp = game:GetService('Players').LocalPlayer
local ar = false
local agc = false
local hrp = lp.Character.HumanoidRootPart

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeztWare/KavoUi/main/KavoUi.lua"))()

local Window = Library.CreateLib("Bulked up", "Midnight")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewToggle("Anti ragdoll", "Spams to the server to unragdoll you", function(state)
    ar = state
end)

Section:NewToggle("Auto gem collector", "Collects gems automatically", function(state)
    agc = state
end)


lp.CharacterAdded:Connect(function(character)
    hrp = character:WaitForChild('HumanoidRootPart')
end)

while wait() do
    if ar then
	    ur:FireServer(chr)
    end
    if agc then
        for _, v in pairs(workspace:GetChildren()) do
            if v.Name == 'Gem' then
                v.Position = hrp.Position
            end
        end
    end
end