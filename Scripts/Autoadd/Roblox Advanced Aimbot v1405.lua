-- this script is so Powerful does not like other Aimbot Which this script Make you become God Being like aim
-- Script Aimbot Advanced v1 Developed by Mawin_CK and https://pastebin.com/u/SigmaBoy456 Writed by Mawin_CK and Fixed by Mawin_CK
-- this script make you Able to Automatically Aimlock Instantly at Player Head who nearest to you and not behind wall 
-- Press T to Target Teammate or not Teammate
-- Press Y To turn off and On Aimbot
-- Reccmond must have Good Device and WiFi or else sometime is can lag For only Mobile Player Except PC player
local player = game.Players.LocalPlayer
local Cam = workspace.CurrentCamera

-- Toggles setting set to False or True to toggle rejoin if you want to re settings 
local targetTeammates = true  -- Initially, target non-teammates or teammate
local aimbotActive = true  -- Initial state of the aimbot

-- Function to check if a player is a teammate
local function isTeammate(targetPlayer)
    return targetPlayer.Team == player.Team
end

-- Function to look at a specific position
local function lookAt(targetPosition)
    Cam.CFrame = CFrame.new(Cam.CFrame.Position, targetPosition)
end

-- Function to check if a target is visible (not behind walls)
local function isTargetVisible(targetPart)
    local origin = Cam.CFrame.Position
    local direction = (targetPart.Position - origin).Unit
    local ray = Ray.new(origin, direction * 5000)
    local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character, Cam})
    
    return part and part:IsDescendantOf(targetPart.Parent)
end

-- Function to get the closest player to the local player
local function getClosestPlayer(trg_part)
    local nearest = nil
    local lastDistance = math.huge
    local localPlayerPos = player.Character.PrimaryPart.Position
    
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and v.Character:FindFirstChild(trg_part) and v.Character:FindFirstChild("Humanoid") then
            local head = v.Character[trg_part]
            local humanoid = v.Character.Humanoid
            if head and humanoid.Health > 0 then  -- Check if the target is alive
                local distance = (localPlayerPos - head.Position).Magnitude
                
                -- Check visibility, distance, and teammate status
                if distance < lastDistance and isTargetVisible(head) then
                    if (targetTeammates and isTeammate(v)) or (not targetTeammates and not isTeammate(v)) then
                        nearest = v
                        lastDistance = distance
                    end
                end
            end
        end
    end
    
    return nearest
end

-- Toggle function to switch between targeting teammates and non-teammates
local function toggleTargetMode()
    targetTeammates = not targetTeammates
    print("Targeting", targetTeammates and "teammates" or "non-teammates")
end

-- Function to toggle aimbot activation
local function toggleAimbot()
    aimbotActive = not aimbotActive
    print("Aimbot", aimbotActive and "enabled" or "disabled")
end

-- RenderStepped connection to perform aiming
game:GetService("RunService").RenderStepped:Connect(function()
    if aimbotActive then
        local closestPlayer = getClosestPlayer("Head")
        if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
            lookAt(closestPlayer.Character.Head.Position)
        end
    end
end)

-- Input binding for toggling targeting mode and aimbot (e.g., press 'T' to toggle targeting mode, press 'Y' to toggle aimbot)
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.T then
            toggleTargetMode()
        elseif input.KeyCode == Enum.KeyCode.Y then
            toggleAimbot()
        end
    end
end)

-- Mobile support for toggling aimbot and targeting mode
local UIS = game:GetService("UserInputService")

UIS.TouchTap:Connect(function(touchPositions, processed)
    if not processed then
        local touch = touchPositions[1]
        if touch.Position.Y < workspace.CurrentCamera.ViewportSize.Y / 2 then
            toggleAimbot()
        else
            toggleTargetMode()
        end
    end
end)
