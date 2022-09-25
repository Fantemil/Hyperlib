getgenv().Collect = true;
spawn(function()
   while wait() do
       if not getgenv().Collect then break end
       for i,v in pairs(game.Workspace.Map['JackOLanterns']:GetDescendants()) do
           if v.Name:find('Pumpkin') then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
               firetouchinterest(game.Players.LocalPlayer.Character.Head, v:FindFirstChild('TouchInterest').Parent, 0)
               wait(.1)
               firetouchinterest(game.Players.LocalPlayer.Character.Head, v:FindFirstChild('TouchInterest').Parent, 1)
           end
       end
   end
end)