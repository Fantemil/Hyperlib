    local folder;
game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(v)
    if v:IsA("Actor") then
        folder = Instance.new("Folder",v.Parent)
        if v:FindFirstChild("GameClient") then
        v:FindFirstChild("GameClient").Parent = folder
    else
            v:FindFirstChild("LobbyClient").Parent = folder
    end
    end
end)