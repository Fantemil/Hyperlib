--[[
 WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Impostiamo il personaggio e i pulsanti del mouse
local character = game:GetService("Players").LocalPlayer.Character
local mouse = game.Players.LocalPlayer:GetMouse()

-- Impostiamo le variabili di volo
local flySpeed = 0
local canFly = false
local flyToggle = "e"

-- Funzione che attiva/disattiva il volo
function toggleFly()
    canFly = not canFly
    flySpeed = 0
    character.Humanoid:ChangeState(11)
end

-- Controlliamo se il giocatore preme il pulsante di volo
mouse.KeyDown:connect(function(key)
    if key == flyToggle then
        toggleFly()
    end
end)

-- Controlliamo se il giocatore smette di premere il pulsante di volo
mouse.KeyUp:connect(function(key)
    if key == flyToggle then
        toggleFly()
    end
end)

-- Ciclo di gioco
game:GetService("RunService").RenderStepped:connect(function()
    if canFly then
        flySpeed = flySpeed + 0.5
        character.Humanoid:ChangeState(11)
        character.Humanoid.Sit = true
        character:FindFirstChild("HumanoidRootPart").Velocity = character:FindFirstChild("HumanoidRootPart").CFrame.lookVector * flySpeed
    end
end)