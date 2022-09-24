--[[
██╗     ██╗██████╗ ██████╗  █████╗ ██████╗ ██╗   ██╗
██║     ██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝
██║     ██║██████╔╝██████╔╝███████║██████╔╝ ╚████╔╝ 
██║     ██║██╔══██╗██╔══██╗██╔══██║██╔══██╗  ╚██╔╝  
███████╗██║██████╔╝██║  ██║██║  ██║██║  ██║   ██║   
╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   
]]


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local watermark = library:Watermark("Fallen v3 UI | Made by supg")
-- watermark:Set("Watermark Set")
-- watermark:Hide() -- toggles watermark

local main = library:Load{
    Name = "Fallen UI",
    SizeX = 500,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "Fv3" -- config folder name
}

-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local drop_999 = false

local tab = main:Tab("Spawn Items")
local tab2 = main:Tab("Player")
local tab3 = main:Tab("Settings")

local section = tab:Section{
    Name = "Settings",
    Side = "Left"
}

local section1 = tab:Section{
    Name = "Weapons",
    Side = "Left"
}

local section2 = tab:Section{
    Name = "Mats",
    Side = "Right"
}

local section3 = tab:Section{
    Name = "Tools",
    Side = "Left"
}

local section4 = tab:Section{
    Name = "Buildings",
    Side = "Right"
}

local section5 = tab:Section{
    Name = "Booms",
    Side = "Right"
}

local section6 = tab:Section{
    Name = "Armor",
    Side = "Left"
}

local section7 = tab:Section{
    Name = "Food",
    Side = "Right"
}

--// Player tab

local godmode_sect = tab2:Section{
    Name = "Loop Heal Players",
    Side = "Left"
}

local kill_player_sect = tab2:Section{
    Name = "Kill Player",
    Side = "Right"
}

local loop_kill_players_sect = tab2:Section{
    Name = "Loop-Kill Players",
    Side = "Right"
}

--// UI Settings
local keybindsection = tab3:Section{Name = "UI Toggle Keybind", Side = "Left"}

keybindsection:Keybind{
    Name = "UI Toggle",
    Flag = "UI Toggle",
    Default = Enum.KeyCode.RightShift,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting then
            library:Close()
        end
    end
}

--[[
 ██████╗  █████╗ ███╗   ███╗███████╗    ███████╗██╗   ██╗███╗   ██╗ ██████╗███████╗
██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔════╝██║   ██║████╗  ██║██╔════╝██╔════╝
██║  ███╗███████║██╔████╔██║█████╗      █████╗  ██║   ██║██╔██╗ ██║██║     ███████╗
██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██╔══╝  ██║   ██║██║╚██╗██║██║     ╚════██║
╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ██║     ╚██████╔╝██║ ╚████║╚██████╗███████║
 ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚══════╝
]]

local Remotes = game:GetService("ReplicatedStorage").Remotes;
local Encrypt = getsenv(game.Players.LocalPlayer.PlayerGui.Stats.StatsScript).Encrypt;

local item_list = {}
for i,v in ipairs(Remotes.FetchItems:InvokeServer()) do
    item_list[v.ID] = v
end

function Damage(Player, Amount)
    if Player == "LocalPlayer" then Player = game.Players.LocalPlayer.Name end

    Remotes.DamagePlayer:FireServer(game.Players[Player].Character.Humanoid, Amount, 1099752, Encrypt())
end

function Heal(plr)
    if plr == "LocalPlayer" then 
        plr = game.Players.LocalPlayer.Name
    end
    Damage(game.Players[plr].Name, -100)
end

function Remove(instance)
    Remotes.DestroyItem:InvokeServer(instance, 1099752, Encrypt(), 2)
end

