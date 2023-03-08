local me = game.Players.LocalPlayer
local mee = me.Character
local HRP = mee.HumanoidRootPart
while true do
   wait()
for i,v in pairs(game.Workspace:GetDescendants()) do
  if v.ClassName == 'Part' and v.Name == 'Shard' then
      HRP.CFrame = v.CFrame
      task.wait()
  end
end
for i,v in pairs(game.Workspace:GetDescendants()) do
  if v.ClassName == 'Part' and v.Name == 'Diamond' then
      HRP.CFrame = v.CFrame
      task.wait()
  end
end
end