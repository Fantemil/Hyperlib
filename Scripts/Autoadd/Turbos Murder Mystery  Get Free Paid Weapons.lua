_G.auto = true
while _G.auto do
  wait()
  pcall(function()
game:GetService("ReplicatedStorage").Buy:FireServer("Void", "Weapons")
game:GetService("ReplicatedStorage").Buy:FireServer("DiamondVampireEdge", "Weapons")
end)
end