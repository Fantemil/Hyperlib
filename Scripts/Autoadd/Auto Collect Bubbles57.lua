getgenv().Collect = true

 spawn(function()
  local playerHead = game.Players.LocalPlayer.Character.Head
   while true do
    if not getgenv().Collect then break end
    for i, v in pairs(game:GetService("Workspace")["Programmed_Assets"].CollectableCoins:GetDescendants()) do
     if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        firetouchinterest(playerHead, v.Parent, 1)
        wait()
       end
     end
   end
end)
