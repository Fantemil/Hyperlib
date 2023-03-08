while task.wait(3) do
    for __, vls in next, game:GetService("Players"):GetPlayers() do
  if vls ~= game.Players.LocalPlayer then
      local args = {
          [1] = vls.Name,
          [2] = 'This server has closed as of recently.'
      }
   game:GetService("ReplicatedStorage").KickPlayer:FireServer(unpack(args))
  end
 end
end