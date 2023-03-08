spawn(function()
while wait() do
if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat) end
for i = 1,5 do
for I,v in pairs(game:GetService("Workspace").Monster:GetChildren()) do
if v:FindFirstChild("Head") then
local args = {
   [1] = i,
   [2] = v.Head.Position
}

game:GetService("Players").LocalPlayer.Character.Combat.Sword_Client.RemoteEvent:FireServer(unpack(args))
end
end
end
end
end)