_G.level = true;
spawn(function()
   while _G.level and wait() do
       for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
           if v:IsA("Tool") then
               if v.Name ~= "Glider" then
                   game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                   v:Activate()
               end
           end
       end
   end
end)

_G.af = true;
spawn(function()
   while _G.af and wait() do
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "TrainDummy" then
               if v.Box then
                   v.Box.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 15
               end
           end
       end
   end
end)