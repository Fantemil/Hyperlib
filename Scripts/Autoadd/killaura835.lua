local guys = workspace.AliveCharacters
local localPlayer = game:GetService("Players").LocalPlayer

while true do
    local ded = {} 
    for _, part in ipairs(guys:GetChildren()) do
        if part:IsA("Model") and part ~= localPlayer.Character then  
            table.insert(ded, part)  
        end
    end
    
    if #ded > 0 then 
        local args = {
            [1] = {
                ["Character"] = localPlayer.Character,
                ["Type"] = "LA",
                ["Action"] = "EnemyHit",
                ["Enemies"] = ded  
            }
        }

       
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("HitEnemies"):FireServer(unpack(args))
    else
        print("No enemies found")
    end

    wait(0.01) 
end