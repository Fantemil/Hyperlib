local flyspeed = 300
local flying = false
local maxdistance = 100000000000000 --using math.huge makes this script wonky
local uiservice = game.UserInputService
local lplr = game.Players.LocalPlayer
local mouse = lplr:GetMouse()
local function GetVelocity(pos1,pos2,StudsPerSecond)
local distance = (pos2 - pos1)
local mag = distance.Magnitude
return (distance/mag)*StudsPerSecond
end
local function getkey(keycode)
local key = tostring(keycode):lower()
local findcode, a = key:find("keycode.")
return key:sub(a+1)
end
local keys = {}
game.RunService.Heartbeat:connect(function()
pcall(function()
local hrp
for i,v in pairs(workspace.Vehicles:GetChildren()) do
    if pcall(function() return v.Engine and v.Seat.PlayerName end) then
        if v.Seat.PlayerName.Value == lplr.Name then
            hrp = v.Engine
            break
       else
           hrp = nil
        end
    end
end
if not hrp then
flying = false
    lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
end
    if flying then
    local cam = workspace.Camera
    end
local frontoffset = CFrame.new() + Vector3.new(0,0,-maxdistance)
local backoffset = CFrame.new() + Vector3.new(0,0,maxdistance)
local leftoffset = CFrame.new() + Vector3.new(-maxdistance,0,0)
local rightoffset = CFrame.new() + Vector3.new(maxdistance,0,0)
local velocity = Vector3.new()
    if flying then
    if keys.w_active then
        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*frontoffset).Position,flyspeed)
    end
    if keys.s_active then
        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*backoffset).Position,flyspeed)
    end
    if keys.a_active then
        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*leftoffset).Position,flyspeed)
    end
    if keys.d_active then
        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*rightoffset).Position,flyspeed)
    end
    hrp.Velocity = velocity
     hrp.CFrame = CFrame.new(hrp.Position, (workspace.Camera.CFrame*frontoffset).Position)
    end
    if flying and not keys.w_active and not keys.a_active and not keys.s_active and not keys.d_active then
        hrp.Velocity = Vector3.new(0,1.005,0)
    end
end)
end)
uiservice.InputBegan:connect(function(key,processed)
if processed then return end
    if key.KeyCode == Enum.KeyCode.F and game.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        flying = not flying
        if flying then
            lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
        else
            lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
        end
    end
    keys[getkey(key.KeyCode).."_active"] = true
end)
uiservice.InputEnded:connect(function(key)
    keys[getkey(key.KeyCode).."_active"] = false
end)