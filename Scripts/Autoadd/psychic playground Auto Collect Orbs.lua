getgenv().Farm = true
while getgenv().Farm == true do task.wait()
   pcall(function()
       for i,v in pairs(game:GetService("Workspace").EnergyOrbs:GetChildren()) do
           if v.Name == "EnergyOrb" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.EnergyOrbs.EnergyOrb.CFrame
           end
       end
   end)
end