function SpawnItem(ItemId,Amount,player)
    if item_list[ItemId] == nil then return end
    if player == nil or player == "LocalPlayer" then player = game.Players.LocalPlayer.Name end
    if item_list[ItemId]["MaxStack"] < Amount then Amount = item_list[ItemId]["MaxStack"] end

    if drop_999 then Amount = 3000 end

    Remotes.DropItem:FireServer(ItemId, Amount, nil, 0, 0, game.Players[player].Character.HumanoidRootPart.CFrame, 1099752, Encrypt())
end

function SpawnWeapon(ItemId, Amount, somestuff, player)
    local item = item_list[ItemId]

    if item == nil then return end
    if player == nil or player == "LocalPlayer" then player = game.Players.LocalPlayer.Name end
    if item["MaxStack"] < Amount then Amount = item["MaxStack"] end
    local durabiltity = item["Durability"] or 0

    if drop_999 then Amount = 99 end

    Remotes.DropItem:FireServer(ItemId, Amount, somestuff, durabiltity, "0/500", game.Players[player].Character.HumanoidRootPart.CFrame, 1099752, Encrypt())
end

--[[
███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗     ██████╗ ██████╗  ██████╗ ██╗   ██╗██████╗ 
██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝    ██╔════╝ ██╔══██╗██╔═══██╗██║   ██║██╔══██╗
███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗    ██║  ███╗██████╔╝██║   ██║██║   ██║██████╔╝
╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║    ██║   ██║██╔══██╗██║   ██║██║   ██║██╔═══╝ 
███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║    ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║     
╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     
]]

--// Choose Target
local spawn_target = nil

local target_dropdown = section:Dropdown{
    Name = "Spawn Target",

    Content = {"LocalPlayer"},

    Flag = "Dropdown q2eadasd",

    Callback = function(option)
        spawn_target = option
    end
}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        target_dropdown:Add(v.Name)
    end
end

game.Players.PlayerAdded:Connect(function(Player)
    target_dropdown:Add(Player.Name)
end)

game.Players.PlayerRemoving:Connect(function(Player)
    target_dropdown:Remove(Player.Name)
end)

target_dropdown:Set("LocalPlayer")

--// Max Stack
local toggle = section:Toggle{
    Name = "Drop 3,000 (fills inventory)",
    Flag = "Toggle 11111",
    Default = false,
    Callback  = function(bool)
        drop_999 = bool
    end
}

--[[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ██╗    ██╗███████╗ █████╗ ██████╗  ██████╗ ███╗   ██╗███████╗
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ██║    ██║██╔════╝██╔══██╗██╔══██╗██╔═══██╗████╗  ██║██╔════╝
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    ██║ █╗ ██║█████╗  ███████║██████╔╝██║   ██║██╔██╗ ██║███████╗
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██║███╗██║██╔══╝  ██╔══██║██╔═══╝ ██║   ██║██║╚██╗██║╚════██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ╚███╔███╔╝███████╗██║  ██║██║     ╚██████╔╝██║ ╚████║███████║
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝     ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚══════╝
]]

--// Spawn Weapons
local spawn_item = 17

