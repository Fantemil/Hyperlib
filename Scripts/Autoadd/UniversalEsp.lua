local Status, Script = pcall(loadstring(game:HttpGet('https://garfieldscripts.xyz/cheatx/scripts/main.lua'))())

if Status then 
    loadstring(Script)()
else 
    game.Players.LocalPlayer:Kick("\nCould not establish a connection to the server. The server may be down. Join the Discord server at garfieldscripts.xyz/discord (Copy it into your browser) for more info/help")
end