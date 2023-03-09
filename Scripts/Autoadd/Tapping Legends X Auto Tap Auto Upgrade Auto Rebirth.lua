local _raw,_name = nil, "log-Elerium.lib"
local _liblink = "https://raw.githubusercontent.com/loglizzy/Elerium-lib/main/lib.original.lua"
if isfile and readfile then
    if isfile(_name) then
        _raw = readfile(_name)
    else
        _raw = game:HttpGet(_liblink)
        writefile(_name, _raw)
    end
else
    _raw = game:HttpGet(_liblink)
end

local Library = loadstring(_raw)()
local Window,WRender = Library:AddWindow("shitty simulator", {
 main_color = Color3.fromRGB(41, 74, 122),
 min_size = Vector2.new(330, 425),
 toggle_key = Enum.KeyCode.RightShift,
 can_resize = true,
})

WRender.ImageColor3 = Color3.fromRGB(55,55,55)

local flags = {}
local Main = Window:AddTab("Main")
Main:AddSwitch("Auto Tap", function(v)
    flags.tap = v
end)

Main:AddSwitch("Auto Rebirth", function(v)
    flags.rb = v
end)

Main:AddSlider("Rebirth delay (s)", function(v)
    flags.rbcd = v
end, {min=1,max=5})

Main:AddSwitch("Auto Upgrade", function(v)
    flags.ug = v
end)

Main:Show()
Main:AddLabel("Logs")
local Logs = Main:AddConsole({
 ["y"] = 210,
 ["readonly"] = true,
 ["source"] = "Lua",
})

-- MAIN
local Evt = game.ReplicatedStorage.Remotes
local Mod = game.ReplicatedStorage.Modules
local Plr = game.Players.LocalPlayer
local Data = game.ReplicatedStorage.Stats[Plr.Name]

-- setup
local Rebirths = {}
for i,v in next, require(Mod.Tables.RebirthTable) do
    table.insert(Rebirths,v)
end; table.sort(Rebirths, function(a,b)
    return a[1] > b[1]
end)

local Eggs = {}
for i,v in next, require(Mod.Tables.Eggs) do
    Eggs[i] = v
end; table.sort(Eggs, function(a,b)
    return a.Cost > b.Cost
end)

local Upgrades = {}
for i,t in next, require(Mod.Tables.Upgrades) do
    local tbl = {} 
    Upgrades[i] = tbl
    
    for i,v in next, t do
        tbl[v.Name] = v
    end
end 

-- init
spawn(function()
    while task.wait() do
        if not flags.tap then continue end
        Evt.Tap:FireServer()
    end
end)

spawn(function()
    while task.wait() do
        if flags.rb then
            for i,v in pairs(Rebirths) do
                if Data.Upgrades.RebirthsUpgrade.Value >= #Rebirths-i and v[1]*Data.Rebirths.Value <= Data.Taps.Value then
                    Evt.Rebirth:FireServer(#Rebirths-i)
                    wait(.2)
                    Logs:Log("Bought "..v[2].." Rebirth")
                    break
                end
            end
            wait(flags.rbcd or 1)
        end
    end
end)

spawn(function()
    while task.wait() do
        if flags.ug then
            for i,t in pairs(Upgrades) do
                for _,v in next,t do
                    local s1 = Data.Upgrades[v.StatName].Value
                    if s1 < v.Max and v.Price(Data.Upgrades[v.StatName].Value) <= Data[v.PriceStat].Value then
                        Evt.Upgrade:InvokeServer(i, v.StatName)
                        Logs:Log("Bought ["..v.Name.."]")
                        break
                    end
                end
            end
        end
    end
end)