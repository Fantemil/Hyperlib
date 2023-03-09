spawn(function()
   while true do
       wait(0.2)
       local wagons = {}
       for i,v in pairs(game.Workspace.Map.Wagons:GetChildren()) do
           if v.Name == "Storage" then
               table.insert(wagons, v)
           end
       end
       local args = {
           [1] = wagons[math.random(1, #wagons)],
           [2] = "Drop"
       }
       
       game:GetService("ReplicatedStorage").Knit.Services.ItemService.RE.wagon:FireServer(unpack(args))
   end
end)