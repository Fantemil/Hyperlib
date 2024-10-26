--[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- NPC Hitbox Expander by hallworld#0 (discord)
-- PLEASE READ ALL THE COMMENTS!!

-- IF YOU CANNOT FIND THE LOCATION:
--THE SCRIPT HAS BUILT IN PRINTING LOCATION
--WHICH WHENEVER YOU CLICK ANY PART (CLICK THE NPC TORSO)
--IT WILL PRINT THE LOCATION OF THAT DUMMY IN CONSOLE!!!!

-- PUT YOUR ENEMY LOCATION HERE IT MUST BE TORSO
local npc = game.Workspace.ActivePlayers.Dummy.Torso
-- ENEMY HITBOX SIZE
local newSize = Vector3.new(15, 15, 15)
-- ENEMY HITBOZ SIZE TRANSPARENCY
local newTransparency = 0.5

local function expandHitbox()
    npc.Size = newSize
    npc.Transparency = newTransparency
    npc.CanCollide = false
end

-- FUNCTION THAT PRINTS THE PART THAT YOU CLICKED IN CONSOLE
local function onPartClicked(part)
    print("Clicked part: " .. part:GetFullName())
end

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local function onMouseClick()
    local player = Players.LocalPlayer
    local mouse = player:GetMouse()

    mouse.Button1Down:Connect(function()
        local target = mouse.Target
        if target then
            onPartClicked(target)
        end
    end)
end

onMouseClick()

-- recheck every 1 second
while true do
    expandHitbox()
    wait(1)
end
