task.spawn(function()
   while wait() do
       if game.Players.LocalPlayer.leaderstats.Lv.Value < 130 then
           require(game:GetService("ReplicatedStorage").ClientData).ClientRemoteEvent.FireServerEncryption(require(game:GetService("ReplicatedStorage").Configuration).Constant.RemoteEventNames.PlayerDataRemote, "Add_Exp", 9e18)
       end
   end
end)
require(game:GetService("ReplicatedStorage").ClientData).ClientRemoteEvent.FireServerEncryption(require(game:GetService("ReplicatedStorage").Configuration).Constant.RemoteEventNames.PlayerDataRemote, "Add_Currency", "CoinNum", 9e16)
require(game:GetService("ReplicatedStorage").ClientData).ClientRemoteEvent.FireServerEncryption(require(game:GetService("ReplicatedStorage").Configuration).Constant.RemoteEventNames.PlayerDataRemote, "Free_Diamond", "Diamonds_"..math.random(-100,10000), 9e16,1)