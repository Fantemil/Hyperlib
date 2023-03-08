local plr = game.Players.LocalPlayer
local chr = plr.Character
local root = chr.HumanoidRootPart
function get_wood()
        local dist = math.huge
        local closestWood
        for i,v in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
           if v:IsA("Model") and v:FindFirstChild('Root') then
            local magni = (root.Position - v.Root.Position).Magnitude
                if (root.Position - v.Root.Position).Magnitude < dist then
                  dist = magni
                  closestWood = v.Name
                end
            end
        end
    return closestWood
end

function Attack()
    for i,v in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
        if v.Name == get_wood() and v.Root and v.Root.ClickDetector then
            fireclickdetector(v.Root.ClickDetector)
        end
    end    
end

function isAttacking()
for i,v in pairs(game:GetService("Workspace").Fight.Pets:GetChildren())do
    if string.find(v.Name, game.Players.LocalPlayer.UserId) then
        for _,c in pairs(v:GetChildren()) do
            if c:IsA('Model') and c.PetTarget then
                if c.PetTarget.Value ~= get_wood() then
                    Attack()
                    wait(.5)
                end
            end
        end
    end
end
end

while wait() do
    isAttacking()
end