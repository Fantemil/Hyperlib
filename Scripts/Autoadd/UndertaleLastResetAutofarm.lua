getgenv().Autofarm = true

while wait() do
   if Autofarm then
       spawn(function()
           if game.Players.LocalPlayer.LOVE.Value == 100 and game.Players.LocalPlayer.Resets.Value ~= 20 then
               repeat
                   wait(.1)
                       game:GetService("Lighting").Reset:FireServer()
                   wait(3)
                       firesignal(game.Players.LocalPlayer.PlayerGui.Reset.ResetButton.MouseButton1Click)
                   wait(7)
               until game.Players.LocalPlayer.LOVE.Value == 1
           else
               if not game.Players.LocalPlayer.Character:FindFirstChild('_battle') then
                   repeat
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3141.80273, 203.439102, 4.2156353)
                       wait(.1)
                           firesignal(game:GetService("Players").LocalPlayer.PlayerGui.InviteGUI.Frame.Go.MouseButton1Click)
                       wait(.1)
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3125.64087, 202.639053, -5.68425798)
                   until game.Players.LocalPlayer.Character:FindFirstChild('_battle')
               else
                   repeat
                       wait(5)
                   until not game.Players.LocalPlayer.Character:FindFirstChild('_battle')
               end
           end
       end)
   end
end