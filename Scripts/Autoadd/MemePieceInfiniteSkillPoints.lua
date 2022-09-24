local times = 9000 --Make sure to not go over 9999 on one skill otherwise it resets all skills

        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Stats:GetDescendants()) do
        if v:IsA("RemoteEvent") and times <= 9000 then
        for i = 1,times do
        local Remote = v
        Remote:FireServer(0.5)
        end
      end
      end