--[[
 __    __     __  __     __  __     __  __     __  __     __  __     ______    
/\ "-./  \   /\_\_\_\   /\ \/ /    /\ \/ /    /\ \/ /    /\ \/ /    /\  ___\   
\ \ \-./\ \  \/_/\_\/_  \ \  _"-.  \ \  _"-.  \ \  _"-.  \ \  _"-.  \ \___  \  
 \ \_\ \ \_\   /\_\/\_\  \ \_\ \_\  \ \_\ \_\  \ \_\ \_\  \ \_\ \_\  \/\_____\ 
  \/_/  \/_/   \/_/\/_/   \/_/\/_/   \/_/\/_/   \/_/\/_/   \/_/\/_/   \/_____/ 
                                                                               
]]

-- Track & Field: Infinite Script made by mxkxkks
-- DO NOT USE WALKSPEED SCRIPTS WHILE USING THIS SCRIPT OR IT WILL GET FLAGGED AS TELEPORTING!
-- Leave the vector values alone if you don't know what you're doing. You can lower the values if you encounter a ban.
-- Please leave everything as it is to avoid kick detection.
-- Script revamped to only touch extender since some kids can't comprehend the main point of the script.
-- Made more visual.
-- Resized checkpoints.

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local originalSizes = {}
local debounce = false

local specificRaces = { 
    "110 METER HURDLES",
    "200 METER DASH"
}

local function fuckline(part)
    local outline = Instance.new("SelectionBox")
    outline.Parent = part
    outline.Adornee = part
    outline.LineThickness = 0.1  
    outline.Color3 = Color3.new(0, 0, 1) 
end

local function adjustHitbox()
    local titleText = Workspace.Map.Timers.Timer.Title.SurfaceGui.TitleText

    for _, v in ipairs(Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == "EndPoint" or v.Name:match("^Checkpoint%d+$") then
                if v.Name == "EndPoint" then
                    v.Transparency = 0.9
                    fuckline(v)  
                end

                if not originalSizes[v] then
                    originalSizes[v] = v.Size
                end

                local targetSize -- lower the values if you encounter a ban.
                if titleText.Text == "300 METER DASH" then
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 395)
                elseif titleText.Text == "60 METER DASH" then
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 70)
                elseif titleText.Text == "100 METER DASH" then
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 75)
                elseif table.find(specificRaces, titleText.Text) then
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 100)
                elseif titleText.Text:find("RELAY") then
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 80)
                else
                    targetSize = Vector3.new(v.Size.X, v.Size.Y, 395)
                end

                if v.Size ~= targetSize then
                    v.Size = targetSize
                    v.CanCollide = false
                end
            elseif v.Name == "LandingPad" then -- useless.
                local targetSize = Vector3.new(v.Size.X, 400, v.Size.Z)

                if v.Size ~= targetSize then
                    v.Size = targetSize
                    v.CanCollide = false
                end
            end
        end
    end
end

local function onDescendantAdded(descendant)
    if debounce then return end
    debounce = true
    wait(0.5)
    adjustHitbox()
    debounce = false
end

Workspace.DescendantAdded:Connect(onDescendantAdded)