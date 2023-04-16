local location = CFrame.new(0, 0, 0);

spawn(function()
   while wait() do
       if location ~= nil then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location;
       end;
   end;
end);

for i,v in next, workspace.StaticMap.EggHuntSpawnLocations:GetChildren() do
   location = v.CFrame + Vector3.new(0, 20, 0);
   wait(0.1);
   location = v.CFrame + Vector3.new(0, 10, 0);
   wait(0.1);
   location = v.CFrame + Vector3.new(0, 0, 0);
   wait(0.1);
   location = v.CFrame + Vector3.new(0, 20, 0);
   wait(0.1);
   location = v.CFrame + Vector3.new(0, 10, 0);
   wait(0.1);
   location = v.CFrame + Vector3.new(0, 0, 0);
   wait(0.2);
end;

location = nil;