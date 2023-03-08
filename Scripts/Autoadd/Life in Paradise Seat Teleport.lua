local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "e" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then do 
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
hrp = plr.Character.HumanoidRootPart
hrp.Anchored = true
clone = plr.Character.HumanoidRootPart:clone()
clone.Parent = plr.Character
clone.Name = "clone"
clone.Anchored = false
position = CFrame.new(mouse.Hit.X, mouse.Hit.Y, mouse.Hit.Z)
workspace.Events.Teleport:FireServer(position) wait(1)
hrp.Anchored = false
wait(3) clone:destroy()



end 
end
end)