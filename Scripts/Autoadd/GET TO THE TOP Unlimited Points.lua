local old
old = hookmetamethod(game, "__namecall", function(self, ...)
   local args = {...}
   
   if self.Name == "send" and getnamecallmethod() == "FireServer" and type(args[1]) == "number" then
       old(self, 9e10)
       return
   end
   return old(self, ...)
end)

firetouchinterest(workspace.TowerSpawn.TowerTop.EndingButton.TipTop.go, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)