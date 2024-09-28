function partadded(part)
    if part:IsA("BasePart") and (string.find(part.Name:lower(),"torso") or string.find(part.Name:lower(),"humanoidrootpart") or string.find(part.Name:lower(),"head")) then
        part.CanCollide = true
        part.CollisionGroup = "Default"
    end
end
function charadded(char)
    for i,v in pairs(char:GetChildren()) do
        partadded(v)
    end
    char.ChildAdded:Connect(function(part)
        partadded(part)
    end)
end
function plradded(plr)
    if plr.Character then
        charadded(plr.Character)
    end
    plr.CharacterAdded:Connect(function(char)
        charadded(char)
    end)
end
for i,v in pairs(game.Players:GetPlayers()) do
    plradded(v)
end
game.Players.PlayerAdded:Connect(function(plr)
    plradded(plr)
end)