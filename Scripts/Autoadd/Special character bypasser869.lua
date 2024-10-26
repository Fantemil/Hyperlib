--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local TCS = game:GetService("TextChatService")
local CoreGui = game:GetService("CoreGui")
local RStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

if game.Players.LocalPlayer.name == "Porfirey" then

game.Players.LocalPlayer:Kick("fuck off u niger")
end




local Chat = function(Message)
	if isLegacy then
		local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
		ChatRemote:FireServer(Message, "All")
	else
		local Channel = TCS.TextChannels.RBXGeneral
		Channel:SendAsync(Message)
	end
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()



local Window = OrionLib:MakeWindow({Name = " special character bypass", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Welcome",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥

]]

Tab:AddLabel("By maxlovesScripting")

Tab:AddLabel("Thanks for using this script!")

Tab:AddLabel("https://discord.com/invite/FQjWjkZnTG")

local Tab = Window:MakeTab({
	Name = "recommended",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "iÌÌmÌÌ gÌÌoÌÌnÌÌnÌÌaÌÌ kÌÌiÌÌlÌÌlÌÌ yÌÌoÌÌuÌÌ nÌÌiÌÌgÌÌgÌÌaÌÌ",
	Callback = function()
      		Chat("iÌÌmÌÌ gÌÌoÌÌnÌÌnÌÌaÌÌ kÌÌiÌÌlÌÌlÌÌ yÌÌoÌÌuÌÌ nÌÌiÌÌgÌÌgÌÌaÌÌ")
  	end    
})

Tab:AddButton({
	Name = "im gonna rÌÌaÌÌpÌÌeÌÌ you nÌÌiÌÌgÌÌgÌÌaÌÌ",
	Callback = function()
      		Chat("im gonna rÌÌaÌÌpÌÌeÌÌ you nÌÌiÌÌgÌÌgÌÌaÌÌ")
  	end    
})