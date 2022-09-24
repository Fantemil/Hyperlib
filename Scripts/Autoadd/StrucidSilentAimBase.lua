getgenv().Settings = {
    Enabled = true,
}


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = game.Workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")



function IsAlive()
    if Players.LocalPlayer.PlayerGui:FindFirstChild("MainGui") then
        return true
    end
    return false
end


function Closest()
    local Distance = math.huge
    local Closest
    if IsAlive() then
        for i,v in pairs(Players:GetPlayers()) do
            if v ~= LocalPlayer then
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local Pos, OnScreen = Camera:WorldToScreenPoint(v.Character.Head.Position)
                    local RealMouse = UserInputService:GetMouseLocation()
                    local Dist = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(RealMouse.X, RealMouse.Y)).Magnitude
                    if Dist < Distance then
                        Distance = Dist
                        Closest = v
                    end
                end
            end
        end
    end
    return Closest
end

LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if child.Name == "MainGui" then
        local Module = require(child:FindFirstChild("NewLocal").Tools.Tool.Gun)
        local Old = Module.ConeOfFire
        Module.ConeOfFire = function(...)
            local closest = Closest()
            if closest ~= nil and Settings.Enabled then
                return closest.Character.HumanoidRootPart.CFrame.p
            end
            return Old(...)
        end
    end
end)