--Grab all Chests
for i,a in pairs(game:GetService("Workspace"):GetDescendants()) do
    if a.Name == "ChestLoad" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = a.Parent.Helper.CFrame
        wait(1)
    end
end

for i,b in pairs(game:GetService("Workspace"):GetDescendants()) do
    if b.Name == "Helper" then
        game:GetService("Players").LocalPlayer.Function:InvokeServer("GUIDHERE", "PlayerData", "OpenChest", b.Parent.Name)
        wait(1)
    end
end