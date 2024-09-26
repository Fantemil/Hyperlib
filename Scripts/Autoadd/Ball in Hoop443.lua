local hoop = workspace.Map.World0.Hoop.Hoop.Net["Cylinder.005"]
local plr = game.Players.LocalPlayer
local distance = (hoop.Position - plr.Character.HumanoidRootPart.Position).Magnitude
game:GetService("ReplicatedStorage"):WaitForChild("events-bXA"):WaitForChild("6c70610f-5c0b-4853-9a46-4f0042602591"):FireServer(distance)