local areas = game:GetService("Workspace").MAP.SafeZones:GetChildren()
local areasTable = {}

for i,v in pairs(areas) do
    table.insert(areasTable, v.Name)
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
	Title = "Zone Teleports",
	Style = 1,
	SizeX = 300,
	SizeY = 600,
	Theme = "Dark"
})

local Teleports = UI.New({
    Title = "Teleports"
})

Teleports.Dropdown({
    Text = "Choose a zone to teleport too!",
    Callback = function(value)
        local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i,v in pairs(areas) do
                if v.Name == value then
                if v:IsA("Part") then
                    
                    hrp.CFrame = v.CFrame
                end
            end
    end
end,
        Options = areasTable
})    
