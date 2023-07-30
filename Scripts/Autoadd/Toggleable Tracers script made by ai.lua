_G.TeamCheck = false
_G.Tracers = true
local lp = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local Tracers = {}

for i, v in pairs(game.Players:GetChildren()) do
    repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and v.Character and v.Character.Head ~= nil and v.Character.HumanoidRootPart ~= nil
end

function createTracer(player)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(255,0,0)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
    Tracers[player] = Tracer
    
    function traces()
        game:GetService("RunService").RenderStepped:Connect(function()
            if player.Character ~= nil and player.Character:FindFirstChild("Humanoid") ~= nil and player.Character:FindFirstChild("HumanoidRootPart") ~= nil and player ~= lp and player.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(player.Character.HumanoidRootPart.Position)
                
                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    
                    if _G.TeamCheck and player.TeamColor == lp.TeamColor then
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
            if _G.Tracers == false then
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(traces)()
end

function removeTracer(player)
    if Tracers[player] ~= nil then
        Tracers[player]:Remove()
        Tracers[player] = nil
    end
end

function toggleTracers()
    _G.Tracers = not _G.Tracers
    for player, tracer in pairs(Tracers) do
        tracer.Visible = _G.Tracers
    end
end

game.Players.PlayerAdded:Connect(function(player)
    createTracer(player)
end)

game.Players.PlayerRemoving:Connect(function(player)
    removeTracer(player)
end)

for i,player in pairs(game.Players:GetPlayers()) do
    createTracer(player)
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.F and not gameProcessedEvent then
        toggleTracers()
    end
end)
