local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)

local function createBoxEsp(v)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = v.TeamColor.Color
    Box.Thickness = 3
    Box.Transparency = 1
    Box.Filled = false

    local HealthBar = Drawing.new("Line")
    HealthBar.Visible = false
    HealthBar.Color = Color3.new(0, 1, 0)
    HealthBar.Thickness = 2

    local NameTag = Drawing.new("Text")
    NameTag.Visible = false
    NameTag.Color = Color3.new(1, 1, 1)
    NameTag.Size = 9
    NameTag.Center = true
    NameTag.Outline = true
    NameTag.OutlineColor = Color3.new(0, 0, 0)

    local DistanceTag = Drawing.new("Text")
    DistanceTag.Visible = false
    DistanceTag.Color = Color3.new(1, 1, 1)
    DistanceTag.Size = 9
    DistanceTag.Center = true
    DistanceTag.Outline = true
    DistanceTag.OutlineColor = Color3.new(0, 0, 0)

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = v.TeamColor.Color
    Tracer.Thickness = 2

    game:GetService("RunService").RenderStepped:Connect(function()
        if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

            local RootPart = v.Character.HumanoidRootPart
            local Head = v.Character.Head
            local RootPosition, RootVisibility = worldToViewportPoint(CurrentCamera, RootPart.Position)
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

            Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
            Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)

            local health = v.Character.Humanoid.Health / v.Character.Humanoid.MaxHealth
            HealthBar.From = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y * (1 - health))
            HealthBar.To = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y)
            HealthBar.Color = Color3.new(1 - health, health, 0)

            NameTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y - 20)
            NameTag.Text = v.Name
            NameTag.Visible = true

            DistanceTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y + Box.Size.Y)
            DistanceTag.Text = tostring(math.floor((lplr.Character.HumanoidRootPart.Position - RootPart.Position).Magnitude)) .. "m"
            DistanceTag.Visible = true

            local lplrHead = lplr.Character:FindFirstChild("Head")
            if lplrHead then
                local lplrHeadViewport = camera:worldToViewportPoint(lplrHead.Position)

                Tracer.From = Vector2.new(lplrHeadViewport.X, lplrHeadViewport.Y)
                Tracer.To = Vector2.new(RootPosition.X, RootPosition.Y)
            end

            if onScreen then
                Box.Visible = true
                HealthBar.Visible = true
                NameTag.Visible = true
                DistanceTag.Visible = true
                Tracer.Visible = true
            else
                Box.Visible = false
                HealthBar.Visible = false
                NameTag.Visible = false
                DistanceTag.Visible = false
                Tracer.Visible = false
            end
        else
            Box.Visible = false
            HealthBar.Visible = false
            NameTag.Visible = false
            DistanceTag.Visible = false
            Tracer.Visible = false
        end
    end)
end

for i, v in pairs(game.Players:GetChildren()) do
    createBoxEsp(v)
end

game.Players.PlayerAdded:Connect(function(v)
    createBoxEsp(v)
end)