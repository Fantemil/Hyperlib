getgenv().autoBuy = true
getgenv().autoRebirth = false
getgenv().autoCollect = true
getgenv().infMoney = true -- Only works with autoRebirth
local rStorage = game:GetService("ReplicatedStorage")
while wait(0.3) do
   for _,v in pairs(workspace.Tycoons:GetChildren()) do
       if v.Owner.Value == game.Players.LocalPlayer.Name then
           if autoRebirth then
               rStorage.rebirthEvent:FireServer()
               if infMoney then
                   rStorage.RespawnService:FireServer(9e16)
               end
           end
           if autoBuy then
               for a,b in pairs(v.ButtonsFolder:GetChildren()) do
                   if not b:FindFirstChild("GamePass") then
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, b.Head, 0)
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, b.Head, 1)
                   end
               end
           end
           if autoCollect then
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.StarterParts.Collector.Givers.CashCollector, 0)
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.StarterParts.Collector.Givers.CashCollector, 1)
           end
       end
   end
end