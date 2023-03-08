local orb_spawns = workspace.OrbSpawns
local lp = game:GetService('Players').LocalPlayer

for _, orb in next, orb_spawns:GetChildren() do
if (orb:FindFirstChildOfClass('TouchTransmitter') and orb:FindFirstChild('Approved')) then
task.spawn(function()
firetouchinterest(lp.Character.PrimaryPart, orb, 0)
firetouchinterest(lp.Character.PrimaryPart, orb, 1)
end)
end
end

orb_spawns.ChildAdded:Connect(function(orb)
wait(1)
if (orb:FindFirstChildOfClass('TouchTransmitter')) then
firetouchinterest(lp.Character.PrimaryPart, orb, 0)
firetouchinterest(lp.Character.PrimaryPart, orb, 1)
end
end)