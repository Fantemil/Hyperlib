_G.auto = true

while _G.auto == true do
    wait()
for i,v in pairs(workspace:GetChildren()) do
    if string.find(v.Name, "orbFolder") and v:IsA("Folder") then
        for i2, v2 in pairs(v:GetChildren()) do
            for i3, v3 in pairs(v2:GetChildren()) do
                for i6,v6 in pairs(v3:GetChildren()) do
                    if string.find(v6.Name, "outer") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v6, 0)
                    end
                end
            end
        end
    end
    if string.find(v.Name, "Hoops") and v:IsA("Folder") then
        for i4, v4 in pairs(v:GetChildren()) do
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v4, 0)
        end
    end
end
end