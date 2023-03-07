local XYZI
local SI
local JI
local HI
local GI

getgenv().SpamXYZ = false;
getgenv().SpamWS = false;
getgenv().SpamJP = false;
getgenv().SpamHH = false;
getgenv().SpamG = false;

function SpamXYZ(Int)
    spawn(function ()
        while getgenv().SpamXYZ == true do
            function GetInfoXYZ() return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end print(GetInfoXYZ()) wait(Int)
        end
    end)
end
function SpamWS(Int)
    spawn(function ()
        while getgenv().SpamWS == true do
            function GetInfoWS() return game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed end print(GetInfoWS()) wait(Int)
        end
    end)
end
function SpamJP(Int)
    spawn(function ()
        while getgenv().SpamJP == true do
            function GetInfoJP() return game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower end print(GetInfoJP()) wait(Int)
        end
    end)
end
function SpamHH(Int)
    spawn(function ()
        while getgenv().SpamHH == true do
            function GetInfoHH() return game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight end print(GetInfoHH()) wait(Int)
        end
    end)
end
function SpamG(Int)
    spawn(function ()
        while getgenv().SpamG == true do
            function GetInfoG() return game:GetService("Workspace").Gravity end print(GetInfoG()) wait(Int)
        end
    end)
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Dev Toolkit", IntroEnabled = true, IntroText = "Develop a lil' easier", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "Game",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

OrionLib:MakeNotification({
 Name = "Info",
 Content = "This script has main stuff you need for scripting",
 Image = "rbxassetid://4483345998",
 Time = 5
})

local Section = Tab:AddSection({
 Name = "Remotes"
})

Tab:AddButton({
 Name = "Simple Spy",
 Callback = function()
    loadstring(game:HttpGet("https://paste.ee/r/5aanl", true))()
end    
})
Tab:AddButton({
 Name = "Hydroxide",
 Callback = function()
    local owner = "Upbolt" local branch = "revision" local function webImport(file) return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')() end webImport("init") webImport("ui/main")
end    
})
Tab:AddButton({
 Name = "Mr. Spy",
 Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7JKhfPp6", true))()
end    
})

local Section = Tab:AddSection({
 Name = "Explorer"
})

Tab:AddButton({
 Name = "Dark Dex V1",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrTrustLumber/Roblox-Scripts/master/Dark%20Dex%20V1", true))()
end    
})
Tab:AddButton({
 Name = "Dark Dex V2",
 Callback = function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer%20V2.txt", true))()
end    
})
Tab:AddButton({
 Name = "Dark Dex V3 Bypassed",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end    
})
Tab:AddButton({
 Name = "Dark Dex V4",
 Callback = function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/joe22-cool/eb02c03c22ffc3c1301d30da07b0a7d0/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4", true))()
end    
})




local Tab = Window:MakeTab({
 Name = "LocalPlayer",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "WalkSpeed"
})

Tab:AddButton({
 Name = "Print WalkSpeed",
 Callback = function()
function GetInfoWS()
return game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed end
print(GetInfoWS())
end    
})
Tab:AddBind({
 Name = "Print WalkSpeed with Keybind",
 Default = Enum.KeyCode.E,
 Hold = false,
 Callback = function()
    function GetInfoWS() return game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed end print(GetInfoWS())
end    
})
Tab:AddTextbox({
 Name = "Spam Interval",
 Default = "1",
 TextDisappear = false,
 Callback = function(val)
    SI = val
end   
})
Tab:AddToggle({
 Name = "Spam Print WalkSpeed",
 Default = false,
 Callback = function(val)
    getgenv().SpamWS = val
    SpamWS(SI)
end    
})



local Section = Tab:AddSection({
 Name = "JumpPower"
})

Tab:AddButton({
 Name = "Print JumpPower",
 Callback = function()
function GetInfoJP()
return game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower end
print(GetInfoJP())
end    
})
Tab:AddBind({
 Name = "Print JumpPower with Keybind",
 Default = Enum.KeyCode.R,
 Hold = false,
 Callback = function()
    function GetInfoJP() return game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower end print(GetInfoJP())
end    
})
Tab:AddTextbox({
 Name = "Spam Interval",
 Default = "1",
 TextDisappear = false,
 Callback = function(val)
    JI = val
end   
})
Tab:AddToggle({
 Name = "Spam Print JumpPower",
 Default = false,
 Callback = function(val)
    getgenv().SpamJP = val
    SpamJP(JI)
end    
})



local Section = Tab:AddSection({
 Name = "HipHeight"
})

