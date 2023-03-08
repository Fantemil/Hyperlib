-- Local Plr
local Players = game:GetService("Players");
local Plr = Players.LocalPlayer;
local Char = Plr.Character or Plr.CharacterAdded:Wait();
local Humanoid = Char:WaitForChild("Humanoid");

-- Made by me!
while true do
 Humanoid:Move(Vector3.new(math.random(-100000, 100000), math.random(-100000, 100000), math.random(-100000, 100000)))
 wait(0)
end