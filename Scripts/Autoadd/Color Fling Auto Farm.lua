local Count = 1 

local Enabled = true 
local AutoUpgradeMultiplier = true

while true do 
    if Enabled == true then 
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Classes[tostring(Count)].CFrame
            Count = Count + 1
            if AutoUpgradeMultiplier then 
                game.Players.LocalPlayer.PlayerGui['Coins/Shop'].UpgradeEvent:FireServer('Money')
            end 
        end)  
    end 
    wait(0.05)
end 