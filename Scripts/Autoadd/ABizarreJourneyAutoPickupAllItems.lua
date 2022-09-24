local LP = game.Players.LocalPlayer
while game.RunService.Heartbeat:Wait() do
local success, err = pcall(function()
for i,v in pairs(workspace:GetChildren()) do
if v:IsA("Tool") and v.Name ~= "Unusual Arrow" and v.Name ~= "Rokakaka" and v.Name ~= "Frog" and v.Name ~= "Jotaro Hat" and v.Name ~= "Unbelievable Arrow"then
firetouchinterest(LP.Character.HumanoidRootPart,v.Handle,0)
end
end
end)
end