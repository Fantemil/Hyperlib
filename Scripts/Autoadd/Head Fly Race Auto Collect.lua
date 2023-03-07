local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local humRoot = char.HumanoidRootPart

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua'))()

Library.AccentColor = Color3.new(255,0,0)

local Window = Library:CreateWindow({
    Title = 'Balls Script',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
}

local main = Tabs.Main:AddLeftGroupbox('Runes')

main:AddToggle('autoCollectRunes', {
    Text = 'Auto Collect Runes',
    Default = false,
    Tooltip = 'Automatically collects all runes',
})

Toggles.autoCollectRunes:OnChanged(function()
    while Toggles.autoCollectRunes.Value do
        for _, v in pairs(game:GetService("Workspace").Rune:GetChildren()) do
            if v:FindFirstChild("Tier") and v.Tier:FindFirstChild("TouchInterest") then
                firetouchinterest(humRoot, v.Tier, 0)
            end
        end
        task.wait()
    end
end)

main:AddToggle('autoCollectVIPRunes', {
    Text = 'Auto Collect Vip Runes',
    Default = false,
    Tooltip = 'Automatically collects all Vip runes',
})

Toggles.autoCollectVIPRunes:OnChanged(function()
    while Toggles.autoCollectVIPRunes.Value do
        for _, v in pairs(game:GetService("Workspace").VipRune:GetChildren()) do
            firetouchinterest(humRoot, v.Tier, 0)
        end
        task.wait()
    end
end)

main:AddToggle('CreateRune', {
    Text = 'Spawns Rune Quickly',
    Default = false,
    Tooltip = 'Creates runes rapidly',
})

Toggles.CreateRune:OnChanged(function()
    while Toggles.CreateRune.Value do
        game:GetService("ReplicatedStorage").Events.Match.RuneBorn:FireServer()
        task.wait()
    end
end)

main:AddLabel('Activate all for an OP rune farm')

local Misc = Tabs.Main:AddRightGroupbox('Misc.')

Misc:AddButton('Force Save', function()
    game:GetService("ReplicatedStorage").Events.Player.AutoSave:FireServer()
end)

Misc:AddButton('Unload UI', function()
    Library:Unload()
end)