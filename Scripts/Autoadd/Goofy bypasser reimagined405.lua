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



local Window = OrionLib:MakeWindow({Name = "Goofy bypasser reimagined", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})

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
	Name = "wsg my nigga",
	Callback = function()
      		Chat("wsg mÑ nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "black slave",
	Callback = function()
      		Chat("ÐlÐ°Ñk slÐ°vÐµ")
  	end    
})

Tab:AddButton({
	Name = "shut the fuck up",
	Callback = function()
      		Chat("ÑÒ»ut tÒ»Ðµ fuÑk uÑ")
  	end    
})

Tab:AddButton({
	Name = "long layout a's",
	Callback = function()
      		Chat("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
  	end    
})

local Tab = Window:MakeTab({
	Name = "Words",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "fix bypasses",
	Callback = function()
      		Chat("abcdefghijklmnop/@#$123")
  	end    
})

Tab:AddButton({
	Name = "Ass",
	Callback = function()
      		Chat("Îss")
  	end    
})

Tab:AddButton({
	Name = "Asshole",
	Callback = function()
      		Chat("AsshÐ¾lÐµ")
  	end    
})

Tab:AddButton({
	Name = "dumbass",
	Callback = function()
      		Chat("DUÎÎÎSS")
  	end    
})

Tab:AddButton({
	Name = "Arse",
	Callback = function()
      		Chat("ÎrsÐµ")
  	end    
})

Tab:AddButton({
	Name = "anal",
	Callback = function()
      		Chat("Ð°nÐ°l")
  	end    
})

Tab:AddButton({
	Name = "Bitch",
	Callback = function()
      		Chat("ÎitÑh")
  	end    
})

Tab:AddButton({
	Name = "Butthole",
	Callback = function()
      		Chat("ÐutthÐ¾lÐµ")
  	end    
})

Tab:AddButton({
	Name = "Bigass",
	Callback = function()
      		Chat("ÎigÐ°ss")
  	end    
})

Tab:AddButton({
	Name = "Bastard",
	Callback = function()
      		Chat("BÐ°stÐ°rd")
  	end    
})

Tab:AddButton({
	Name = "cock",
	Callback = function()
      		Chat("ÑÐ¾Ñk")
  	end    
})

Tab:AddButton({
	Name = "cum",
	Callback = function()
      		Chat("Ð¡um")
  	end    
})

Tab:AddButton({
	Name = "Cunt",
	Callback = function()
      		Chat("Ð¡UÎÎ¤")
  	end    
})

Tab:AddButton({
	Name = "Cunny",
	Callback = function()
      		Chat("CunnÑ")
  	end    
})

Tab:AddButton({
	Name = "Cock sucker",
	Callback = function()
      		Chat("CÐ¾Ñk suÑkÐµr")
  	end    
})

Tab:AddButton({
	Name = "Dick",
	Callback = function()
      		Chat("DÎÐ¡Î")
  	end    
})

Tab:AddButton({
	Name = "Dick sucker",
	Callback = function()
      		Chat("DÎÐ¡Î SUÐ¡ÎÎR")
  	end    
})

Tab:AddButton({
	Name = "fucktard",
	Callback = function()
      		Chat("fuÑktÐ°rd")
  	end    
})

Tab:AddButton({
	Name = "fucktards",
	Callback = function()
      		Chat("fuÑktÐ°rdÑ")
  	end    
})

Tab:AddButton({
	Name = "Hoe",
	Callback = function()
      		Chat("ÐÐ¾Ðµ")
  	end    
})

Tab:AddButton({
	Name = "ÎÎÎ",
	Callback = function()
      		Chat("ÎÎÎ")
  	end    
})

Tab:AddButton({
	Name = "Lmao",
	Callback = function()
      		Chat("LmÐ°Ð¾")
  	end    
})

Tab:AddButton({
	Name = "Lmfao",
	Callback = function()
      		Chat("LmfÐ°Ð¾")
  	end    
})

Tab:AddButton({
	Name = "nigga",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "Porn",
	Callback = function()
      		Chat("Ð Ð¾rn")
  	end    
})

Tab:AddButton({
	Name = "Piss",
	Callback = function()
      		Chat("Ð iÑÑ")
  	end    
})

Tab:AddButton({
	Name = "Queer",
	Callback = function()
      		Chat("QuÐµÐµr")
  	end    
})

Tab:AddButton({
	Name = "slut",
	Callback = function()
      		Chat("Ñlut")
  	end    
})

Tab:AddButton({
	Name = "Slave",
	Callback = function()
      		Chat("slÐ°vÐµ")
  	end    
})

Tab:AddButton({
	Name = "tranny",
	Callback = function()
      		Chat("trÐ°nnÑ")
  	end    
})

local Tab = Window:MakeTab({
	Name = "sentences",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "yap yap shut the fuck up",
	Callback = function()
      		Chat("ÑÐ°Ñ ÑÐ°Ñ ÑÒ»ut tÒ»Ðµ fuÑk uÑ")
  	end    
})

Tab:AddButton({
	Name = "YAP TO THE FUCKING YAP",
	Callback = function()
      		Chat("Î¥ÎÎ¡ Î¤Î Î¤ÎÎ FUÐ¡ÎÎÎG Î¥ÎÎ¡")
  	end    
})

local Tab = Window:MakeTab({
	Name = "long mean sentences",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Fuck you",
	Callback = function()
      		Chat("Ð lÐµÐ°sÐµ kÑs fÐ°tÐ°ss nÐ¾bÐ¾dÑ fuÑkÑnÉ¡ wÐ°nts ÑÐ¾u in this wÐ¾rld wÐµ Ð°ll wÐ°nt ÑÐ¾u tÐ¾ fuÑkÑnÉ¡ diÐµ")
  	end    
})

Tab:AddButton({
	Name = "The only thing niggers do is eat kfc and watermelon",
	Callback = function()
      		Chat("Î¤hÐµ Ð¾nlÑ thing nÑÉ¡É¡Ðµrs dÐ¾ is ÐµÐ°t kfÑ thÐµÑ shÐ¾uld mÐ°kÐµ thÐµmsÐµlvÐµs usÐµful Ð°nd stÐ°rt ÑiÑking ÑÐ¾ttÐ¾n frÐ¾m thÐµ fiÐµld")
  	end    
})