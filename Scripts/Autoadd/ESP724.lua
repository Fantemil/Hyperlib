
local player = game:GetService("Players").LocalPlayer
local myid = player.UserId

local enemysin = nil

function espsetup() 
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        local char = v.Character
        if char then
    if not char:FindFirstChild("Highlight") then
    local esp = Instance.new("Highlight")
    esp.FillTransparency = 0
    esp.Parent = char
            end
         end
       end
    end
    
    while wait() do 
    espsetup() 
    end