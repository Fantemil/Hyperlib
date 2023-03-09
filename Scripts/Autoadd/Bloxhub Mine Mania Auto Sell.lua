task.spawn(
  function()
      while task.wait(1) do
          local args = {
              [1] = workspace.Map.Mines[game.Players.LocalPlayer.PlayerData.CurrentWorld.Value].GeneratedMines[game.Players.LocalPlayer.PlayerData.CurrentWorld.Value].Seller.Seller
          }

          game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.MiningService.SellInventory:InvokeServer(
              unpack(args)
          )
      end
  end
)