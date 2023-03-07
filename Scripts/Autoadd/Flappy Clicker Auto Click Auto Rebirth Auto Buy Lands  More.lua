-- Game ID: 11620947043

getgenv().autoClickEnabled = true
getgenv().autoBuyEggsEnabled = true
getgenv().autoBuyTrailsEnabled = true
getgenv().autoBuyLandsEnabled = true
getgenv().autoRebirthEnabled = true
-------------------- Config ----------------------

function autoClick()
    task.spawn(function()
        while wait(0.001) do
            if not autoClickEnabled then break end
            game:GetService("ReplicatedStorage").Remotes.Click:FireServer()
        end
    end)
end

function autoBuyEggs(egg)
    task.spawn(function()
        while wait(0.001) do
            if not autoBuyEggsEnabled then break end
            game:GetService("ReplicatedStorage").Remotes.Hatcher.HatchPet:InvokeServer(egg, 1, {})
        end
    end)
end

function autoBuyTrails(trail)
    task.spawn(function()
        while wait(0.001) do
            if not autoBuyTrailsEnabled then break end
            game:GetService("ReplicatedStorage").Remotes.Chest.OpenTrail:InvokeServer(trail, 1, {})
        end
    end)
end

function autoBuyLands(land)
    task.spawn(function()
        local lands = {"Desert", "Cavern", "Forest", "Volcano"}
        if not autoBuyLandsEnabled then return end
        for i, land in pairs(lands) do
            game:GetService("ReplicatedStorage").Remotes.Zones.BuyZone:FireServer(land)
        end
    end)
end 

function autoRebirth()
    task.spawn(function()
        while wait(0.001) do
            if not autoRebirthEnabled then break end
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        end
    end)
end

function teleportToLand(land)
    game:GetService("ReplicatedStorage").Remotes.Zones.Teleport:FireServer(land)
end

function submitCodes()
    local code = {"CREPTIEZ", "Release"}
    task.spawn(function()
        for i,v in pairs(codes) do
            game:GetService("ReplicatedStorage").Modules.Shared.TwitterCodeModule.EnterCode:InvokeServer(v)
        end
    end)
end

local settings = require(game:GetService("ReplicatedStorage").Modules.Client.Settings)

function setTrading(state)
    settings.Trading.CurrentState = state
end

function setCoinAnimation(state)
    if state then state = "Off" else state = "On" end
    settings.CoinAnimation.CurrentState = state 
end

function setSoundEffects()
    game:GetService("ReplicatedStorage").Modules.Client.Settings.SoundEffects:Fire()
end
-------------------- Functions ----------------------

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local CustomTheme = {
    Main = Color3.fromRGB(196,192,56),
    Second = Color3.fromRGB(0,0,0),
    Stroke = Color3.fromRGB(0,247,255),
    Divider = Color3.fromRGB(0,249,31),
    Text = Color3.fromRGB(255,255,255),
    TextDark = Color3.fromRGB(109,130,124)
}
    
OrionLib.Themes["Custom"] = CustomTheme
OrionLib.SelectedTheme = "Custom"

local Window = OrionLib:MakeWindow({
    Name = "ð Flappy Clicker Exploit by Balgo", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "FlappyClicker", 
    IntroText = "âï¸ Balgo Security"
})

local Auto = Window:MakeTab({
 Name = "Auto",
 Icon = "rbxassetid://11560341824",
 PremiumOnly = false
})

Auto:AddToggle({
 Name = "ð±ï¸ Auto Click",
 Callback = function(Value)
        autoClickEnabled = Value
        autoClick()
   end    
})

Auto:AddToggle({
 Name = "â¨ Auto Rebirth",
 Callback = function(Value)
        autoRebirthEnabled = Value
        autoRebirth()
   end    
})

Auto:AddToggle({
 Name = "ðºï¸ Auto Buy Lands",
 Callback = function(Value)
        autoBuyLandsEnabled = Value
        autoBuyLands()
   end    
})

Auto:AddDropdown({
    Name = "ð± Auto Buy Eggs",
    Options = {"Disable", "BasicEgg", "SandEgg", "DiamondEgg", "OvergrownEgg", "MagmaEgg"},
    Callback = function(egg)
        if egg == "Disable" then
            autoBuyEggsEnabled = false
            return
        end
        autoBuyEggs(egg)
    end
})

Auto:AddDropdown({
    Name = "ð  Auto Buy Trails",
    Options = {"Disable", "BasicChest", "SandChest", "CrystalChest", "OvergrownChest", "MagmaChest"},
    Callback = function(trail)
        if trail == "Disable" then
            autoBuyTrailsEnabled = false
            return
        end
        autoBuyTrails(trail)
    end
})

Auto:AddDropdown({
    Name = "ðºï¸ Teleport To Land",
    Options = {"Desert", "Cavern", "Forest", "Volcano"},
    Callback = function(land)
        teleportToLand(land)
    end
})

Auto:AddButton({
    Name = "ð Auto Redeem Codes",
    Callback = function()
        submitCodes()
    end
})

local Settings = Window:MakeTab({
 Name = "Settings",
 Icon = "rbxassetid://7059346373",
 PremiumOnly = false
})

Settings:AddDropdown({
    Name = "âï¸ Set Trading State",
    Options = {"All", "Friends", "Off"},
    Callback = function(state)
        setTrading(state)
    end
})

Settings:AddToggle({
    Name = "ð° Disable Coin Animation",
    Callback = function(state)
        setCoinAnimation(state)
    end
})

Settings:AddButton({
    Name = "ð Disable Sound Effects",
    Callback = function()
        setSoundEffects()
    end
})

-------------------- UI ----------------------