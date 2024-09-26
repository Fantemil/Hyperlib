--[[
Aimbot made by mzzreal
Upgraded by thanhtam8765_
]]--

_G.AimPart = "Head"
_G.Sensitivity = 0
_G.CircleSides = 75
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleTransparency = 0.6
_G.CircleRadius = 75
_G.CircleFilled = false
_G.CircleVisible = true
_G.CircleThickness = 1
_G.RageCheck = true -- Add this line to enable rage check
_G.RageDistance = 50 -- Add this line to set the rage check distance
_G.TeamCheck = false -- Add this line to toggle team check
local Epitaph = 0 -- The Bigger The Number, The More Prediction.


local Area = game:GetService("Workspace")
local MyView = Area.CurrentCamera
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local MyCharacter = LocalPlayer.Character
local MyRoot = MyCharacter:FindFirstChild("HumanoidRootPart")
local MyHumanoid = MyCharacter:FindFirstChild("Humanoid")
local Mouse = LocalPlayer:GetMouse()
local HoldingM2 = false
local Active = false
local Lock = false
local HeadOffset = Vector3.new(0,.1, 0)
local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(MyView.ViewportSize.X / 2, MyView.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function CursorLock()
    UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
end
local function UnLockCursor()
    HoldingM2 = false
    Active = false
    Lock = false
    UIS.MouseBehavior = Enum.MouseBehavior.Default
end

function FindNearestPlayer()
    local Target = nil
    local SecondTarget = nil
    for _, v in pairs(Players:GetPlayers()) do
        if v and v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
            local TheirCharacter = v.Character
            for _, part in pairs(TheirCharacter:GetChildren()) do
                if part and part:IsA("BasePart") then
                    local CharacterRoot, Visible = MyView:WorldToViewportPoint(part.Position)
                    if Visible then
                        local DistanceFromCircleCenter = (Vector2.new(CharacterRoot.X, CharacterRoot.Y) - FOVCircle.Position).Magnitude
                        if DistanceFromCircleCenter <= FOVCircle.Radius then
                            if RageCheck(TheirCharacter) and TeamCheck(TheirCharacter) then
                                local AimPart = TheirCharacter:FindFirstChild(_G.AimPart)
                                if AimPart then
                                    if Target == nil or DistanceFromCircleCenter <= (Vector2.new(MyView:WorldToViewportPoint(Target[_G.AimPart].Position).X, MyView:WorldToViewportPoint(Target[_G.AimPart].Position).Y) - FOVCircle.Position).Magnitude then
                                        SecondTarget = Target
                                        Target = TheirCharacter
                                    elseif SecondTarget == nil or DistanceFromCircleCenter <= (Vector2.new(MyView:WorldToViewportPoint(SecondTarget[_G.AimPart].Position).X, MyView:WorldToViewportPoint(SecondTarget[_G.AimPart].Position).Y) - FOVCircle.Position).Magnitude then
                                        SecondTarget = TheirCharacter
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if Target == nil then
        return SecondTarget
    else
        return Target
    end
end



function RageCheck(Target)
    if _G.RageCheck then
        local Distance = (MyRoot.Position - Target[_G.AimPart].Position).Magnitude
        if Distance > _G.RageDistance then
            return false
        end
    end
    return true
end

function TeamCheck(Target)
    if _G.TeamCheck then
        if Target and LocalPlayer.Team then
            if game.Players[Target.Name].Team == LocalPlayer.Team then
                return false
            end
        end
    end
    return true
end

UIS.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        HoldingM2 = true
        Active = true
        Lock = true
        if Active then
            local The_Enemy = FindNearestPlayer()
            while HoldingM2 do task.wait()
                if Lock and The_Enemy and The_Enemy:FindFirstChild(_G.AimPart) and RageCheck(The_Enemy) and TeamCheck(The_Enemy) then
                    local Future = The_Enemy[_G.AimPart].CFrame + (The_Enemy[_G.AimPart].Velocity * Epitaph + HeadOffset)
                    MyView.CFrame = CFrame.lookAt(MyView.CFrame.Position, Future.Position)
                    CursorLock()
                end
            end
        end
    end
end)
UIS.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        UnLockCursor()
    end
end)

FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)

UIS.InputChanged:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseMovement then
        FOVCircle.Position = UIS:GetMouseLocation()
    end
end)

game.StarterGui:SetCore("SendNotification", {Title = "Working.", Text = "Success, Script Loaded.", Duration = 4,})