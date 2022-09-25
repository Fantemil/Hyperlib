local discordinv = "https://discord.gg/G5yapQh7xP"
local d
local f = pcall(function()
   d = game:HttpGet("https://raw.githubusercontent.com/LioK251/Scripts/main/"..game.PlaceId..".lua")
end)
if f == true then
   loadstring(d)()
else
game.Players.LocalPlayer:Kick("Join Discord Server for the updates! Invite link is copied. "..discordinv)
setclipboard(discordinv)
end