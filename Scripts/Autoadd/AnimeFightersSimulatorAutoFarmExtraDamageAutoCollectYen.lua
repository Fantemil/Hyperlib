local discordinv = "https://discord.gg/phantomhub"
local d
local f = pcall(function()
   d = game:HttpGet("https://raw.githubusercontent.com/Forgxtten/Phantom-Hub/main/Supported%20Games/"..game.PlaceId..".lua")
end)
if f == true then
   loadstring(d)()
else
   game.Players.LocalPlayer:Kick("Game Not Supported Or Patched Join Discord Server For The Updates! Invite link Is Copied To Clipboard. "..discordinv)
   setclipboard(discordinv)
end