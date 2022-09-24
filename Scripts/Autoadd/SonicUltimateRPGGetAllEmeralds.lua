emeraldfarm = true
while emeraldfarm do wait()
   pcall(function()
     for i,v in pairs(game:GetService("Workspace").ChaosEmeralds:GetChildren()) do
        if v:IsA("MeshPart")  then
         v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      end
    end
 end)
end