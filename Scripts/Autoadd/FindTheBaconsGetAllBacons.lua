-- https://scriptblox.com/u/crimewave

local root = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

local bacons = game:GetService("Workspace").AllBacons

for i, v in ipairs(bacons:GetDescendants()) do
 if v:IsA("TouchTransmitter") and v.Parent.Name ~= "Disconnected Bacon" then
  firetouchinterest(root, v.Parent, 0)
  firetouchinterest(root, v.Parent, 1)
 end
end