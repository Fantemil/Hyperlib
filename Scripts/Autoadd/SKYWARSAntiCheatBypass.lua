repeat
    wait()
until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Extra")

pcall(function()
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Extra:GetChildren()) do
        if string.find(v.Name, "Sploit") then
            v:Destroy()
        end
    end
   
    Workspace.DescendantAdded:Connect(function(v)
        if string.find(v.Name, "Sploit") then
            v:Destroy()
        end
    end)
   
    for i, v in pairs(game:GetService("StarterGui").Extra:GetChildren()) do
        if string.find(v.Name, "Sploit") then
            v:Destroy()
        end
    end
   
    game:GetService("Workspace").Lobby.KillPlates:Destroy()
end)