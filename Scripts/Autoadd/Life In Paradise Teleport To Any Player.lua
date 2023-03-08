local plrs = game:GetService("Players")
local plr = game:GetService("Players").LocalPlayer
clone = plr.Character.HumanoidRootPart:clone()
clone.Parent = plr.Character
clone.Name = "clone"
player = plrs.namehere.Character.HumanoidRootPart
position = player.CFrame
workspace.Events.Teleport:FireServer(position)
wait(3) clone:destroy()