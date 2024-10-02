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



local Window = OrionLib:MakeWindow({Name = "cat bypasser NO LAG ( not official )", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})

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


]]

Tab:AddLabel("By maxlovesScripting")

Tab:AddLabel("Thanks for using this script!")

Tab:AddLabel("https://discord.com/invite/FQjWjkZnTG")

local Tab = Window:MakeTab({
	Name = "homophobic",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "My apologies, i dont speak to fagsâ¤ï¸",
	Callback = function()
      		Chat("Myapologies,idoï¿´ï¿´nï¿´ï¿´ï¿´tsï¿´ï¿´ï¿´pï¿´ï¿´ï¿´eï¿´ï¿´ï¿´ï¿´aï¿´ï¿´ï¿´ï¿´ktofï¿´ï¿´ï¿´ï¿´aï¿´ï¿´ï¿´ï¿´ï¿´gï¿´ï¿´ï¿´ï¿´sï¿´ï¿´ï¿´â¤ï¸")
  	end    
})

Tab:AddButton({
	Name = "this nigger has a cock up his ass!",
	Callback = function()
      		Chat("tï¿´Ò»ï¿´Ñï¿´Ñnï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´Ñgï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´gï¿´Ðµï¿´ï¿´ï¿´ï¿´rÒ»ï¿´Ð°ï¿´ÑÐ°Ñï¿´ï¿´ï¿´ï¿´Ð¾ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´Ñï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´kuphisÐ°ï¿´ï¿´ï¿´ï¿´Ñï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´ï¿´Ñ!")
  	end    
})

local Tab = Window:MakeTab({
	Name = "nÌÄÅ¼Ã­",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Common hitler W",
	Callback = function()
      		Chat("commonhï¿´ï¿´ï¿´iï¿´ï¿´ï¿´tï¿´ï¿´ï¿´ï¿´lï¿´ï¿´ï¿´ï¿´eï¿´ï¿´ï¿´ï¿´rï¿´ï¿´W")
  	end    
})

Tab:AddButton({
	Name = "the nazi regime was a conspiracy theory",
	Callback = function()
      		Chat("thenï¿´ï¿´aï¿´ï¿´zï¿´ï¿´irï¿´ï¿´eï¿´ï¿´gï¿´ï¿´iï¿´ï¿´mï¿´ï¿´ewasaconspiracytheory")
  	end    
})

local Tab = Window:MakeTab({
	Name = "sexual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "wsg bbg wanna see my HUGE dick?",
	Callback = function()
      		Chat("wsgbbguwÐ°ï¿´ï¿´ï¿´nnï¿´ï¿´ï¿´Ð°ÑÐµï¿´ï¿´ï¿´Ðµmï¿´ï¿´ï¿´ÑHUGEdï¿´ï¿´ï¿´ÑÑï¿´ï¿´ï¿´k?")
  	end    
})

local Tab = Window:MakeTab({
	Name = "sentences",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "yk what fuck this shit im out",
	Callback = function()
      		Chat("yï¿´ï¿´kwï¿´ï¿´hï¿´ï¿´aï¿´ï¿´tfï¿´ï¿´ï¿´uï¿´ï¿´ï¿´cï¿´ï¿´ktï¿´ï¿´hï¿´iï¿´ssï¿´hï¿´iï¿´ï¿´tiï¿´ï¿´moï¿´ï¿´uï¿´ï¿´t")
  	end    
})

Tab:AddButton({
	Name = "THIS NIGGA IS GETTING POSSESSED LOL",
	Callback = function()
      		Chat("Tï¿´ï¿´Hï¿´Iï¿´ï¿´SNï¿´ï¿´Iï¿´ï¿´Gï¿´ï¿´Gï¿´ï¿´Aï¿´ï¿´Iï¿´ï¿´SGï¿´ï¿´Eï¿´ï¿´Tï¿´Tï¿´ï¿´Iï¿´Nï¿´GPï¿´OSï¿´SEï¿´SSï¿´Eï¿´ï¿´DLOL")
  	end    
})

Tab:AddButton({
	Name = "this nigga def jerks off to skibidi toilet porn",
	Callback = function()
      		Chat("tÒ»ï¿´ï¿´ï¿´ÑÑnÑgï¿´ï¿´ï¿´gÐ°dï¿´ï¿´ï¿´Ðµfjï¿´Ðµï¿´rï¿´ksÐ¾ï¿´fï¿´ftoskibiditoiletï¿´ï¿´Ñï¿´Ð¾rï¿´ï¿´ï¿´ï¿´ï¿´n")
  	end    
})

Tab:AddButton({
	Name = "common hitler W",
	Callback = function()
      		Chat("commonhï¿´ï¿´ï¿´iï¿´ï¿´ï¿´tï¿´ï¿´ï¿´ï¿´lï¿´ï¿´ï¿´ï¿´eï¿´ï¿´ï¿´ï¿´rï¿´ï¿´W")
  	end    
})

Tab:AddButton({
	Name = "im boutta rape you cunt fag",
	Callback = function()
      		Chat("imbouttorï¿´ï¿´ï¿´Ð°Ñï¿´ï¿´ï¿´Ðµyoucï¿´ï¿´ï¿´ï¿´uï¿´ï¿´ï¿´ï¿´nï¿´ï¿´ï¿´ï¿´tï¿´ï¿´ï¿´ï¿´ï¿´fï¿´ï¿´ï¿´aï¿´ï¿´ï¿´ï¿´ï¿´g")
  	end    
})

Tab:AddButton({
	Name = "THIS NIGGA IS GETTING POSSESSED LOL",
	Callback = function()
      		Chat("Tï¿´ï¿´Hï¿´Iï¿´ï¿´SNï¿´ï¿´Iï¿´ï¿´Gï¿´ï¿´Gï¿´ï¿´Aï¿´ï¿´Iï¿´ï¿´SGï¿´ï¿´Eï¿´ï¿´Tï¿´Tï¿´ï¿´Iï¿´Nï¿´GPï¿´OSï¿´SEï¿´SSï¿´Eï¿´ï¿´DLOL")
  	end    
})

Tab:AddButton({
	Name = "your bypasser is terrible holy fuck",
	Callback = function()
      		Chat("yourbypasseristÐµrï¿´ï¿´ï¿´rÑbï¿´ï¿´ï¿´ÓÐµÒ»Ð¾ï¿´ï¿´ï¿´ÓÑfï¿´ï¿´ï¿´uÑï¿´ï¿´ï¿´k")
  	end    
})

Tab:AddButton({
	Name = ""we fight for right!" how about i rape u",
	Callback = function()
      		Chat("''wï¿´ï¿´efï¿´iï¿´gï¿´ï¿´hï¿´tfï¿´oï¿´rrï¿´iï¿´gï¿´hï¿´tï¿´sï¿´!''hï¿´oï¿´waï¿´bï¿´oï¿´uï¿´tirï¿´ï¿´aï¿´ï¿´pï¿´ï¿´ï¿´eï¿´uï¿´?")
  	end    
})

Tab:AddButton({
	Name = "thug nigga behavior",
	Callback = function()
      		Chat("tÒ»ugnÑgï¿´ï¿´ï¿´gabehavior!")
  	end    
})