local Services = loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/Utilities/Services.lua'))()
local plr = game:GetService'Players'.LocalPlayer; local plrs = plr.Parent
local plrw = plr.Character
local plrh = plrw:FindFirstChild('Humanoid')
local plrhrp = plrw:FindFirstChild('HumanoidRootPart')
local Send = loadstring(game:HttpGet('https://raw.githubusercontent.com/fheahdythdr/FloppaMods/main/Utilities/Notifications.lua'))():Init()
plr.CharacterAdded:Connect(function(nchar)
    plrhrp = nchar:WaitForChild('HumanoidRootPart')
    plrw = nchar
    plrh = plrw.Humanoid
end)

local function tryMod()
    for i,v in next, plr.Backpack:GetChildren() do
        pcall(function()
            local x = require(v.Setting)
            x.Spread = 9999999
            x.ShotgunEnabled = true
            x.BulletPerShot = 50
            x.Range = 500000
            x.BaseDamage = 9999999999
            x.Auto = true
            x.ReloadTime = 0
            x.LowAmmo = false
            x.Recoil = 0
            x.MaximumRate = 500
            x.MaximumTime = 500
        end)
    end
end

plr.DescendantAdded:Connect(function()
    tryMod()
end)