local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local win = workspace.Wins.World6

while task.wait()do
   game:GetService("ReplicatedStorage").RebirthEvent:FireServer()

   firetouchinterest(Character.HumanoidRootPart, win, 0)
   task.wait()
   firetouchinterest(Character.HumanoidRootPart, win, 1)
end