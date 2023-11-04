local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera

local function IsOnScreen(part)
    local screenPoint, onScreen = Camera:WorldToViewportPoint(part.Position)
    return onScreen
end

local Drawings = {}

local function UpdateDrawings()
    -- Clear previous drawings
    for _, drawing in pairs(Drawings) do
        drawing:Remove()
    end
    Drawings = {}
    
    for _, player in pairs(Players:GetPlayers()) do
        local character = player.Character
        local humanoid = character and character:FindFirstChild("Humanoid")
        local head = character and character:FindFirstChild("Head")
        
        if humanoid and head and IsOnScreen(head) then
            local topLeft = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * -0.5)
            local bottomRight = character:GetModelCFrame():PointToWorldSpace(character:GetExtentsSize() * 0.5)

            local topLeftScreen, _ = Camera:WorldToViewportPoint(topLeft)
            local bottomRightScreen, _ = Camera:WorldToViewportPoint(bottomRight)
            
            local width = bottomRightScreen.X - topLeftScreen.X
            local height = bottomRightScreen.Y - topLeftScreen.Y

            -- Draw box
            local box = Drawing.new("Square")
            box.Position = Vector2.new(topLeftScreen.X, topLeftScreen.Y)
            box.Size = Vector2.new(width, height)
            box.Color = Color3.new(1, 1, 1)
            box.Thickness = 2
            box.Filled = false
            table.insert(Drawings, box)
            
            -- Draw health bar
            local healthPercentage = humanoid.Health / humanoid.MaxHealth
            local healthBarHeight = height * healthPercentage
            local healthBar = Drawing.new("Square")
            healthBar.Position = Vector2.new(bottomRightScreen.X, topLeftScreen.Y)
            healthBar.Size = Vector2.new(10, healthBarHeight)
            healthBar.Color = Color3.new(1 - healthPercentage, healthPercentage, 0)
            healthBar.Thickness = 1
            healthBar.Filled = true
            table.insert(Drawings, healthBar)
            
            -- Draw player name
            local playerName = Drawing.new("Text")
            playerName.Text = player.Name
            playerName.Position = Vector2.new(topLeftScreen.X + (width/2), topLeftScreen.Y - 14)
            playerName.Size = 14
            playerName.Color = Color3.new(1, 1, 1)
            playerName.Center = true
            table.insert(Drawings, playerName)
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    UpdateDrawings()
end)
