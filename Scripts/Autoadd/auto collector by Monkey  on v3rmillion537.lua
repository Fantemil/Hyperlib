_G.toggle = false

for i,v in pairs(game:GetService("Workspace").Bases:GetDescendants()) do
if v.Name == "playername" then
if v.Text == game.Players.LocalPlayer.Name then
_G.folder = v.Parent.Parent.Parent.Parent.folder
end
end
end

game:GetService("Workspace")[game.Players.LocalPlayer.Name][game.Players.LocalPlayer.Name].SelectionSphere:Remove()




Second to execute REMEMBER ONLY EXECUTE ON TIME


_G.toggle = not _G.toggle

while _G.toggle do wait()
pcall(function()
for i,v in pairs(_G.folder:GetDescendants()) do
    if v.ClassName == "TouchTransmitter" then
        v.Parent.CFrame = game.Players.LocalPlayer.Character.Humanoid.Torso.CFrame
        wait()
    end
end
end)
end