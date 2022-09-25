while wait() do --place "--" in start of this line and in the last end to remove the loop when executing
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Part" and v:IsA("Part") and v.Shape == Enum.PartType.Ball then
v.Size = Vector3.new(20,20,20) --change this if want to make bigger or smaller
wait()
end
end
end