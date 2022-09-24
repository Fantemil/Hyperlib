local replicatedStorage = game:GetService('ReplicatedStorage');
while true do
   for _, v in next, game.Workspace:GetChildren() do
       if v.Name ~= 'AirplaneSeat' then continue end;
       
       replicatedStorage.Remotes.UpdateTaggedItemState:FireServer(v, 'Recline');
       fireclickdetector(v.ClickDetector);
   end;
   task.wait(0.25);
end;