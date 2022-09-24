if game.PlaceId == 834827615 then
wait(0.5)
spawn(function()
   while wait () do
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
end end)
spawn(function()
   while wait (0.1) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.spawnlocations.SpawnLocation.CFrame
end end)
spawn(function()
   while wait () do
  for i,v in pairs(game.Players:GetPlayers()) do
      if v.Name == game.Players.LocalPlayer.Name then
          else
          game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
      end end end end)
spawn(function()
   while wait () do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
end end)
else
   game:GetService("TeleportService"):Teleport(834827615, LocalPlayer)
   end


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)