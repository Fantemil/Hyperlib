_G.TeamCheck = false
_G.Tracers = true
local lp = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
local worldToViewportPoint = camera.worldToViewportPoint

for i, v in ipairs(game.Players:GetPlayers()) do
    repeat wait() until v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid")
end

for i, v in ipairs(game.Players:GetPlayers()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1, 1, 1)  -- Change the color to white (1, 1, 1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function traces()
        while _G.Tracers do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = worldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
                
                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    
                    if _G.TeamCheck and v.TeamColor == lp.TeamColor then
                        Tracer.Visible = false
                    else
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
            wait()
        end
        Tracer:Remove()
    end

    coroutine.wrap(traces)()
end

game.Players.PlayerAdded:Connect(function(v)
    repeat wait() until v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid")

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1, 1, 1)  -- Change the color to white (1, 1, 1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function traces()
        while _G.Tracers do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = worldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
                
                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    
                    if _G.TeamCheck and v.TeamColor == lp.TeamColor then
                        Tracer.Visible = false
                    else
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
            wait()
        end
        Tracer:Remove()
    end

    coroutine.wrap(traces)()
end)