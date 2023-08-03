--loads ui lib
local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

local toh = library:CreateTab("Tower of Hell", true)

getgenv().godmode = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
     char:WaitForChild("KillScript").Disabled = getgenv().godmode
end)
local toggle = library:MakeToggle(toh,"God-Mode",false,function(toggle)
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
    if toggle.Text == "ON" then
        getgenv().godmode = true
        char.KillScript.Disabled = getgenv().godmode
    else
        getgenv().godmode = false
        char.KillScript.Disabled = getgenv().godmode
    end
end)

local disabler = library:MakeButton(toh,"Disable Anticheat",function(button)
    --the disabler script made by myself
    getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).kick = function()
        return; -- replaces kick function with a function that just returns
    end
end)
--labels
local somucheffort = library:MakeLabel(toh,"Unobfuscated")
local pro = library:MakeLabel(toh,"Made By Tomato")
--PLEASE JOIN IM BEGGING YOU :)
local joinplease = library:MakeButton(toh,"Copy Discord Invite",function(button)
    setclipboard("https://discord.com/invite/8N2M9fHJqa")
end)