Tab:AddButton({
 Name = "Print Hip Height",
 Callback = function()
function GetInfoHH()
return game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight end
print(GetInfoHH())
end    
})
Tab:AddBind({
 Name = "Print Hip Height with Keybind",
 Default = Enum.KeyCode.T,
 Hold = false,
 Callback = function()
    function GetInfoHH() return game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight end print(GetInfoHH())
end    
})
Tab:AddTextbox({
 Name = "Spam Interval",
 Default = "1",
 TextDisappear = false,
 Callback = function(val)
    HI = val
end   
})
Tab:AddToggle({
 Name = "Spam Print Hip Height",
 Default = false,
 Callback = function(val)
    getgenv().SpamHH = val
    SpamHH(HI)
end    
})




local Section = Tab:AddSection({
 Name = "Gravity"
})

Tab:AddButton({
 Name = "Print Gravity",
 Callback = function()
function GetInfoG()
return game:GetService("Workspace").Gravity end
print(GetInfoG())
end    
})
Tab:AddBind({
 Name = "Print Gravity with Keybind",
 Default = Enum.KeyCode.Y,
 Hold = false,
 Callback = function()
    function GetInfoG() return game:GetService("Workspace").Gravity end print(GetInfoG())
end    
})
Tab:AddTextbox({
 Name = "Spam Interval",
 Default = "1",
 TextDisappear = false,
 Callback = function(val)
    GI = val
end   
})
Tab:AddToggle({
 Name = "Spam Print Gravity",
 Default = false,
 Callback = function(val)
    getgenv().SpamG = val
    SpamG(GI)
end    
})




local Section = Tab:AddSection({
 Name = "X Y Z"
})

Tab:AddButton({
 Name = "Print X Y Z",
 Callback = function()
function GetInfoXYZ()
return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end
print(GetInfoXYZ())
end    
})
Tab:AddBind({
 Name = "Print X Y Z with Keybind",
 Default = Enum.KeyCode.F,
 Hold = false,
 Callback = function()
    function GetInfoXYZ() return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end print(GetInfoXYZ())
end    
})
Tab:AddTextbox({
 Name = "Spam Interval",
 Default = "1",
 TextDisappear = false,
 Callback = function(val)
    XYZI = val
end   
})
Tab:AddToggle({
 Name = "Spam Print X Y Z",
 Default = false,
 Callback = function(val)
    getgenv().SpamXYZ = val
    SpamXYZ(XYZI)
end    
})

local Tab = Window:MakeTab({
 Name = "UI Libraries",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({ Name = "Orion UI (This One)", Callback = function()
setclipboard("https://github.com/darkkcontrol/Roblox-Orion-UI-Libary-OP-UI-LIBARY-/blob/main/Documentation.md")
end})
Tab:AddButton({ Name = "RayField UI (Orion UI but newer)", Callback = function()
setclipboard("https://rayfield.dev/en/introduction")
end})
Tab:AddButton({ Name = "Wally UI V3 (The one I use)", Callback = function()
setclipboard("https://github.com/bloodball/UI-Librarys/blob/main/Wally%20UI%20v3")
end})
Tab:AddButton({ Name = "Ocerium UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1167106")
end})
Tab:AddButton({ Name = "Cool UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1151036")
end})
Tab:AddButton({ Name = "Blek UI", Callback = function()
setclipboard("https://github.com/laderite/bleklib/blob/main/README.md")
end})
Tab:AddButton({ Name = "Mercury UI", Callback = function()
setclipboard("https://github.com/deeeity/mercury-lib")
end})
Tab:AddButton({ Name = "Discord UI", Callback = function()
setclipboard("https://github.com/bloodball/UI-Librarys/blob/main/Discord%20Lib")
end})
Tab:AddButton({ Name = "Kavo UI", Callback = function()
setclipboard("https://xheptcofficial.gitbook.io/kavo-library/")
end})
Tab:AddButton({ Name = "Venyx UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1026479")
end})
Tab:AddButton({ Name = "Solaris UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1142474")
end})
Tab:AddButton({ Name = "Slixx's UI", Callback = function()
setclipboard("https://slixx.gitbook.io/untitled/")
end})
Tab:AddButton({ Name = "Linoria UI", Callback = function()
setclipboard("https://github.com/violin-suzutsuki/LinoriaLib/blob/main/Example.lua")
end})
Tab:AddButton({ Name = "Pepsi's UI UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1139856")
end})
Tab:AddButton({ Name = "Flux UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1101621")
end})
Tab:AddButton({ Name = "robloxscripts.com UI", Callback = function()
setclipboard("https://v3rmillion.net/showthread.php?tid=1112691")
end})

local Tab = Window:MakeTab({
 Name = "Credits + Changelog",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Creator"
})

Tab:AddButton({
 Name = "LuaXe Community",
 Callback = function()
  setclipboard("discord.gg/vkDVfNxBTH")
   end    
})

local Section = Tab:AddSection({
 Name = "Changelogs"
})

Tab:AddParagraph("V0.1","Project Dev Toolkit Created")

OrionLib:Init()