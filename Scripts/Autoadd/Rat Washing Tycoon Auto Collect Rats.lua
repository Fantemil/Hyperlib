local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local plr = game:GetService("Players").LocalPlayer
local tycoons = workspace.Tycoons
_G.Active = true
plr:SetAttribute("ScrubbingSpree", true)
local search = tycoons:GetDescendants()
for i,v in pairs(search) do
if _G.Active and v:FindFirstChild("Rats") and #v.Rats:GetChildren() > 0 then
v.Rats.ChildAdded:Connect(function(rat)
if rat:IsA("Model") then
rat:PivotTo(hrp.CFrame)
end
end)
end
end