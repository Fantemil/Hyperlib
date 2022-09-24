local me = game.Players.LocalPlayer.Character
local show = Instance.new("Part")
local UIS = game:GetService("UserInputService")
local check = true
UIS.InputBegan:Connect(function(x)
show.Parent = workspace
show.Name = ("Detect")
show.Size = Vector3.new(28,28,28)
show.Anchored = true
show.CanCollide = false
--show.Position = me.Torso.Position
show.Color = Color3.new(13,162,165)
show.Transparency = (0.3)
if check == true then
if x.KeyCode == Enum.KeyCode.One then
show.Position = me.Torso.Position
check = false
while true do
   task.wait()
for i,f in pairs(game.Workspace.Thrown:GetDescendants()) do
  if f.ClassName == 'Part' and f.Name == 'bombstuff' then
      show.Position = Workspace.CHAMPION.Part.Position
      check = true
  end
  end
  end
end
end
end)