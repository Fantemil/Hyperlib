--library
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

--window 
local Window = OrionLib:MakeWindow({Name = "[MUSHROOM] TAPPING SIMULATOR", HidePremium = false, IntroEnabled = flase, IntroText = "RamHub", SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
_G.Autotap = true
_G.autorebirth = true
_G.autohatch = true
_G.selectegg = "StandardShop","EpicShop", "Desert1Shop","Desert2Shop"
_G.autofeed = true
_G.autoEquipBest = true
_G.automerge = true


--Functions
function Autotap()
    while _G.Autotap == true do
        game:GetService("ReplicatedStorage").PlayerClick:FireServer(false)
        wait(0.000001)
     end
    end
function autorebirth()
    while _G.autorebirth == true do
        game:GetService("ReplicatedStorage").PlayerRebirth:FireServer(5000000)
     wait(60)
    end
end


function autohatch()
    while _G.autohatch == true do
game:GetService("ReplicatedStorage").PetStoreRoll:InvokeServer(_G.selectegg,3)
wait()
    end
end


function autofeed()
while _G.autofeed == true do
    game:GetService("ReplicatedStorage").PetFeeder_Feed:InvokeServer()
    wait()
end
 end


function equipbest()
    while _G.autoEquipBest == true do
        game:GetService("ReplicatedStorage").EquipBestPets:InvokeServer()
        wait()
    end
     end

function automerge()
while _G.automerge == true do
      game:GetService("ReplicatedStorage").MergeAllPets:InvokeServer()
      wait()
end
    end

-- Tabs
local FarmTab = Window:MakeTab({
 Name = "Autofarm",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local EGGSTab = Window:MakeTab({
 Name = "Eggs",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local PetsTab = Window:MakeTab({
 Name = "Pets",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local MiscTab = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

-- Toggels

FarmTab:AddToggle({
 Name = "Auto Tap",
 Default = false,
 Callback = function(Value)
  _G.Autotap = Value
        Autotap()
 end    
})

FarmTab:AddToggle({
 Name = "Auto Rebrith",
 Default = false,
 Callback = function(Value)
        _G.autorebirth = Value
        autorebirth()
 end  

})
EGGSTab:AddToggle({
 Name = "Auto hatch",
 Default = false,
 Callback = function(Value)
        _G.autohatch = Value
        autohatch()
    end
})

PetsTab:AddToggle({
 Name = "Auto Feed",
 Default = false,
 Callback = function(Value)
  _G.autofeed = Value
        autofeed()
 end    
})

PetsTab:AddToggle({
 Name = "Auto merge",
 Default = false,
 Callback = function(Value)
  _G.automerge = Value
        automerge()
 end    
})

PetsTab:AddToggle({
 Name = "Auto Equip Best",
 Default = false,
 Callback = function(Value)
  _G.autoEquipBest = Value
        equipbest()
 end    
})

--dropdowns

EGGSTab:AddDropdown({
 Name = "Select Pet",
 Default = "BasicEgg",
 Options = {"StandardShop","EpicShop","Desert1Shop","Desert2Shop"},
 Callback = function(Value)
        _G.selectegg = Value
 end    
})


OrionLib:Init()