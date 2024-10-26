if game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
    game.Players.LocalPlayer.Character.RightHand:Destroy()
end
if game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") then
    game.Players.LocalPlayer.Character.LeftHand:Destroy()
end
while task.wait() do
    for i,v in pairs(workspace.IgnoreParts:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name.."Kamehameha" then
            v:Destroy()
        end
    end
    local tool
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Kamehameha") then
            tool = v.Name
        end
    end
    local args = {
        [1] = Vector3.new(64.3369369506836, 16.810863494873047, 35.28483963012695)
    }
    game:GetService("Players").LocalPlayer.Backpack[tool].Event:FireServer(unpack(args))
end
