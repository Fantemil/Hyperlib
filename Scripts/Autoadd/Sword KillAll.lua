while true do
local LP = game:GetService("Players").LocalPlayer
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v and v.Character and v ~= LP and v.Character:FindFirstChild("Head") then
local hrp = v.Character:FindFirstChild("Head") --// I thought of using humanoidrootpart first but it works better with the head!
hrp:BreakJoints()
hrp.Transparency = 0
hrp.BrickColor = v.TeamColor
hrp.Anchored = true
hrp.CanCollide = false
pcall(function()
hrp.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(1,0,-3.5)
end)
end
end
wait(5)
end