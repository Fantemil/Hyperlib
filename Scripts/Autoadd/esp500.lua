local players = game:GetService("Players")
local playerTable = {}
getgenv().espIsEnabled = true

for _,v in pairs(players:GetPlayers()) do
    table.insert(playerTable, v.Name)
end

for _,v in pairs(playerTable) do
    local char = workspace:FindFirstChild(v)
    if getgenv().espIsEnabled == true then
        for _,v in pairs(char:GetChildren()) do
            if v.Name == "highlight" then
                v:Destroy()
            end
        end
        local highlight = Instance.new("Highlight", char)
        highlight.Name = "highlight"
        highlight.Adornee = char
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = Color3.new(255, 0, 0)
        highlight.FillTransparency = 0.9 -- do not change to 1 or it will become invisible
        highlight.OutlineColor = Color3.new(0, 255, 0)
        highlight.OutlineTransparency = 0
        highlight.Enabled = true
        char:FindFirstChild("Humanoid").Died:Connect(function()
            if getgenv().espIsEnabled == true then
                task.wait(players.RespawnTime + 1) -- adding 1 to make sure the character is loaded
                local highlight = Instance.new("Highlight", char)
                highlight.Name = "highlight"
                highlight.Adornee = char
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.new(255, 0, 0)
                highlight.FillTransparency = 0.9 -- do not change to 1 or it will become invisible
                highlight.OutlineColor = Color3.new(0, 255, 0)
                highlight.OutlineTransparency = 0
                highlight.Enabled = true
            end
        end)
    else
        for _,v in pairs(char:GetChildren()) do
            if v.Name == "highlight" then
                v:Destroy()
            end
        end 
    end
end

players.PlayerAdded:Connect(function(player)
    if getgenv().espIsEnabled == true then
        local char = player.Character
        local highlight = Instance.new("Highlight", char)
        highlight.Name = "highlight"
        highlight.Adornee = char
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = Color3.new(255, 0, 0)
        highlight.FillTransparency = 0.9 -- do not change to 1 or it will become invisible
        highlight.OutlineColor = Color3.new(0, 255, 0)
        highlight.OutlineTransparency = 0
        highlight.Enabled = true
    end
end)