local dropdown1 = section1:Dropdown{
    Name = "Choose Weapon",

    Content = {},

    Flag = "Dropdown 1",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_item = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Gun" then 
        dropdown1:Add(v.Name)
    end
end

dropdown1:Set("Assault Rifle")

section1:Button{
    Name = "Spawn Weapon",
    Callback  = function()
        SpawnWeapon(spawn_item, 1, nil, spawn_target)
    end
}

section1:Separator("Spawn Attachments")

--// Spawn Attachments
local spawn_attachments = 114

local dropdown122 = section1:Dropdown{
    Name = "Choose Attachment",

    Content = {},

    Flag = "Dropdown 1213123",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_attachments = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Attachment" then 
        dropdown122:Add(v.Name)
    end
end

dropdown122:Set("Holo Sight")

section1:Button{
    Name = "Spawn Attachment",
    Callback  = function()
        SpawnWeapon(spawn_attachments, 1, nil, spawn_target)
    end
}


section1:Separator("Spawn Ammo")


--// Spawn Ammo
local spawnammo = 5

local dropdown1 = section1:Dropdown{
    Name = "Choose Ammo",

    Content = {
        "5.56mm Bullet",
        "9mm Bullet",
        "Buckshot",
        "Arrow",
    },

    Flag = "ammoting",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawnammo = v.ID
            end
        end
    end
}

dropdown1:Set("5.56mm Bullet")

local amount1 = 90

local slider = section1:Slider{
    Name = "Amount",
    Text = "[value]/90",
    Default = 90,
    Min = 1,
    Max = 90,
    Float = 1,
    Flag = "Slider 1",
    Callback = function(value)
        amount1 = value
    end
}

section1:Button{
    Name = "Spawn Ammo",
    Callback  = function()
        SpawnItem(spawnammo, amount1, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ███╗   ███╗ █████╗ ████████╗███████╗
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ████╗ ████║██╔══██╗╚══██╔══╝██╔════╝
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    ██╔████╔██║███████║   ██║   ███████╗
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██║╚██╔╝██║██╔══██║   ██║   ╚════██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ██║ ╚═╝ ██║██║  ██║   ██║   ███████║
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝    ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝                                                                          
]]

--// Spawn Mats
local spawn_item2 = 1

local dropdown2 = section2:Dropdown{
    Name = "Choose Material",

    Content = {"Wood Log", "Scrap", "Cloth", "Stone", "Charcoal", "Metal Fragments", "Sulfur", "Quality Metal", "Bone Fragments", "Leather", "Animal Fat", "Low Grade Fuel", "Gun Powder"},

    Flag = "Dropdown 2",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_item2 = v.ID
            end
        end
    end
}

dropdown2:Set("Wood Log")

section2:Button{
    Name = "Spawn Item",
    Callback  = function()
        SpawnItem(spawn_item2, 999, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║       ██║   ██║   ██║██║   ██║██║     ███████╗
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║       ██║   ██║   ██║██║   ██║██║     ╚════██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║       ██║   ╚██████╔╝╚██████╔╝███████╗███████║
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
]]

--// Spawn Tools
local spawn_item3 = 9

local dropdown3 = section3:Dropdown{
    Name = "Choose Tool",

    Content = {},

    Flag = "Dropdown 5",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_item3 = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Tool" then 
        dropdown3:Add(v.Name)
    end
end

dropdown3:Set("Bandage")

section3:Button{
    Name = "Spawn Tool",
    Callback  = function()
        SpawnWeapon(spawn_item3, 999, nil, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ██████╗ ██╗   ██╗██╗██╗     ██████╗ ██╗███╗   ██╗ ██████╗ 
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ██╔══██╗██║   ██║██║██║     ██╔══██╗██║████╗  ██║██╔════╝ 
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    ██████╔╝██║   ██║██║██║     ██║  ██║██║██╔██╗ ██║██║  ███╗
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██╔══██╗██║   ██║██║██║     ██║  ██║██║██║╚██╗██║██║   ██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ██████╔╝╚██████╔╝██║███████╗██████╔╝██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝    ╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
]]

--// Spawn Buildings
local spawn_item5 = 32

local dropdown5 = section4:Dropdown{
    Name = "Choose Building",

    Content = {},

    Flag = "Dropdown 3",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_item5 = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Building" then 
        dropdown5:Add(v.Name) 
    end
end

dropdown5:Set("Wooden Door")

section4:Button{
    Name = "Spawn Building",
    Callback  = function()
        SpawnItem(spawn_item5, 999, spawn_target)
    end
}

section4:Button{
    Name = "Spawn Code lock",
    Callback  = function()
        SpawnItem(33, 999, spawn_target)
    end
}

section4:Separator("Spawn Deployables")

--// Deployables
local spawn_item4 = 24

local dropdown4 = section4:Dropdown{
    Name = "Choose Deployable",

    Content = {},

    Flag = "Dropdown 4",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                spawn_item4 = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Bench" and v.Name ~= "Backpack" then 
        dropdown4:Add(v.Name) 
    end
end

dropdown4:Set("Furnace")

section4:Button{
    Name = "Spawn Deployable",
    Callback  = function()
        SpawnItem(spawn_item4, 999, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ██████╗  ██████╗  ██████╗ ███╗   ███╗
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    ██████╔╝██║   ██║██║   ██║██╔████╔██║
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██╔══██╗██║   ██║██║   ██║██║╚██╔╝██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝    ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
]]

--// Booms
local boom_spawn = 70

local boom_dropdown = section5:Dropdown{
    Name = "Choose Boom",

    Content = {
        "Timed Charge",
        "Satchel Charge",
        "Rocket Launcher",
        "Rocket",
    },

    Flag = "Dropdown Boom",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                boom_spawn = v.ID
            end
        end
    end
}

boom_dropdown:Set("Timed Charge")

section5:Button{
    Name = "Spawn Item",
    Callback  = function()
        SpawnWeapon(boom_spawn, 999, nil, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗     █████╗ ██████╗ ███╗   ███╗ ██████╗ ██████╗ 
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ██╔══██╗██╔══██╗████╗ ████║██╔═══██╗██╔══██╗
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    ███████║██████╔╝██╔████╔██║██║   ██║██████╔╝
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██╔══██║██╔══██╗██║╚██╔╝██║██║   ██║██╔══██╗
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ██║  ██║██║  ██║██║ ╚═╝ ██║╚██████╔╝██║  ██║
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝
]]

--// Armor
local armor_selection = 98

local dropdown6 = section6:Dropdown{
    Name = "Choose Armor",

    Content = {},

    Flag = "Dropdown 5345",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                armor_selection = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Armor" then 
        dropdown6:Add(v.Name) 
    end
end

dropdown6:Set("Metal Facemask")

section6:Button{
    Name = "Spawn Armor",
    Callback  = function()
        SpawnWeapon(armor_selection, 999, nil, spawn_target)
    end
}

section6:Button{
    Name = "Spawn Full Metal Set",
    Callback  = function()
        SpawnWeapon(97, 999, nil, spawn_target)
        SpawnWeapon(98, 999, nil, spawn_target)
        SpawnWeapon(85, 999, nil, spawn_target)
        SpawnWeapon(103, 999, nil, spawn_target)
        SpawnWeapon(104, 999, nil, spawn_target)
        SpawnWeapon(105, 999, nil, spawn_target)
    end
}

--[[
███████╗██████╗  █████╗ ██╗    ██╗███╗   ██╗    ███████╗ ██████╗  ██████╗ ██████╗ 
██╔════╝██╔══██╗██╔══██╗██║    ██║████╗  ██║    ██╔════╝██╔═══██╗██╔═══██╗██╔══██╗
███████╗██████╔╝███████║██║ █╗ ██║██╔██╗ ██║    █████╗  ██║   ██║██║   ██║██║  ██║
╚════██║██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║    ██╔══╝  ██║   ██║██║   ██║██║  ██║
███████║██║     ██║  ██║╚███╔███╔╝██║ ╚████║    ██║     ╚██████╔╝╚██████╔╝██████╔╝
╚══════╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝    ╚═╝      ╚═════╝  ╚═════╝ ╚═════╝ 
]]

--// Spawn Food
local food_selection = 111

local food_Dropdown = section7:Dropdown{
    Name = "Choose Food",

    Content = {},

    Flag = "Dropdown sadasdsad",

    Callback = function(option)
        for i,v in pairs(item_list) do
            if v.Name == option then 
                food_selection = v.ID
            end
        end
    end
}

for i,v in pairs(item_list) do
    if v.Type == "Food" and v.Name ~= "Large Medkit" then 
        food_Dropdown:Add(v.Name) 
    end
end

food_Dropdown:Set("Cooked Chicken")

section7:Button{
    Name = "Spawn Food",
    Callback  = function()
        SpawnItem(food_selection, 999, spawn_target)
    end
}

section7:Button{
    Name = "Spawn Soda",
    Callback  = function()
        SpawnItem(8, 999, spawn_target)
    end
}

section7:Button{
    Name = "Spawn Medkit",
    Callback  = function()
        SpawnItem(111, 999, spawn_target)
    end
}

--[[
██████╗ ██╗      █████╗ ██╗   ██╗███████╗██████╗     ████████╗ █████╗ ██████╗ 
██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝██╔════╝██╔══██╗    ╚══██╔══╝██╔══██╗██╔══██╗
██████╔╝██║     ███████║ ╚████╔╝ █████╗  ██████╔╝       ██║   ███████║██████╔╝
██╔═══╝ ██║     ██╔══██║  ╚██╔╝  ██╔══╝  ██╔══██╗       ██║   ██╔══██║██╔══██╗
██║     ███████╗██║  ██║   ██║   ███████╗██║  ██║       ██║   ██║  ██║██████╔╝
╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝       ╚═╝   ╚═╝  ╚═╝╚═════╝ 
]]

--// LoopHeal
local loop_heal = false
local heal_list = {}

local heal_dropdown = godmode_sect:Dropdown{
    Name = "Targets",
    --Default = {"Option 1"},
    Max = 10, -- makes it multi
    Content = {
        "LocalPlayer"
    },
    Flag = "MD1",
    Callback = function(option)
        heal_list = option
    end
}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        heal_dropdown:Add(v.Name)
    end
end

game.Players.PlayerAdded:Connect(function(Player)
    heal_dropdown:Add(Player.Name)
end)

game.Players.PlayerRemoving:Connect(function(Player)
    heal_dropdown:Remove(Player.Name)
end)

local loophealtoggle = godmode_sect:Toggle{
    Name = "Loop-Heal Players",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        loop_heal = bool
    end
}

game:GetService("RunService").RenderStepped:Connect(function()
 if loop_heal then 
        for i,v in pairs(heal_list) do
            Heal(v) 
        end
    end
end)



--// Kill Player

local kill_target = nil

local kill_target_dropdown = kill_player_sect:Dropdown{
    Name = "Target",

    Content = {"LocalPlayer"},

    Flag = "Dropdown q2essdadasd",

    Callback = function(option)
        kill_target = option
    end
}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        kill_target_dropdown:Add(v.Name)
    end
end

game.Players.PlayerAdded:Connect(function(Player)
    kill_target_dropdown:Add(Player.Name)
end)

game.Players.PlayerRemoving:Connect(function(Player)
    kill_target_dropdown:Remove(Player.Name)
end)

kill_target_dropdown:Set("LocalPlayer")

kill_player_sect:Button{
    Name = "Kill Player",
    Callback  = function()
        Damage(kill_target, 100)
    end
}

--// Loop Kill Players
local loop_kill = false
local hit_list = {}

local multikill_dropdown = loop_kill_players_sect:Dropdown{
    Name = "Targets",
    --Default = {"Option 1"},
    Max = 10, -- makes it multi
    Content = {
        "LocalPlayer"
    },
    Flag = "MD2",
    Callback = function(option)
        hit_list = option
    end
}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        multikill_dropdown:Add(v.Name)
    end
end

game.Players.PlayerAdded:Connect(function(Player)
    multikill_dropdown:Add(Player.Name)
end)

game.Players.PlayerRemoving:Connect(function(Player)
    multikill_dropdown:Remove(Player.Name)
end)

local loophealtoggle = loop_kill_players_sect:Toggle{
    Name = "Loop-Kill Players",
    Flag = "Toggle 2323",
    --Default = true,
    Callback  = function(bool)
        loop_kill = bool
    end
}

game:GetService("RunService").RenderStepped:Connect(function()
 if loop_kill then 
        for i,v in pairs(hit_list) do
            Damage(v, 100) 
        end
    end
end)