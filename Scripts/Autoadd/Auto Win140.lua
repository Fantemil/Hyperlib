for i,v in ipairs(game.Workspace.Map:GetChildren()) do
   task.spawn(function()
       if v.Color ~= game.Players.LocalPlayer.PlayerGui.ColorPercent.List.BarSelf.BackgroundColor3 and v.Color ~= Color3.fromRGB(163,162,165) then
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart.BlockTouchPart,v,0)
           task.wait()
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart.BlockTouchPart,v,1)
       end
   end)
end
