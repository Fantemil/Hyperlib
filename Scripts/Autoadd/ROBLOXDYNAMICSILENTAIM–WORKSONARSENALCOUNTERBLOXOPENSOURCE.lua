local function GetService(Name)
    return game:GetService(Name)
end

local Players = GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = GetService("RunService")
local BodyPart = nil
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local function WTS(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local function PositionToRay(Origin, Target)
    return Ray.new(Origin, (Target - Origin).Unit * 600)
end

local function Filter(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if Object:IsA("Part") or Object:IsA("MeshPart") then
        return true
    end
end

local function MousePositionToVector2()
    return Vector2.new(Mouse.X, Mouse.Y)
end

local function IsOnScreen(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

local function GetClosestBodyPartFromCursor()
    local ClosestDistance = math.huge
    for i,  v in next, Players:GetPlayers() do
        if v ~= LocalPlayer and v.Team ~= LocalPlayer.Team and v.Character and v.Character:FindFirstChild("Humanoid") then
            for k,  x in next, v.Character:GetChildren() do
                if Filter(x) and IsOnScreen(x) then
                    local Distance = (WTS(x) - MousePositionToVector2()).Magnitude
                    if Distance < ClosestDistance then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
                end
            end
        end
    end
end

local OldNameCall; 
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Method = getnamecallmethod()
    local Args = {...}
    if Method == "FindPartOnRayWithIgnoreList" and BodyPart ~= nil then
        Args[1] = PositionToRay(Camera.CFrame.Position, BodyPart.Position)
        return OldNameCall(Self, unpack(Args))
    end
    return OldNameCall(Self, ...)
end)

RunService:BindToRenderStep("Dynamic Silent Aim", 120, GetClosestBodyPartFromCursor)