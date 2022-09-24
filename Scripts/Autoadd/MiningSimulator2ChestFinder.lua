local _speed=50 -- lower if you are getting tp'd back (shouldn't happen)
function tp(...)
  local plr=game.Players.LocalPlayer
  local args={...}
  if typeof(args[1])=="number"and args[2]and args[3]then
     args=Vector3.new(args[1],args[2],args[3])
  elseif typeof(args[1])=="Vector3" then
      args=args[1]    
  elseif typeof(args[1])=="CFrame" then
      args=args[1].Position
  end
  local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
  game:GetService("TweenService"):Create(
      plr.Character.HumanoidRootPart,
      TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
      {CFrame=CFrame.new(args)}
  ):Play()
end

for i,v in pairs(game:GetService("Workspace").Chests:GetChildren()) do
   if v.Name == "Epic" then -- Change the name to "Wood", "Silver", "Gold", "Epic" or "Legendary"
     tp(game:GetService("Workspace").Chests.Epic.Part.Position) -- Change The Path too to .Wood, .Silver, .Gold, .Epic or ,Legendary
end
end