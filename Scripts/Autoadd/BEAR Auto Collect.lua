if game:GetService("CoreGui"):FindFirstChild(game.Players.LocalPlayer.Name.."-bear-autofarm") then
warn("Already Executed - Bear Autofarm")
else
if game.PlaceId == 3203685552 then
local Only1Execute = Instance.new("Texture")
Only1Execute.Name = game.Players.LocalPlayer.Name.."-bear-autofarm"
Only1Execute.Parent = game:GetService("CoreGui")
while wait(0.5) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(407.5, 26.9999542, -27.5, 0, 0, 1, 0, 1, -0, -1, 0, 0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(190, 53, -19)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(190, 53, -19)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(5)
end
else
game:GetService("TeleportService"):Teleport(3203685552, game.Players.LocalPlayer)
end
end