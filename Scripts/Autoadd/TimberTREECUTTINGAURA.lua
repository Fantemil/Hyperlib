getgenv().ChopTrees = true
while wait(0.1) and getgenv().ChopTrees do
   for _,v in pairs(game:GetService("Workspace").Plots[tostring(game.Players.LocalPlayer.Plot.Value)]:GetDescendants()) do
       if v:IsA("Model") and v.Name:lower():find("tree") then
           if (v.Base.CFrame.p - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < 10 then
               game:GetService("ReplicatedStorage").Communication.Remotes.HitTree:FireServer(game.Players.LocalPlayer.Plot.Value, v.Parent.Name, ({v.Name:gsub("Tree_","")})[1])
           end
       end
   end
end