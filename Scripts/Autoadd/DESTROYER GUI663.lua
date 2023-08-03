local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Jenga-Destroyer", "Midnight")

--MAIN

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewButton("End Game", "Only do it when your on Towers team!", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.85745239257812, 99.9999771118164, -18.305282592773438)
end)

MainSection:NewButton("NoKillBrick", "Removes the maps killbricks.", function()
game.Workspace.Map.Classic.KillBrick:Destroy()
end)

MainSection:NewButton("Remove Objects", "Removes the objects thrown by the Destroyer.", function()
game.Workspace.Projectiles:Destroy()
end)

MainSection:NewButton("Fly", "It makes you fly..", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/WxmvCLLH'),true))()
end)

MainSection:NewButton("Reset", "Resets your character.", function()
game.Players.LocalPlayer.Character["Head"]:Destroy()
game.Players.LocalPlayer.Character["HumanoidRootPart"]:Destroy()
end)



local Admins = Window:NewTab("Admins")
local Admins = Admins:NewSection("Admins")

Admins:NewButton("IY", "Infinite Yeild.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Admins:NewButton("Fates admin", "Fates Admin.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)










local Credits = Window:NewTab("Credits")
local Credits = Credits:NewSection("Credits")

Credits:NewLabel("Made by Jasp3r#8074")
Credits:NewLabel("This will not be getting updated just saying.")