for i,v in pairs(workspace.BlindBoxes:GetChildren()) do
if v:IsA("Model") then
local num = tonumber(string.match(v.Name , "%d+"))
game:GetService("ReplicatedStorage").RemoteEvents.TouchEggEvent:FireServer(num)
print("Found box number "..num)
end
end