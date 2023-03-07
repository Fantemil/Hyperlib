_G.Notifier = true

while _G.Notifier do
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "RedPresent" or v.Name == "GreenPresent" or v.Name == "BluePresent" then
            if v.PresentBow:FindFirstChild("BillboardGui") then
            else
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                
                BillboardGui.Parent = v.PresentBow
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(0, 100, 0, 100)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = v.Name
                TextLabel.TextScaled = true
                if v.Name == "RedPresent" then
                TextLabel.TextColor3 = Color3.new(1, 0, 0)
                else if v.Name == "GreenPresent" then
                TextLabel.TextColor3 = Color3.new(0, 1, 0)
                else if v.Name == "BluePresent" then
                TextLabel.TextColor3 = Color3.new(0, 0, 1)
                end
                end
            end
            end
        end
    end
    wait(3)
end