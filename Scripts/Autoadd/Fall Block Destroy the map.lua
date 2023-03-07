getgenv().Loop = true -- if you want it to loop destroy the map or just do it once

if getgenv().Loop then
 while task.wait(1) do
  if getgenv().Loop == false then break end
  local Map = workspace.Maps.Map:FindFirstChild("MapModel")
  if Map then
   for i,v in pairs(Map:GetChildren()) do
    if v:IsA("Folder") then
     for ind,var in pairs(v:GetChildren()) do
      firetouchinterest(game.Players.LocalPlayer.Character.Head, var, 0)
      firetouchinterest(game.Players.LocalPlayer.Character.Head, var, 1)
     end
    end
   end
  end
 end
else
 for i,v in pairs(workspace.Maps.Map.MapModel:GetChildren()) do
  if v:IsA("Folder") then
   for ind,var in pairs(v:GetChildren()) do
    firetouchinterest(game.Players.LocalPlayer.Character.Head, var, 0)
    firetouchinterest(game.Players.LocalPlayer.Character.Head, var, 1)
   end
  end
 end
end