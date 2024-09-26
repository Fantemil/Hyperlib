local plr = game.Players.LocalPlayer
local char = plr.Character
 while true do
     task.wait()
 for i, v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, math.huge, math.huge) 
    end
  end
end