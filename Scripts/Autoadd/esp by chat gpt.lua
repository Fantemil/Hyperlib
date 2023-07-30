-- This script is a simple ESP script that displays the location of players in the game.

local Players = game:GetService("Players")
local Camera = game.Workspace.CurrentCamera

while true do
    for _, Player in ipairs(Players:GetChildren()) do
        if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            local Distance = (Player.Character.HumanoidRootPart.Position - Camera.CFrame.p).Magnitude
            if Distance < 100 then -- Display ESP only for players within 100 studs
                local BillboardGui = Instance.new("BillboardGui")
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 0
                BillboardGui.Size = UDim2.new(0, 100, 0, 20)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                BillboardGui.Parent = Player.Character.Head
                
                local NameLabel = Instance.new("TextLabel")
                NameLabel.BackgroundTransparency = 1
                NameLabel.Size = UDim2.new(1, 0, 1, 0)
                NameLabel.TextColor3 = Color3.new(1, 1, 1)
                NameLabel.TextScaled = true
                NameLabel.TextStrokeTransparency = 0.5
                NameLabel.Text = Player.Name
                NameLabel.Parent = BillboardGui
            end
        end
    end
    wait(1) -- Wait 1 second before checking again
end
