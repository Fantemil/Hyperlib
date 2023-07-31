local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() local Window = Library.CreateLib("Void Infinite", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Aimbot", "Works on lots of games.", function() 
    loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

MainSection:NewButton("Chat Logs", "Spy On People.", function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/suno-development/TextChatService-Chat-Spy/main/main.lua', true))('Chat Spy')
end)

MainSection:NewButton("Fly Gui V3", "Fly Around the game.", function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua'))()
end)

MainSection:NewButton("Ree Universal Script Hub", "Uh idk.", function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/REE%20CONSOLE%20RAIDER%20FIXED", true))()
end)