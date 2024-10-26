local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera

local function ESP()
    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            local TeamColor = Player.TeamColor
            local Box = Player.Character:FindFirstChild("ESP_Box")
            if not Box then
                Box = Instance.new("BoxHandleAdornment")
                Box.Name = "ESP_Box"
                Box.Parent = Player.Character
                Box.Adornee = Player.Character.HumanoidRootPart
                Box.Size = Player.Character.HumanoidRootPart.Size * 1.1
                Box.ZIndex = 5
                Box.AlwaysOnTop = true 
                Box.AlwaysOnTop = true 
            end
            local hue = (tick() % 5) / 5
            local rgbColor = Color3.fromHSV(hue, 1, 1)
            Box.Color3 = rgbColor
            Box.Transparency = 0.5
        end
    end
end

while true do
    ESP()
    wait(0.01) 
end
