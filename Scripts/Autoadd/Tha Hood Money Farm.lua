spawn(function()

   for moneyDropIndex, moneyDrop in pairs (game.Workspace:GetDescendants()) do

       if (moneyDrop:IsA("Part") and moneyDrop.Name == "MoneyDrop") then

          fireclickdetector(moneyDrop.ClickDetector)

       end

   end

end)