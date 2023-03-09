getgenv().enabled = true

game:GetService("RunService").RenderStepped:Connect(function()
   if getgenv().enabled == true then
       for _, v in pairs(game.Workspace:WaitForChild("Coins"):GetChildren()) do
           local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
           local hum = hrp.Parent:WaitForChild("Humanoid")
           if hum.Health > 0 then
               hrp.CFrame = v.Coin.CFrame
               hum.Jump = true
               repeat
               hrp.CFrame = v.Coin.CFrame
               hum.Jump = true
               wait(0.01)
               until v == nil or v.Parent == nil
           end
       end
   end
end)