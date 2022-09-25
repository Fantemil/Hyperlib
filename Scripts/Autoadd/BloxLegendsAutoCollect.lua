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