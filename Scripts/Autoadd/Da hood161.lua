local new = { 
    main = { 
        Mario = true,
        Prediction = 0.13,
        Part = "HumanoidRootPart", -- Head, UpperTorso, HumanoidRootPart, LowerTorso, RightFoot, LeftFoot, RightArm, LeftArm 
        Key = "q",
        Notifications = true,
        AirshotFunc = true
    },
    Tracer = { 
        TracerThickness = 3.5, -- made by thusky
        TracerTransparency = 1, -- made by thusky
        TracerColor = Color3.fromRGB(153, 50, 204) -- made by thusky
    }
}


local CurrentCamera = game:GetService "Workspace".CurrentCamera
local Mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Plr = game.Players.LocalPlayer
local Line = Drawing.new("Line")
local Inset = game:GetService("GuiService"):GetGuiInset().Y

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (new.main.Key) then
        if new.main.Mario == true then
            new.main.Mario = false
            if new.main.Notifications == true then
                Plr = FindClosestUser()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "<3",
                    Text = "No longer locked on"
                })
            end
        else
            Plr = FindClosestUser()
            new.main.Mario = true
            if new.main.Notifications == true then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "<3",
                    Text = "Locked on to:" .. tostring(Plr.Character.Humanoid.DisplayName)
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




RunService.Stepped:connect(function()
    if new.main.Mario == true then
        local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[new.main.Part].Position +
                                                              (Plr.Character.HumanoidRootPart.Velocity *
                                                                  new.main.Prediction))
        Line.Color = new.Tracer.TracerColor                                                                          -- made by thusky
        Line.Thickness = new.Tracer.TracerThickness
        Line.Transparency = new.Tracer.TracerTransparency
 

        Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Line.To = Vector2.new(Vector.X, Vector.Y)
        Line.Visible = true
    else
        Line.Visible = false

    end
end)


local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if new.main.Mario and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character[new.main.Part].Position +
                      (Plr.Character[new.main.Part].Velocity * new.main.Prediction)
        return old(unpack(args))
    end
    return old(...)
end)

if new.main.AirshotFunc == true then
    if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        settings.main.Part = "RightFoot"
    else
        Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
            if new == Enum.HumanoidStateType.Freefall then
                settings.main.Part = "RightFoot"
            else
                settings.main.Part = "LowerTorso"
            end
        end)
    end
end
