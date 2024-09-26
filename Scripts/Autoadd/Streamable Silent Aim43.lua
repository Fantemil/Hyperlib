-- // Dependencies
_G.PRED = 0.025
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ezucii/new/main/sourceeeeeeeeeeeeee.lua"))()
Aiming.TeamCheck(false)
Aiming.ShowFOV = false
Aiming.FOV = 50.7
-- // Services
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
 
-- // Vars
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera
 
local DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.121,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings
 
-- // Overwrite to account downed
function Aiming.Check()
    -- // Check A
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end
 
    -- // Check if downed
    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
 
    -- // Check B
    if (KOd or Grabbed) then
        return false
    end
 
    -- //
    return true
end
 
-- // Hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Check if it trying to get our mouse's hit or target and see if we can use it
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        -- // Vars
        local SelectedPart = Aiming.SelectedPart
 
        -- // Hit/Target
        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            -- // Hit to account prediction
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
            -- // Return modded val
            return (k == "Hit" and Hit or SelectedPart)
        end
    end
 
    -- // Return
    return __index(t, k)
end)
 
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
 
mouse.KeyDown:Connect(function(key)
    if key == "t" then
        if Aiming.Enabled == false then
        Aiming.Enabled = true
        else
        Aiming.Enabled = false
        end
    end
end)
 
 
RunService.RenderStepped:Connect(function()
 
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Value = tostring(ping)
    local pingValue = Value:split(" ")
    local PingNumber = pingValue[1]
 
    DaHoodSettings.Prediction = PingNumber / 1000 + _G.PRED
 
                    if Aiming.Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                    Aiming.TargetPart = "RightFoot"
                else
                    Aiming.Character:WaitForChild("Humanoid").StateChanged:Connect(function(new)
 
                    if new == Enum.HumanoidStateType.Freefall then
                    Aiming.TargetPart = "RightFoot"
                    else
 
                    Aiming.TargetPart = Aiming.SelectedPart
 
                    end
 
                    end)
 
                end
 
end)