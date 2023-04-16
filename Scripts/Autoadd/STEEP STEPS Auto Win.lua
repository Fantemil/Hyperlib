local lol = true

while lol do
  wait()
  if not game:GetService('Players').LocalPlayer.PlayerGui.Menu.ResetProgress.Visible then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-883.5, 3574.674, -988.5)
      fireproximityprompt(workspace.questItems.EndGame.ProximityPrompt)
  else
      wait(1)
      local args = {
       [1] = true
       }
   
       game:GetService("ReplicatedStorage").Remotes.ToggleMountainPrompt1:FireServer(unpack(args))
   
       lol = false

       wait(1)
       if #game:GetService("Players"):GetPlayers() <= 1 then
           game:GetService("Players").LocalPlayer:Kick("\nRejoining...")
           wait()
           game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
       else
           game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
       end
       
  end
end