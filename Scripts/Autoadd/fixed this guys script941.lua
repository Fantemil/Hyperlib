--Group member access
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(442.825226, 212.445404, 134.354202, -0.487472743, -1.02232089e-08, 0.873138189, 9.85549136e-08, 1, 6.67317579e-08, -0.873138189, 1.18581973e-07, -0.487472743)

--Inf ammo AR

while wait(.3) do
local char = game.Players.LocalPlayer.Character:WaitForChild("AR")

game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponReloadRequest:FireServer(char)
end