local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local auto = {}
local Autofarm = false
auto.Wood = false
auto.Iron = false
auto.Cobalt = false
auto.Coins = false
auto.Amethyst = false
auto.Mushroom_Tree = false
auto.Emerald = false
auto.Topaz = false
auto.Green_Gem = false
auto.Cactus = false
auto.Ruby = false
local name = game:GetService("Players").LocalPlayer.Name
local axe = "Axe"
local pick = "Pickaxe"
local uphpevent = game:GetService("ReplicatedStorage").Attack.UpdateHPEvent;
local conv = game:GetService("ReplicatedStorage").Resources.Conversion;
local craft = game:GetService("ReplicatedStorage").Resources.BuildingRemo;
local showland = game:GetService("ReplicatedStorage").PlayerData.Unlocker.LandShow;
local plate = "IronPlate"
local plank = "Plank"
local all = "All"

local X = Material.Load({
 Title = "Obsidain: Star Simulator Edition",
 Style = 3,
 SizeX = 500,
 SizeY = 350,
 Theme = "Dark",
})

local Y = X.New({
 Title = "Main"
})

local Ye = X.New({
    Title = "Credits"
})

local AAAA = Ye.Button({
    Text = "Fungbert: UILib",
    Callback = function()
        
    end
})
local AAAAA = Ye.Button({
    Text = "Z3ta: Features",
    Callback = function()
        
    end
})

if syn then
    local XB = Y.Button({
        Text = "Copy Discord Invite to clipboard",
        Callback = function()
            syn.write_clipboard("https://discord.gg/FQRPFeFWqN")
        end
    })
elseif ScriptWare then
    local XB = Y.Button({
        Text = "Copy Discord Invite to clipboard",
        Callback = function()
            setclipboard("https://discord.gg/FQRPFeFWqN")
        end
    })
else
    local CB = Y.Button({
        Text = "Discord: FQRPFeFWqN",
        Callback = function()
            
        end
    })
end



local A = Y.Button({
 Text = "Inf Planks (Requires 15 wood or more)",
 Callback = function()
  conv:InvokeServer(plank, all)
        task.wait(0.1)
        craft:InvokeServer(plank,math.huge)
 end,
})
local AA = Y.Button({
    Text = "Inf Iron (Requires 25 iron ore or more)",
    Callback = function()
        conv:InvokeServer(plate, all)
        task.wait(0.1)
        craft:InvokeServer(plate,math.huge)
    end
})

local AAA = Y.Button({
    Text = "Unlock all land (Not Permanant)",
})

local BB = Y.Button({
    Text = "Unlock everyone's land (Not Permanant)",
    Callback = function()
        local t = {}
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(t, v.Name)
        end
        for i,name in pairs(t) do
            local data = game:GetService("Workspace")["Star_"..name].Player.Land:GetChildren()
            for a,land in pairs(data) do
                showland:FireServer(land)
            end
        end
    end
})
local B = Y.Toggle({
 Text = "Autofarm",
 Callback = function(Value)
  Autofarm = Value
 end,
 Enabled = false,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Enables/Disables autofarming for the buttons below."
            })
        end
    }
})

local E = Y.ChipSet({
 Text = "Chipping away",
 Callback = function(ChipSet)
  table.foreach(ChipSet, function(Option, Value)
   if Option == "Wood" and Value == true then
                auto.Wood = true
            elseif Option == "Wood" and Value == false then
                auto.Wood = false
            elseif Option == "Iron" and Value == true then
                auto.Iron = true
            elseif Option == "Iron" and Value == false then
                auto.Iron = false
            elseif Option == "Cobalt" and Value == true then
                auto.Cobalt = true
            elseif Option == "Cobalt" and Value == false then
                auto.Cobalt = false
            elseif Option == "Coins" and Value == true then
                auto.Coins = true
            elseif Option == "Coins" and Value == false then
                auto.Coins = false
            elseif Option == "Amethyst" and Value == true then
                auto.Amethyst = true
            elseif Option == "Amethyst" and Value == false then
                auto.Amethyst = false
            elseif Option == "Mushroom_Tree" and Value == true then
                auto.Mushroom_Tree = true
            elseif Option == "Mushroom_Tree" and Value == false then
                auto.Mushroom_Tree = false
            elseif Option == "Emerald" and Value == true then
                auto.Emerald = true
            elseif Option == "Emerald" and Value == false then
                auto.Emerald = false
            elseif Option == "Topaz" and Value == true then
                auto.Topaz = true
            elseif Option == "Topaz" and Value == false then
                auto.Topaz = false
            elseif Option == "Green_Gem" and Value == true then
                auto.Green_Gem = true
            elseif Option == "Green_Gem" and Value == false then
                auto.Green_Gem = false
            elseif Option == "Cactus" and Value == true then
                auto.Cactus = true
            elseif Option == "Cactus" and Value == false then
                auto.Cactus = false
            elseif Option == "Ruby" and Value == true then
                auto.Ruby = true
            elseif Option == "Ruby" and Value == false then
                auto.Ruby = false
            end
  end)
 end,
 Options = {
  Wood = false,
  Iron = false,
        Cobalt = false,
        Coins = false,
  Amethyst = false,
        Mushroom_Tree = false,
        Emerald = false,
        Topaz = false,
        Green_Gem = false,
        Cactus = false,
        Ruby = false,
 }
})

while task.wait() do
    if Autofarm == true then
        if auto.Wood then
            local data = game.Workspace["Star_"..name].Player.Land["Land_1140"].Tree["Tree_1006"]["1"]
            uphpevent:FireServer(data,axe)
        end
        if auto.Iron then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1090"].Ore["Ore_1009"]["2"];
            uphpevent:FireServer(data,pick)
        end
        if auto.Coins then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1070"].Ore["Ore_1004"]["1"];
            uphpevent:FireServer(data,pick)
        end
        if auto.Cobalt then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1015"].Ore["Ore_1002"]["1"];
            uphpevent:FireServer(data,pick)
        end
        if auto.Amethyst then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1067"].Ore["Ore_1005"]["1"];
            uphpevent:FireServer(data,pick)
        end
        if auto.Mushroom_Tree then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1076"].Tree["Tree_1008"]["1"];
            uphpevent:FireServer(data,axe)
        end
        if auto.Emerald then
            local data = game:GetService("Workspace")["Star_"..name].Player.Land["Land_1144"].Ore["Ore_1006"]["2"];
            uphpevent:FireServer(data,pick)
        end
        if auto.Topaz then
            local data = game.Workspace["Star_"..name].Player.Land["Land_1118"].Ore["Ore_1007"]["1"]
            uphpevent:FireServer(data,pick)
        end
        if auto.Green_Gem then
            local data = game.Workspace["Star_"..name].Player.Land["Land_1123"].Ore["Ore_1008"]["1"]
            uphpevent:FireServer(data,pick)
        end
        if auto.Cactus then
            local data = game.Workspace["Star_"..name].Player.Land["Land_1138"].Tree["Tree_1007"]["1"]
            uphpevent:FireServer(data,axe)
        end
        if auto.Ruby then
            local data = game.Workspace["Star_"..name].Player.Land["Land_1142"].Ore["Ore_1010"]["1"]
            uphpevent:FireServer(data,pick)
        end
    else

    end
end