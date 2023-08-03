getgenv().Target = { 
    Enabled = true,
    Prediction = 0.12405,
    Part = "LowerTorso",
    Key = "q",
    Notifications = true
}

local CurrentCamera = game:GetService "Workspace".CurrentCamera
local Mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Plr = game.Players.LocalPlayer
local Line = Drawing.new("Line")
local Inset = game:GetService("GuiService"):GetGuiInset().Y

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (getgenv().Target.Key) then
        if getgenv().Target.Enabled == true then
            getgenv().Target.Enabled = false
            if getgenv().Target.Notifications == true then
                Plr = FindClosestUser()
                game.StarterGui:SetCore("SendNotification", {             
                    Title = "HelloKittyWare",
                    Text = ""
                })
            end
        else
            Plr = FindClosestUser()
            getgenv().Target.Enabled = true
            if getgenv().Target.Notifications == true then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "HelloKittyWare",
                    Text = ":" .. tostring(Plr.Character.Humanoid.DisplayName)
                })
            end
        end
    end
end)

function FindClosestUser()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end







local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if getgenv().Target.Enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character[getgenv().Target.Part].Position +
                      (Plr.Character[getgenv().Target.Part].Velocity * getgenv().Target.Prediction)
        return old(unpack(args))
    end
    return old(...)
end)

if getgenv().Target.AirshotFunc == true then
    if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Target.Part = "RightFoot"
    else
        Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
            if new == Enum.HumanoidStateType.Freefall then
                getgenv().Target.Part = "RightFoot"
            else
                getgenv().Target.Part = "LowerTorso"
            end
        end)
    end
end