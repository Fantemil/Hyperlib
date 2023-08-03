game.Players.LocalPlayer.UserId = 47983795

function RemoveAntiCheat(Character)
   local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
   local Humanoid = Character:WaitForChild("Humanoid")
   for i, connection in pairs(getconnections(HumanoidRootPart.Changed)) do
       connection:Disable()
   end
   for i, connection in pairs(getconnections(Humanoid.Changed)) do
       connection:Disable()
   end
   for i, connection in pairs(getconnections(Humanoid.StateChanged)) do
       connection:Disable()
   end
end

for i, connection in pairs(getconnections(game.DescendantAdded)) do
   connection:Disable()
end

for i, connection in pairs(getconnections(workspace.Changed)) do
   connection:Disable()
end

RemoveAntiCheat(game.Players.LocalPlayer.Character)

game.Players.LocalPlayer.CharacterAdded:Connect(RemoveAntiCheat)