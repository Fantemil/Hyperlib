--//Made by Sarper

for i,v in pair(game.Players.LocalPlayer.Character:GetChlidren())  do
      if v:IsA("Accessory") and v.Handle:FindFirstChild("SpecialMesh")  then
          gg = v.Handle:FindFirstChild("SpecialMesh")
          gg:Destroy()
  end
end
for i,v in pair(game.Players.LocalPlayer.Character:GetChlidren())  do
      if v:IsA("Accessory") and v.Handle:FindFirstChild("Mesh")  then
          gg = v.Handle:FindFirstChild("Mesh")
          gg:Destroy()
  end
end
for i,v in pair(game.Players.LocalPlayer.Character:GetChlidren())  do
      if v:IsA("Accessory")   then
          gg = v
          gg:Parent = game.Workspace
  end
end
game.Players.LocalPlayer.Character:Breakjoins()
wait(5)
local bPosition = Instance.new("BodyPosition")
bPosition.Parent = game.workspace.Robloxclassicred.Handle --//The Robloxclassicred is my hat just change it to your hat

while true do
      wait(1)
      bPosition.Position = game.Players.LocalPlayer.Character.Head.Position
      end