--[[ Made by ThroughTheFireAndFlames#9925 | https://github.com/Lvl9999/ScriptStorageV2/blob/main/README.md

        [Infinite Script Storage V2]

--]]--------------------------------------

getgenv().ToggleVisibility = "V" -- Change if you want
getgenv().ChatToOpen = "open" -- Chat in roblox "open" to show GUI
getgenv().ChatToClose = "close" -- Chat in roblox "close" to hide GUI

------------------------[[MainScript]]----------------------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/ScriptStorageV2/main/Universal"))(); 
------------------------------------------------------------------------------------------------------
getgenv().LoaderX(); -- Loader X

-------[[Create Buttons]]-----------------
getgenv().CreateButton('Test 1', function()
    print("Test 1 clicked");
end)

getgenv().CreateButton('Test 2', function()
    print("Test 2 clicked");
end)

getgenv().CreateButton('Test 3', function()
    print("Test 3 clicked");
end)

getgenv().CreateButton('Test 4', function()
    print("Test 4 clicked");
end)

getgenv().CreateButton('Test 5', function()
    print("Test 5 clicked");
end)