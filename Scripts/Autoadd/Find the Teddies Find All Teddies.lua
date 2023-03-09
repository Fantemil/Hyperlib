local work = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer.Character

for _,v in pairs(work.Teddies:GetDescendants()) do
if v:IsA("Part") and v.Owned.Value ~= true then
player.HumanoidRootPart.CFrame = v.CFrame
v.Owned.Value = true
wait(1)
end
end