local folder;
wait(1)
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
game.Players.LocalPlayer:FindFirstChild("PlayerGui").DescendantAdded:Connect(function(v)
    if v:IsA("Actor") then
        folder = Instance.new("Folder", v.Parent)
        if v:FindFirstChild("GameClient") then
            v:FindFirstChild("GameClient").Parent = folder
        else
            v:FindFirstChild("LobbyClient").Parent = folder
        end
    end
end)

pcall(function()
    setfpscap(999)
end)