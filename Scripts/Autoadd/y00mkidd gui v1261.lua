local gui = Instance.new("ScreenGui")
gui.Name = "y00mkidd Gui v1"
gui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.35, 0, 0.8, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
Frame.BorderSizePixel = 3
Frame.Active = true
Frame.Draggable = true
Frame.Parent = gui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0 ,0)
ImageLabel.BorderColor3 = Color3.fromRGB(27, 27, 27)
ImageLabel.BackgroundTransparency = 0
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0001, 0, 0.0001, 0)
ImageLabel.Size = UDim2.new(0.885, 35, 0.83, 54)
ImageLabel.Image = "http://www.roblox.com/asset/?id=16903577098" -- Updated Background image ID
ImageLabel.Active = false

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.33, 0, 0.1, 0)
TextLabel.Position = UDim2.new(0.33, 0, 0.00001, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "y00mkidd Gui"
TextLabel.TextSize = 29
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Frame

local function createButton(text, position, onClick, id)
    local TextButton = Instance.new("TextButton")
    TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
    TextButton.Position = position
    TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
    TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
    TextButton.BorderSizePixel = 2
    TextButton.BackgroundTransparency = 0.66
    TextButton.Text = text
    TextButton.TextSize = 23
    TextButton.TextWrapped = true
    TextButton.TextColor3 = Color3.new(255, 255, 255)
    TextButton.Font = Enum.Font.Code
    TextButton.Parent = Frame
    TextButton.MouseButton1Click:Connect(function()
        onClick(id)
    end)
end

createButton("Sky", UDim2.new(0.00001, 0, 0.2, 0), function(ID)
    local skybox = true

    if skybox == true then
        local sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID
    end
end, 16903582831)

createButton("Particle", UDim2.new(0.7, 0, 0.2, 0), function(ID)
    local particle = true

    if particle == true then
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Part") then
                local particle = Instance.new("ParticleEmitter")
                particle.Texture = "http://www.roblox.com/asset/?id=" .. ID
                particle.Parent = v
                particle.Rate = 200
            elseif v:IsA("Model") then
                for _, part in pairs(v:GetDescendants()) do
                    if part:IsA("Part") then
                        local particle = Instance.new("ParticleEmitter")
                        particle.Texture = "http://www.roblox.com/asset/?id=" .. ID
                        particle.Parent = part
                        particle.Rate = 200
                    end
                end
            end
        end
    end
end, 16903582831)
