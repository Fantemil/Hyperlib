UNIVERSAL HUB


local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
 
local window = DrRayLibrary:Load(" Universal Hub (by sirenc00lkidd on discord)", "Default")
 
local tab = DrRayLibrary.newTab("Walkspeed", "ImageIdHere")
 
tab.newButton("100 Speed", "Click me!", function()
 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)
tab.newButton:CreateButton("The Strongest Battleground KJ", function()
tab.newbutton:CreateButton("Infinite Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infinfiniteyield/master/source'))()
end)()
end)