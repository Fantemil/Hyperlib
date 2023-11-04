function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end
local Player = game.Players.LocalPlayer.Character
while wait(0.05) do
   for _, v in pairs(game:GetService("Players"):GetPlayers()) do
       if v.Name ~= game:GetService("Players").LocalPlayer.Name and isSpawned(v) then
       if (v.Character.HumanoidRootPart.Position - Player.HumanoidRootPart.Position).Magnitude <= 45 then
         local args = {
    [1] = v.Character.HumanoidRootPart,
    [2] = v.Character.Humanoid,
    [3] = v.Character.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.Punch.Remote.Hit:FireServer(unpack(args))

         end
      end
   end
end