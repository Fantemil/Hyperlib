local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CSS MENU V0.1 (Beta) (Part 2)","RJTheme7")
local Tab = Window:NewTab("Functions")
local Section = Tab:NewSection("Show Objects")
Section:NewButton("Light Dash Effect", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost1.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost2.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost3.Visible = true
end)
Section:NewButton("Blue Spheres", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.ParallaxSS3.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.WorldSS3.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Hud.SS3.Visible = true
end)
Section:NewButton("Press Start Button", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Hud.PressStart.Visible = true
end)
Section:NewButton("Title Screen", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.TitleScreen.Visible = true
end)
Section:NewButton("Camera & Marker", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Camera.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Marker.Visible = true
end)
Section:NewButton("Credits", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Credits.Visible = true
end)
Section:NewButton("Turn Off Background", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Parallax.Visible = false
end)
Section:NewButton("Turn Off All Objects", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost1.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost2.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Ghost3.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.ParallaxSS3.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.WorldSS3.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Hud.SS3.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Hud.PressStart.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.TitleScreen.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.World.Camera.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Marker.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Credits.Visible = false
end)
Section:NewButton("Turn On Background", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Parallax.Visible = true
end)
local Section = Tab:NewSection("Crash Engine")
Section:NewButton("Crash Engine", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Engine.Disabled = true
game:GetService("Players").LocalPlayer.PlayerGui.Game.Backdrop.Main.Engine.Disabled = false
end)