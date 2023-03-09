for i,v in ipairs(game.Workspace.Maps.Map.MapModel:GetDescendants()) do
   task.spawn(function()
       if v:FindFirstChildWhichIsA("TouchTransmitter") then
           game:GetService("ReplicatedStorage").Events.TouchRE:FireServer(v)
       end
   end)
end