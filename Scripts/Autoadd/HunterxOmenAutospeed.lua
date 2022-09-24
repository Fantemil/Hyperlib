task.spawn(function()
    while task.wait() do
        pcall(function()
                  if game:GetService("Workspace").Living[game.Players.LocalPlayer.Name].Humanoid.Info.Stamina.Value == 100 then
                  local args = {
                  [1] = "FastSprintStart",
                  [2] = false
                  }
                  game:GetService("Players").LocalPlayer.Character.Character.input:FireServer(unpack(args))
                  else 
                  if game:GetService("Workspace").Living[game.Players.LocalPlayer.Name].Humanoid.Info.Stamina.Value == 0 then
                  game.Players.LocalPlayer.Character:Destroy()
               end
            end
        end)
    end
end)