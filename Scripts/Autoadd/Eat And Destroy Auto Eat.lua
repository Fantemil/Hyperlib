if getgenv().autoEat then getgenv().autoEat = false
else getgenv().autoEat = true end
while getgenv().autoEat do
 for i, v in pairs(game:GetService("Workspace")["EDIBLE_STUFF"]:GetDescendants()) do
     if v.Name == "Food" then
      firetouchinterest(v, game:GetService("Workspace").MarinationF.HumanoidRootPart, 0)
            firetouchinterest(v, game:GetService("Workspace").MarinationF.HumanoidRootPart, 1)
     end
    end
 task.wait()
end