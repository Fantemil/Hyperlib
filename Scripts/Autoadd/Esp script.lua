-- ESP script
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

for _, Player in pairs(Players:GetPlayers()) do
    if Player.Character and Player ~= LocalPlayer then
        local Box = Instance.new("BoxHandleAdornment")
        Box.Name = "ESP"
        Box.AlwaysOnTop = true
        Box.ZIndex = 5
        Box.Size = Player.Character:GetBoundingBox().Size
        Box.Adornee = Player.Character
        Box.Transparency = 0.7
        Box.Color3 = Color3.fromRGB(255, 0, 0)
        Box.Parent = Player.Character
    end
end
