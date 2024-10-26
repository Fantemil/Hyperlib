--//Leaked by discord.gg/visualontop

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("JosiahScripts Hub Version 0.1.1", "Default")

local tab = DrRayLibrary.newTab("Main Hubs", "ImageIdHere")

tab.newButton("OP Visual", "By Tevfn", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ab6906cda6641c69a5f3a6c0c2ad6d80.lua"))()

tab.newButton("R4mpage Script", "By R4mpage/7scripts", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/7Scripts/main/BladeBalls"))();
end)

tab.newButton("Bacon Hub", "i love Bacons", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BaconScriptHub/BaconHub/main/BaconHubBladeBall.lua.txt'))()
end)

tab.newButton("OP Auto Parry", "By pulawat", function()
xpcall(function()
loadstring(game:HttpGet("https://github.com/Stang001/pulawat/blob/main/BladeBall.lua?raw=true"))()
end,function()
warn("Script error!")
end)
end)

tab.newButton("Goose Hub V1", "Goose Hub tbh its bad", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Orangecatgamer696969/Goose-hub-blade-ball/main/Script", true))()
end)

tab.newButton("Neverlose Hub", "well its in the name", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\110\102\122\48\122\113\100\121\117\110\34\41\41\40\41\10")()
end)

tab.newButton("Sumitscript Hub", "Credits to the owner", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/SumitScripts/Blade-ball/main/SumitScripts/Loader.lua'))()
end)

tab.newButton("Private Hub", "Its Good", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/doitenroi1/private/main/private"))()
end) 

tab.newButton("Bleach hack", "Pretty op", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/00975f50438ccfe5ba5c700504abd480.lua"))()
end)

tab.newButton("Gonna add more scripts in the future stay notified! :3", "SUB TO JOSIAHSCRIPTS!", function()

end)

tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)