local LP = game.Players.LocalPlayer
while game.RunService.Heartbeat:Wait()do
local success, err = pcall(function()
for i,v in pairs(workspace.Cash:GetChildren()) do
if v.Name == "CA$HIER" then
LP.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame * CFrame.new(0,-10,0)
fireproximityprompt(v.Hitbox.ProximityPrompt)
end
end
end)
end
if err then
warn(err)
end