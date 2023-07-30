print("made by capi/xeno")

getgenv().Prediction = 0.13
getgenv().AimPart = "HumanoidRootPart"
getgenv().Key = "Q"
getgenv().DisableKey = "P"
 
getgenv().FOV = true
getgenv().ShowFOV = false
getgenv().FOVSize = 55
 
--// Variables (Service)
 
local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local WS = game:GetService("Workspace")
local GS = game:GetService("GuiService")
local SG = game:GetService("StarterGui")
 
--// Variables (regular)
 
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local Camera = WS.CurrentCamera
local GetGuiInset = GS.GetGuiInset
 
local AimlockState = true
local Locked
local Victim
 
local SelectedKey = getgenv().Key
local SelectedDisableKey = getgenv().DisableKey
 
--// Notification function
 
function Notify(tx)
    SG:SetCore("SendNotification", {
        Title = "XENO LOCK SCRIPT",
        Text = tx,
        Duration = 5
    })
end
 
--// Check if aimlock is loaded
 
if getgenv().Loaded == true then
    Notify("Aimlock is already loaded!")
    return
end
 
getgenv().Loaded = true
 
--// FOV Circle
 
local fov = Drawing.new("Circle")
fov.Filled = false
fov.Transparency = 1
fov.Thickness = 1
fov.Color = Color3.fromRGB(255, 255, 0)
fov.NumSides = 1000
 
--// Functions
 
function update()
    if getgenv().FOV == true then
        if fov then
            fov.Radius = getgenv().FOVSize * 2
            fov.Visible = getgenv().ShowFOV
            fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)
 
            return fov
        end
    end
end
 
function WTVP(arg)
    return Camera:WorldToViewportPoint(arg)
end
 
function WTSP(arg)
    return Camera.WorldToScreenPoint(Camera, arg)
end
 
function getClosest()
    local closestPlayer
    local shortestDistance = math.huge
 
    for i, v in pairs(game.Players:GetPlayers()) do
        local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
 
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().AimPart) and notKO and notGrabbed then
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
 
            if (getgenv().FOV) then
                if (fov.Radius > magnitude and magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            else
                if (magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end
 
--// Checks if key is down
 
Mouse.KeyDown:Connect(function(k)
    SelectedKey = SelectedKey:lower()
    SelectedDisableKey = SelectedDisableKey:lower()
    if k == SelectedKey then
        if AimlockState == true then
            Locked = not Locked
            if Locked then
                Victim = getClosest()
 
                Notify("Locked onto: "..tostring(Victim.Character.Humanoid.DisplayName))
            else
                if Victim ~= nil then
                    Victim = nil
 
                    Notify("Unlocked!")
                end
            end
        else
            Notify("Aimlock is not enabled!")
        end
    end
    if k == SelectedDisableKey then
        AimlockState = not AimlockState
    end
end)
 
--// Loop update FOV and loop camera lock onto target
 
RS.RenderStepped:Connect(function()
    update()
    if AimlockState == true then
        if Victim ~= nil then
            Camera.CFrame = CFrame.new(Camera.CFrame.p, Victim.Character[getgenv().AimPart].Position + Victim.Character[getgenv().AimPart].Velocity*getgenv().Prediction)
        end
    end
end)
	while wait() do
        if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
            if ping < 225 then
            getgenv().Prediction = 1.4
        elseif ping < 215 then
            getgenv().Prediction = 1.2
	    elseif ping < 205 then
            getgenv().Prediction = 1.0
	    elseif ping < 190 then
            getgenv().Prediction = 0.10
        elseif ping < 180 then
            getgenv().Prediction = 0.12
	    elseif ping < 170 then
            getgenv().Prediction = 0.15
	    elseif ping < 160 then
            getgenv().Prediction = 0.18
	    elseif ping < 150 then
            getgenv().Prediction = 0.110
        elseif ping < 140 then
            getgenv().Prediction = 0.113
        elseif ping < 130 then
            getgenv().Prediction = 0.116
        elseif ping < 120 then
            getgenv().Prediction = 0.120
        elseif ping < 110 then
            getgenv().Prediction = 0.124
        elseif ping < 105 then
            getgenv().Prediction = 0.127
        elseif ping < 90 then
            getgenv().Prediction = 0.130
        elseif ping < 80 then
            getgenv().Prediction = 0.133
        elseif ping < 70 then
            getgenv().Prediction = 0.136
        elseif ping < 60 then
            getgenv().Prediction = 0.15038
        elseif ping < 50 then
            getgenv().Prediction = 0.15038
        elseif ping < 40 then
            getgenv().Prediction = 0.145
        elseif ping < 30 then
            getgenv().Prediction = 0.155
        elseif ping < 20 then
            getgenv().Prediction = 0.157
        end
        end
	end