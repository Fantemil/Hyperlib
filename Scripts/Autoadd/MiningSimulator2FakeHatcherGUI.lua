local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/laderite/bleklib/main/library.lua', true))()
local openFunc
    for i,v in pairs(getgc()) do
        if getinfo(v).name == 'OpenEgg' then
            openFunc = v
        end
    end
function openEgg(eggName, petName, newDisc, autoDel)
    openFunc(eggName, {{'Pet', petName, 0, newDisc or false, autoDel or false}})
end

local window = lib:Create({Name = 'MS2 Fake Hatcher', StartupSound = {Toggle = false, SoundID = 'rbxassetid://6958727243', TimePosition=1}})

local main = window:Tab('Main')
local credits = window:Tab('Credits')
credits:Label('Creator: Neex#7967')

main:Textbox('Egg Name', function(v)
    _G.EggName = v
end)

main:Textbox('Pet Name', function(v)
    _G.PetName = v
end)

main:Toggle('Auto-Deleted effect', function(v)
    _G.AutoDeleted = v
end)

main:Toggle('New-Discovered effect', function(v)
    _G.NewDiscovered = v
end)

main:Button('Hatch Egg', function()
    openEgg(_G.EggName, _G.PetName, _G.NewDiscovered, _G.AutoDeleted)
end)