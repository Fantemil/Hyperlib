local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()
local lib = require(game.ReplicatedStorage.Remotes)
local event = lib.Event("SetBoothText")

local win = SolarisLib:New({
  Name = "Pls Donate Bypasser",
  FolderToSave = "/BoredStuff/BypassPlsDonate"
})

local credi = win:Tab("Things")

local cred = credi:Section("Discord Server")
cred:Label("The discord server is where I posted first!")
cred:Label("Join for daily scripts!")
cred:Button("Copy Discord Link", function()
    setclipboard('https://discord.gg/JDWPytNV3y')
    SolarisLib:Notification("Clipboard", "Pasted to clipboard.")
end)

local own = credi:Section("Owner")
own:Label("Made by BoredStuff / SayBored")
own:Button('Copy Discord User Url', function()
    setclipboard('https://url.wtf/349641851122221058')
    SolarisLib:Notification("Clipboard", "Pasted to clipboard.")
end)

local sec = credi:Section("Bypass")
sec:Textbox("Text to Bypass (this is a textbox) on right", true, function(t)
    event:FireServer('<!--' .. t .. '-->', "booth")
end)

local uti = credi:Section("Utilities")
local robuxgoal = '2k'
local boothtxt = ''
local MyBooth
local boothui = game.Players.LocalPlayer.PlayerGui.MapUIContainer.MapUI.BoothUI
local autogoal = false

function getOurBooth()
    for i,v in ipairs(boothui:GetChildren()) do
       if v.Details.Owner.Text:split("'")[1] == game.Players.LocalPlayer.DisplayName  then
           MyBooth = v
           break
        end
    end
end

getOurBooth()

uti:Textbox("Your Booth Text", false, function(t)
    boothtxt = t
    event:FireServer(t, "booth")
end)

uti:Textbox("Robux Goal", false, function(t)
    robuxgoal = t
end)

local toggle = uti:Toggle("Donation Goal (does not work w/ bypass)", false, "Toggle", function(t)
    if (t) then
        local plast = string.gsub(MyBooth.Details.Raised.Text:split(" ")[1], ",", "")
        event:FireServer(boothtxt..'\n<stroke color="rgb(0,0,210)">'..plast..'/'..robuxgoal..'</stroke>', "booth")
     else
        event:FireServer(boothtxt, "booth")
    end
end)

repeat wait(0.1) until getOurBooth()

SolarisLib:Notification("Announcement", "I'm doing a new script that uses VC. (donation = meme on vc) SOON!")

while wait() do
    local plast = string.gsub(MyBooth.Details.Raised.Text:split(" ")[1], ",", "")
    if (autogoal) then
        event:FireServer(boothtxt..'\n<stroke color="rgb(0,0,210)">'..plast..'/'..robuxgoal..'</stroke>', "booth")
    end
end