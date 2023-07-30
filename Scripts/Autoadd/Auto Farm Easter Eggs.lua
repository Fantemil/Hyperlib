while wait() do
for i,v in pairs(game:GetService("Workspace").Stuff.Eggs:GetChildren()) do 
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.POS.Position)
    Wait(0.1)

local A_1 = 
{
	[1] = 
{
	[1] = v.Name
}, 
	[2] = 
{
	[1] = false
}
}
local Event = game:GetService("ReplicatedStorage").Remotes["collect egg"]
Event:FireServer(A_1)

Wait(0.2)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(305.157470703125, 19.936370849609375, -1047.3743896484375)
  Wait(0.1)
local A_1 = 
{
	[1] = 
{
	[1] = false
}, 
	[2] = 
{
	[1] = 2
}
}
local Event = game:GetService("ReplicatedStorage").Remotes["give bunny egg"]
Event:FireServer(A_1)
Wait(0.2)
end
end