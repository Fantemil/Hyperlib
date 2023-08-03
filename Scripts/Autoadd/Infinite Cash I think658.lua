function FindSelfTycoon()
   for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
       if (v.Factory.Player.Value == game.Players.LocalPlayer.Name) then
           return v
       end
   end
end

while true do
   do
       fireproximityprompt(FindSelfTycoon().Factory.Objects.BoughtItems["Ore Refinery"].SpellVortex.Main.Attachment.SellOres)
   end
   
   do
       local minnerai = {
           "Coal",
           "Iron",
           "Gold",
           "Diamonds",
           "Stone",
       }
   
       for i,v in pairs(minnerai) do
           workspace.Events.DataStores.uhoh:FireServer("mine",v)
       end
   end

   game.RunService.RenderStepped:Wait()
end