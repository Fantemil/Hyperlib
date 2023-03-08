_G.AutoSteal = true
while _G.AutoSteal do
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Part") and v.Name == ("Currency") then
        fireclickdetector(game:GetService("Workspace").Currency.ClickDetector)
    end
end
wait()
end