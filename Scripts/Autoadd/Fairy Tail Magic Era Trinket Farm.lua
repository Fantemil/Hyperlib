local Working = true

while Working do
   task.wait(1)
   Trinkets = game:GetService("Workspace").Trinkets:GetChildren()
   for i = 1, #Trinkets do
       local v = Trinkets[i]
       if v.Transparency == 0 then
           tweenService, tweenInfo =
               game:GetService("TweenService"),
               TweenInfo.new(game.Players.LocalPlayer:DistanceFromCharacter(v.Position) / 100, Enum.EasingStyle.Linear)
           local tween =
               tweenService:Create(
               game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
               tweenInfo,
               {CFrame = v.CFrame}
           )

           tween:Play()

           tween.Completed:Connect(
               function(tween)
                   if game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < 4 then
                       fireclickdetector(v.ClickPart.Clicker)
                   end
               end
           )
       end
   end
end