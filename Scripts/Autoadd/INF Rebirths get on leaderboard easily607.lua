--Made By: Shag420#6729
--Makes your game REALLY laggy
--Puts Coins and Survivals to negative numbers

game:GetService'RunService'.RenderStepped:Connect(function()
task.spawn(function()
for i=0,2500,1 do -- change 5000 to a lower value ex. 1000 if you disconnect; increase if you don't
game:GetService("ReplicatedStorage").Rebirth:FireServer()
game:GetService("ReplicatedStorage").RebirthSurvival:FireServer()
end
end)
end)