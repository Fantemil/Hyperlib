local mine = nil

for i, v in pairs(workspace.Map.Mines[game.Players.LocalPlayer.PlayerData.CurrentWorld.Value].GeneratedMines:GetChildren()) do
  if #v.MineableBlocks:GetChildren() > 0 then
      mine = v
  end
end

for y = 1, 20 do -- depth bruh
  for e = 1, 40 do -- just leave it like this bruh
      for i = 1, 40 do -- leave it bruh lol
          task.spawn(
              function()
                  local args = {
                      [1] = tostring(i) .. ";" .. tostring(e) .. ";" .. tostring(y),
                      [2] = mine
                  }

                  game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.BlockService.DamageBlock:InvokeServer(
                      unpack(args)
                  )
              end
          )
      end
  end
end

print("brrrrrrruuuuuuuuuuuuuuuuuuuuuuuhhhhhhhh")