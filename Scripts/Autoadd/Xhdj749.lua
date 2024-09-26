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

game.Players.LocalPlayer:Kick("fuck")
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



local Window = OrionLib:MakeWindow({Name = "spam this while flings all", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})

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
	Name = "Words",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥

]]

Tab:AddLabel("By uhm I fogor")

Tab:AddLabel("go cuss at kids")

Tab:AddButton({
	Name = "monke",
	Callback = function()
      		Chat("monke")
  	end    
})

Tab:AddButton({
	Name = "asshole",
	Callback = function()
      		Chat("asshÐ¾lÐµ")
  	end    
})

Tab:AddButton({
	Name = "ass",
	Callback = function()
      		Chat("Ð°Ñs")
  	end    
})

Tab:AddButton({
	Name = "dumbass",
	Callback = function()
      		Chat("dumbÐ°ss")
  	end    
})
 
Tab:AddButton({
    Name = "ok fuckface",
    Callback = function()
              Chat(" Ð¾k fuÑk fÐ°ÑÐµ")
      end    
})

local Tab = Window:MakeTab({
    Name = "erm what  da shigma",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "ok I'm cool",
    Callback = function()
              Chat(" Y'Ð°ll bÑtÑÒ» Ð°ÑÑÐµÑ")
      end    
})

Tab:AddLabel("I'll probably finish this later")

Tab:AddButton({
    Name = "ÑÒ»ut tÒ»Ðµ fuÑk uÑ",
    Callback = function()
              Chat("ÑÒ»ut tÒ»Ðµ fuÑk uÑ")
      end    
})

Tab:AddButton({
    Name = "word",
    Callback = function()
              Chat("Y'Ð°ll ÑuÑÑyÑ Ò»Ð°vÐµ nÐ¾tÒ»Ñng Ð¾n mÐµ")
      end    
})

Tab:AddLabel("shout out to Max loves cats for some code")

Tab:AddButton({
    Name = "nigga",
    Callback = function()
              Chat("Niï»§gï»§gï»§aï»§")
      end    
})

Tab:AddButton({
    Name = "updated n word",
    Callback = function()
              Chat("NÃ­ÄÄÃ¥")
      end    
})

Tab:AddButton({
    Name = "ÐÒ»Ñt face",
    Callback = function()
              Chat("ÐÒ»Ñt face")
      end    
})

local Tab = Window:MakeTab({
    Name = "hard r",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = " Ð¢Ò»Ðµ Ð¾nÓÑ tÒ»ÑnÉ¡ nÑÉ¡É¡Ðµrs dÐ¾ Ñs fuÑkÑnÉ¡ ÐµÐ°t ÑÒ»ÑÑkÐµn Ð°nd wÐ°tÐµrmÐµÓÐ¾n, tÒ»ÐµÑ sÒ»Ð¾uÓd stÐ°rt bÐµÑnÉ¡ usÐµfuÓ Ð°nd stÐ°rt ÑÑÑkÑnÉ¡ ÑÐ¾ttÐ¾n!",
    Callback = function()
              Chat(" Ð¢Ò»Ðµ Ð¾nÓÑ tÒ»ÑnÉ¡ nÑÉ¡É¡Ðµrs dÐ¾ Ñs fuÑkÑnÉ¡ ÐµÐ°t ÑÒ»ÑÑkÐµn Ð°nd wÐ°tÐµrmÐµÓÐ¾n, tÒ»ÐµÑ sÒ»Ð¾uÓd stÐ°rt bÐµÑnÉ¡ usÐµfuÓ Ð°nd stÐ°rt ÑÑÑkÑnÉ¡ ÑÐ¾ttÐ¾n!")
      end    
})

Tab:AddButton({
    Name = "nigger",
    Callback = function()
              Chat("ÎÑÉ¡É¡Ðµr")
      end    
})

Tab:AddButton({
    Name = "ÎÑÉ¡É¡Ðµrs... ",
    Callback = function()
              Chat("ÎÑÉ¡É¡Ðµrs... ")
      end    
})

Tab:AddButton({
    Name = "nÑÉ¡É¡Ð°",
    Callback = function()
              Chat("nÑÉ¡É¡Ð°")
      end    
})

local Tab = Window:MakeTab({
    Name = "insane sentences",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "ÐLÐÐ¡K Ð ÐÐÐ LÐ LÐVÐ Ð lÐ¡KlNG Ð¡ÐÐ¢Ð¢ÐN",
    Callback = function()
              Chat("ÐLÐÐ¡K Ð ÐÐÐ LÐ LÐVÐ Ð lÐ¡KlNG Ð¡ÐÐ¢Ð¢ÐN")
      end    
})

Tab:AddButton({
    Name = "Heil Ò»itler",
    Callback = function()
              Chat("Heil Ò»itler")
      end    
})

Tab:AddButton({
    Name = "Roblox moderators suck ÑÐ¾Ñk",
    Callback = function()
              Chat("Roblox moderators suck ÑÐ¾Ñk")
      end    
})

Tab:AddButton({
    Name = "Im a russian ÑÐ¾Ñk and i spin like a helicopter",
    Callback = function()
              Chat("Im a russian ÑÐ¾Ñk and i spin like a helicopter")
      end    
})

local Tab = Window:MakeTab({
    Name = "NEW UPDATE",
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
      		Chat("Î¤hÐµ Ð¾nlÑ thing nÑÉ¡É¡Ðµrs dÐ¾ is ÐµÐ°t kfÑ thÐµÑ shÐ¾uld mÐ°kÐµ thÐµmsÐµlvÐµs usÐµful Ð°nd stÐ°rt ÑiÑking ÑÐ¾ttÐ¾n frÐ¾m thÐµ fiÐµld")
  	end    
})

Tab:AddButton({
    Name = "Î²Î¹Î±ÑÐºs ÎÎ Î± ÑÐ°É¡Ðµ",
    Callback = function()
              Chat("Î²Î¹Î±ÑÐºs ÎÎ Î± ÑÐ°É¡Ðµ")
      end    
})

