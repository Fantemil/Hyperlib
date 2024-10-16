--^raw ^
warn('loading')
--loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
--warn ("my name is tanako1234567")



warn ('frr')
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Script Hub (1.0)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Universal Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "a",
	Content = "Notification content... what will it say??",
	Image = "rbxassetid://4483345998",
	Time = 5
})






Tab:AddButton({
    Name = 'Universal Tool giver(WIP)',
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua"))()
    end
})
Tab:AddButton({
    Name = 'Delete Mob Cheat Engine(Aimbot)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Mick-gordon/Hyper-Escape/main/DeleteMobCheatEngine.lua'))()
    end
})
Tab:AddButton({
    Name = 'inf yield',
    Callback = function()
        warn('loading')
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
warn ("my name is tanako1234567")
    end
})



local Tab2 = Window:MakeTab({
	Name = "Others Script Hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab2:AddButton({
	Name = "Script Hub V3",
	Callback = function()
        warn ('lmao')
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/SCRIPTHUBV3/main/SCRIPTHUBV3", true))()
        warn ('done')
    end
})

local Tab3 = Window:MakeTab({
	Name = "Hitbox",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddButton({
    Name = 'hitbox',
    Callback = function()
        local HeadSize = 25
local IsDisabled = true
local IsTeamCheckEnabled = false 

game:GetService('RunService').RenderStepped:Connect(function()
    if IsDisabled then
        local localPlayer = game:GetService('Players').LocalPlayer -- others
        if not localPlayer then return end
        
        local localPlayerTeam = localPlayer.Team
        
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player ~= localPlayer and (not IsTeamCheckEnabled or player.Team ~= localPlayerTeam) then
                local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                    humanoidRootPart.Transparency = 0.9
                    humanoidRootPart.BrickColor = BrickColor.new("Really white")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = false
                end
            end
        end
    end
end)
    end    
})





local Tab4 = Window:MakeTab({
	Name = "Elemental Powers Tycoon",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab4:AddButton({
    Name = 'Ouxi (All Executor)',
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iiprixe/Ouxi/main/Elemental%20Powers%20Tycoon%20%5Bv1%5D"))()
    end
})





local Tab5 = Window:MakeTab({
	Name = "Fling Things And People",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab5:AddButton({
    Name = 'Killa Hub V1.1(WIP)',
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BadnanaX/KillaHubV1.1/refs/heads/main/Script'))()
    end
})

Tab5:AddButton({
    Name = "Isnone (can break this hub)",
    Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Fling-Things-and-People-ppl-20407"))()
    end
})




local Tab6 = Window:MakeTab({
	Name = "The Strongest Battleground",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab6:AddButton({
    Name = 'KadeHub',
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-KadeHub-16735"))()
    end
})









local Tab7 = Window:MakeTab({
	Name = "Arsenal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab7:AddButton({
    Name = 'QuotasHub (OP)',
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Insertl/QuotasHub/main/BETAv1.3"))()
    end
})

local Tab8 = Window:MakeTab({
	Name = "Destruction Sim",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab8:AddButton({
    Name = 'inf money',
    Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Destruction-Simulator-INF-MONEY-20330"))()
    end
})


warn ('loaded!')
--[[
https://pastebin.com/raw/zzw19Z53
]]
--[[
    Tab:AddButton({
    Name = 'Name',
    Callback = function()
        --Script:

    end
})

local Tab = Window:MakeTab({
	Name = "name",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

]]