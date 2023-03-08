local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Aaryn's Hub V2", "Serpent")

-- Game Scripts
local Tab = Window:NewTab("Game Scripts")
local Section = Tab:NewSection("Game Scripts")
Section:NewButton("Funky Friday Script", "beep beep bobobobo beep beep", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)
Section:NewButton("CS V3 (Clicker Simulator!)", "Executes CS V3 (Clicker Simulator!)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbitw2549/TbitLoader/main/Hub"))()
end)
Section:NewButton("Boxing Beta GUI", "Executes Boxing Beta GUI", function()
    local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 5
sound.SoundId = "rbxassetid://8697636436" 
sound.Looped = false
sound:Play()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheAbsolutionism/Wally-GUI-Library-V2-Remastered/main/Library%20Code", true))()

library.options.underlinecolor = 'rainbow' 
library.options.toggledisplay = 'Check'

local Window = library:CreateWindow('Boxing GYM') 
local Label = Window:Label('discord.gg/sinsploit',(nil))

local Section = Window:Section('Gloves',(true))
local Dropdown = Window:Dropdown('Dropdown',{ 
['default'] = 'Custom Gloves' or nil; 
['list'] = {"default", "Socks", "Retro","Luxury","Mitten","Pancake","CatPaws","RedSquiggles","USA Flag","Mexico Flag","Luxury2","Savage","Cuba Flag","SkeletonHand","Rainbow"}; 
['location'] = {}; 
},function(bool)
local args = {
    [1] = (bool)
}

game:GetService("ReplicatedStorage").RemoteEvents.CustomGloveRemote:FireServer(unpack(args))
end)
local Section = Window:Section('Player',(true))
local Slider = Window:Slider('WalkSpeed',{ 
    ['default'] = 10; 
    ['min'] = 7; 
    ['max'] = 25;
    ['precise'] = (true or false); 
    ['flag'] = 'ball'; 
    ['location'] = {}; 
    },function(spd)
game:GetService("ReplicatedStorage")["BOXING_STATE_WALKSPEED"].Value = (spd)
end)
    local Toggle = Window:Toggle('Auto Block',{ -- 1st Arg = Text Display
        ['default'] = (nil); -- Arg if you want to manually set it to be Active or not when created
        ['flag'] = 'block'; -- Name to be called upon when applied to specified table or default table of library
        ['location'] = {}; -- Can be edited for any table or will be placed in Window.flags
    },function(v) -- callback function when toggle is turned on or off
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
if (v) == true then
local args = {
    [1] = "blocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end
if (v) == false then
local args = {
    [1] = "unblocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end
end)
    local Toggle = Window:Toggle('Toggle PVP',{ -- 1st Arg = Text Display
        ['default'] = (nil); -- Arg if you want to manually set it to be Active or not when created
        ['flag'] = 'pvp'; -- Name to be called upon when applied to specified table or default table of library
        ['location'] = {}; -- Can be edited for any table or will be placed in Window.flags
    },function(v) -- callback function when toggle is turned on or off
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
if (v) == true then
local args = {
    [1] = "on"
}

game:GetService("ReplicatedStorage").RemoteEvents.PVPRemote:FireServer(unpack(args))
end
if (v) == false then
local args = {
    [1] = "off"
}

game:GetService("ReplicatedStorage").RemoteEvents.PVPRemote:FireServer(unpack(args))
end
end)
local Button = Window:Button('Ragdoll',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local args = {
    [1] = true
}

game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
end)
local Button = Window:Button('Unragdoll',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local args = {
    [1] = false
}
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
end)
local Button = Window:Button('Inf Dodge Stamina',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
local ow
_G.go5 = true
ow = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local m = getnamecallmethod()
    local args = {...}
    if not checkcaller() and _G.go5 == true and m == "FireServer" then
        if self.Name == "PlayerDodgeRemote" or self.Name == "PlayerStaminaRemote" then
            if args[1] == false or args[1] == true then
                print(args[1])
               return 
            end
        end
        print(self,...)
    end
    return ow(self,...)
end))
end)
local Button = Window:Button('Disable Punch Cooldown',function()
local sound = Instance.new("Sound", game.Workspace)
sound.Volume = 2
sound.SoundId = "rbxassetid://6098419898" 
sound.Looped = false
sound:Play()
game:GetService("ReplicatedStorage")["PUNCHING_COOLDOWN"].Value = 0
end)
end)
Section:NewButton("Epic Minigames Script", "Executes Epic Minigames Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI"))()
end)
Section:NewButton("Phantom Forces Script (OP)", "Executes Ceri (op ass pf script)", function()
    loadstring(game:HttpGet("https://ducksite.xyz/ceri/main.lua"))()
end)
Section:NewButton("DarkHub (Arsenal)", "Executes DarkHub (Arsenal)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)
Section:NewButton("V.G Hub (Arsenal)", "Executes V.G Hub (Arsenal)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
Section:NewButton("RAYX (DaHood)", "Executes RAYX (DaHood)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()
end)
Section:NewButton("Evo V2 (Bad Business)", "Executes Evo V2 (Bad Business)", function()
    loadstring(game:HttpGet("https://projectevo.xyz/script/loader.lua"))()
end)
Section:NewButton("Quartyz X Mukuro (Blox Fruits)", "Executes MUKURO (Blox Fruits)", function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
end)
Section:NewButton("MasterHub (Sonic Speed Simulator)", "(MasterHub) Sonic Speed Simulator", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Sonic%20Speed%20Simulator/main.lua", true))()
end)
Section:NewButton("Copy Art (Starving Artist)", "Execute Copy Art (Starving Artist)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aCFfd9Uq"))()
end)
Section:NewButton("VAPE V4 (Bed Wars)", "Executes VAPE V4 (Bed Wars)", function()
    shared.VapePrivate = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)
Section:NewButton("ZoWare V2.0 (ZOã CLANS!)", "Execute ZoWare V2.0 (ZOã CLANS!)", function()
    getgenv().LoopOverTime = .1
loadstring(game:HttpGet(('https://pastebin.com/raw/SS2VKA5S'),true))()
end)

-- Extra scripts
local Tab = Window:NewTab("Extra Scripts")
local Section = Tab:NewSection("Extra Scripts")
Section:NewButton("Simple Spy", "Executes Simple Spy", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
end)
Section:NewButton("Dex V2", "Executes Dex V2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

--Universal
local Tab = Window:NewTab("Universal")
local Section = Tab:NewSection("Universal")
Section:NewSlider("WalkSpeed", "Changes WalkSpeed", 500, 16, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
Section:NewSlider("JumpPower", "Changes JumpPower", 500, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = v
end)
Section:NewButton("AnitCheat Bypass", "Works in most games but not all", function()
    Events = true -- Allow RemoteEvents (if true, blocks if false)
    Requests = false -- Allow RemoteFunctions (if true, blocks if false)
    Hitbox = true -- Allow Normal Hitbox (if true, attempt to bypass hbe if false)
    loadstring(game:HttpGet("https://pastebin.com/raw/MZrwt5Rm", true))()
    end)

-- Settings
local Tab = Window:NewTab("Settings")
local Section = Tab:NewSection("Settings")
Section:NewKeybind("Toggle UI", "Toggle's UI", Enum.KeyCode.RightShift, function()
 Library:ToggleUI()
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("Made By aaryn#0001", "Bruh", function()

end)