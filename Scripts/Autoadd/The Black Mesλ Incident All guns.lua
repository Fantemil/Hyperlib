for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.SideMenu.LoadoutMenu.GamepassWeapons:GetChildren()) do if v:IsA("TextButton") then
local v1 = v.Text
local event = game:GetService("ReplicatedStorage").LoadoutGP
event:FireServer(v1)
end end