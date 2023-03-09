-- Anti-Cheat Bypass
local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
   if getnamecallmethod() == 'FireServer' and tostring(self) == 'Ban' then
       return
   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'WalkSpeedChanged' then
       return
   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'AdminGUI' then
       return
   end
   return Namecall(self, ...)
end)

-- Main
local LocalPlayer = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService('ReplicatedStorage')

game.RunService.RenderStepped:Connect(function()
   for Index, Player in next, game.Players:GetPlayers() do
       if Player ~= LocalPlayer then
           local Character = Player.Character
           
           if Character:FindFirstChild('HumanoidRootPart') ~= nil and Character:FindFirstChild('Humanoid') ~= nil and Character.Humanoid.Health > 0 then
               local Magnitude = (Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
               if Magnitude < 35 then
                   ReplicatedStorage.b:FireServer(Character.Head)
               end
           end
       end
   end
end)