local Player = game.Players.LocalPlayer
while true do
   if Player.Character and Player.Character.Parent and Player.Character.PrimaryPart then
       for i,v in next, workspace.Pickable_Scrap:GetChildren() do
           if v:IsA("UnionOperation") and v.Transparency == 0 then
               while v.Transparency == 0 do
                   if not Player.Character or not Player.Character.Parent or not Player.Character.PrimaryPart then
                       break
                   end
                   Player.Character:SetPrimaryPartCFrame(v.CFrame * CFrame.new(0, -5, 0))
                   fireproximityprompt(v.ProximityPrompt)
                   task.wait()
               end
               task.wait(1.5)
           end
       end
   end
   task.wait()
end