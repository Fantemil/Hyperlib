local Library =
loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("                  Rainbow BanBan Skibi Toilet by code_00219", "RJTheme7")
local Tab = Window:NewTab("vip room")
local Section = Tab:NewSection("                   Rainbow BanBan Skibi Toilet")

Section:NewButton("unlock vip room", "unlock vip room", function()
game:GetService("Workspace")["GP Door"]:Destroy()
game:GetService("Workspace").Part:Destroy()
end)