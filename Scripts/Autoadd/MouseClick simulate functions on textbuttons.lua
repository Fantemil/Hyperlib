loadstring(game:HttpGet("https://gist.githubusercontent.com/tomverez/83824f6227826256aeb80ed9ff8cc6bf/raw/887263d87e73a8b3a8fa38b782d9156a6b8a7ad3/Functions.lua"))()
local Functions = _G.Functions

--[[Made by quoicoudev on scriptblox.com
Hello, here is a script to simulate button click and textbox enterpress
to do, you need to have the path of the button or textbox
here is the functions :
Functions.Mouse1ClickBtn(Path of the button) - simulate left click on the specified button
Functions.Mouse2ClickBtn(Path of the button) - simulate right click on the specified button
Functions.TextBoxWriteAndEnter(Path of the textbox, TextToWrite) - write text on the textbox and simulate enterpressend on the textbox

Warning! : this script log your name, game you are in and server id (with that i can just join you and say you hi lol)
]]

-- Exemple: this line write in the chat textbox hello guys and simulate enter pressed on it!
Functions.TextBoxWriteAndEnter(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar, "hello guys")