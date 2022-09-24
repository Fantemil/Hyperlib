getgenv().ability = true
while getgenv().ability == true do
task.wait(0.27) -- You can work on the timing to get it maxed out, i just did random time
local A_1 = "MageOfLightBlastCharged"
local A_2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local Event = game:GetService("ReplicatedStorage").Shared.Combat.Attack
Event:FireServer(A_1, A_2)
task.wait()
local A_1 = "MageOfLightCharged"
local A_2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local Event = game:GetService("ReplicatedStorage").Shared.Combat.Attack
Event:FireServer(A_1, A_2)
task.wait()
local A_1 = "MageOfLightBlast"
local A_2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local Event = game:GetService("ReplicatedStorage").Shared.Combat.Attack
Event:FireServer(A_1, A_2)
task.wait()
local A_1 = "MageOfLight"
local A_2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local Event = game:GetService("ReplicatedStorage").Shared.Combat.Attack
Event:FireServer(A_1, A_2)
end