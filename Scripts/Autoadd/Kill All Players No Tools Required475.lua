local remote = game:GetService("ReplicatedStorage").BurnTarget
    
function damage(model)
    local a1 = model --idk
    local a2 = model --idl
    local a3 = model:FindFirstChildOfClass("Humanoid")
    local a4 = model:FindFirstChild("HumanoidRootPart")
    local a5 = a3.MaxHealth -- health
    
    
    remote:FireServer(a1,a2,a3,a4,a5)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Character then damage(v.Character) end
end