table.foreach(game:GetService("Players"):GetPlayers(), function(i,v) -- table.foreach(Table, function(index, value)
if v.Name ~= game:GetService("Players").LocalPlayer.Name then -- check if indexed value (player) is not you
if v.Character then -- check if player has a character
if v.Character:FindFirstChildOfClass("Humanoid") then -- check if player has a humanoid
game:GetService("ReplicatedStorage").DamageMuraRe:FireServer(v.Character:FindFirstChildOfClass("Humanoid"), CFrame.new(26000.029,22004.51,-13091.6,-0.8207688,-0.49807,-0.2585069,0.197676,0.172464,-0.96004977,0.52522,-0.84009813,-0.0442896), 200, 0.25, Vector3.new(800.4411,1.4570089e-06,49.2823), "rbxassetid://1202656211", 0.075, Color3.new(0,0,255), "rbxassetid://1202656211", 1, 1.1, 10)
end;
end;
end;
end);