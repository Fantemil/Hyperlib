
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



local Window = OrionLib:MakeWindow({Name = "SkidLord", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})

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
	Name = "Insults",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥

]]


Tab:AddLabel("--Credits--")

Tab:AddLabel("Rip_lucknothing - suggested some bypasses")

Tab:AddLabel("Anthonys acl - for the acl")


Tab:AddLabel("Orion libary - ui")

Tab:AddButton({
	Name = "nÑÉ¡É¡Ð° É¡Ð¾t bÐ°nnÐµd nÐ¾w lÐµtÑ ÑÒ»Ð¾ut ÐÎÎRÎÎ¥!",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° É¡Ð¾t bÐ°nnÐµd nÐ¾w lÐµtÑ ÑÒ»Ð¾ut ÐÎÎRÎÎ¥!")
  	end    
})

Tab:AddButton({
	Name = "Ò»Ð¾ÑÑ Ð¾ff nÑÉ¡É¡Ð° ÑÐ¾uÐ³ ÑkÑllÑ Ð°Ð³Ðµ ÑÒ»Ñt",
	Callback = function()
      		Chat("Ò»Ð¾ÑÑ Ð¾ff nÑÉ¡É¡Ð° ÑÐ¾uÐ³ ÑkÑllÑ Ð°Ð³Ðµ ÑÒ»Ñt")
  	end    
})

Tab:AddButton({
	Name = "ÑÐ¾u fuÑkÑnÉ¡ fÐ°É¡É¡Ð¾t",
	Callback = function()
      		Chat("Ñâ¥â¥â¥Ð¾â¥u fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥É¡ fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥t")
  	end    
})


Tab:AddButton({
	Name = "lÑl nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("lÑl nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "nÑÉ¡É¡Ð° É¡Ð¾t bÐ°nnÐµd nÐ¾w lÐµtÑ ÑÒ»Ð¾ut ÐÎÎRÎÎ¥!",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° É¡Ð¾t bÐ°nnÐµd nÐ¾w lÐµtÑ ÑÒ»Ð¾ut ÐÎÎRÎÎ¥!")
  	end    
})
Tab:AddButton({
	Name = "lÑl nÑÉ¡É¡Ð° wÒ»Ð°tÑÒ»u dÐ¾ÑnÉ¡",
	Callback = function()
      		Chat("lÑl nÑÉ¡É¡Ð° wÒ»Ð°tÑÒ»u dÐ¾ÑnÉ¡")
  	end    
})
Tab:AddButton({
	Name = "lÑl nÑÉ¡É¡Ð° wÒ»Ð°t ÑÐ¾u dÐ¾ÑnÉ¡",
	Callback = function()
      		Chat("lÑl nÑÉ¡É¡Ð° wÒ»Ð°t ÑÐ¾u dÐ¾ÑnÉ¡")
  	end    
})
Tab:AddButton({
	Name = "Ð¾mÉ¡ tÒ»ÑÑ nÑÉ¡É¡Ðµr",
	Callback = function()
      		Chat("Ð¾mÉ¡ tÒ»ÑÑ nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥Ð³")
  	end    
})
Tab:AddButton({
	Name = "Ð¾k burnt ÑÒ»Ð¾ÑÐ¾lÐ°tÐµ Ð°Ñs",
	Callback = function()
      		Chat("Ð¾k burnt ÑÒ»Ð¾ÑÐ¾lÐ°tÐµ Ð°Ñs")
  	end    
})
Tab:AddButton({
	Name = "Ð¾k burnt ÑÒ»Ð°rÑÐ¾Ð°l Ð°Ñs",
	Callback = function()
      		Chat("Ð¾k burnt ÑÒ»Ð°rÑÐ¾Ð°l Ð°Ñs")
  	end    
})
Tab:AddButton({
	Name = "burnt ÑÒ»Ð°rÑÐ¾Ð°l Ð°Ñs",
	Callback = function()
      		Chat("burnt ÑÒ»Ð°rÑÐ¾Ð°l Ð°Ñs")
  	end    
})
Tab:AddButton({
	Name = "ÑÑkÐµ nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("ÑÑkÐµ nÑÉ¡É¡Ð°")
  	end    
})
Tab:AddButton({
	Name = "burnt ÑÒ»Ð°rÑÐ¾Ð°l nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("burnt ÑÒ»Ð°rÑÐ¾Ð°l nÑÉ¡É¡Ð°")
  	end    
})
Tab:AddButton({
	Name = "kÑll ÑÐ¾ur ÑÐµIf",
	Callback = function()
      		Chat("kÑll ÑÐ¾ur ÑÐµIf")
  	end    
})
Tab:AddButton({
	Name = "kÑll ÑÐ¾ur ÑÐµIf nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("kÑll ÑÐ¾ur ÑÐµIf nÑÉ¡É¡Ð°")
  	end    
})
Tab:AddButton({
	Name = "É¡Ð¾ fuÑkÑnÉ¡ jÐµÐ³k Ð¾ff ÑÐ¾ur tÑnÑ dÑÑk",
	Callback = function()
      		Chat("É¡Ð¾ fuÑkÑnÉ¡ jÐµÐ³k Ð¾ff ÑÐ¾ur tÑnÑ dÑÑk")
  	end    
})
Tab:AddButton({
	Name = "jÐµÐ³k",
	Callback = function()
      		Chat("jÐµÐ³k")
  	end    
})
Tab:AddButton({
	Name = "ÑrÑ Ð°bÐ¾ut Ñt nÑggÐ°",
	Callback = function()
      		Chat("ÑrÑ Ð°bÐ¾ut Ñt nÑÉ¡É¡Ð°")
  	end    
})
Tab:AddButton({
	Name = "bÐµÑnÉ¡ ÑuÑÒ» Ð°n Ð°ÑÑÒ»Ð¾lÐµ",
	Callback = function()
      		Chat("bÐµÑnÉ¡ ÑuÑÒ» Ð°n Ð°ÑÑÒ»Ð¾lÐµ")
  	end    
})
Tab:AddButton({
	Name = "ÑrÑ Ð°bÐ¾ut Ñt nÑÉ¡É¡ÐµÐ³",
	Callback = function()
      		Chat("ÑrÑ Ð°bÐ¾ut Ñt nÑÉ¡É¡ÐµÐ³")
  	end    
})
Tab:AddButton({
	Name = "thÐ°t Ð°Ñs É¡Ð¾nnÐ° mÐ°kÐµ mÐµ jÐµÐ³k Ð¾ff",
	Callback = function()
      		Chat("thÐ°t Ð°Ñs É¡Ð¾nnÐ° mÐ°kÐµ mÐµ jÐµÐ³k Ð¾ff")
  	end    
})
Tab:AddButton({
	Name = "Ðµz nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("Ðµz nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "tÒ»ÐµrÐµÑ Ð° ÑÐ°ÑÑÑnÉ¡ nÑÉ¡É¡Ð° ÑnfrÐ¾nt Ð¾f mÐµ",
	Callback = function()
      		Chat("tÒ»ÐµrÐµÑ Ð° ÑÐ°ÑÑÑnÉ¡ nÑÉ¡É¡Ð° ÑnfrÐ¾nt Ð¾f mÐµ")
  	end    
})

Tab:AddButton({
	Name = "nÑÉ¡É¡Ð° who asked",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° wÒ»Ð¾ Ð°ÑkÐµd")
  	end    
})

Tab:AddButton({
	Name = "nÑÉ¡É¡Ð° Ñ dÐ¾nt É¡ÑÎ½Ðµ Ð° ÑÒ»Ñt",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° Ñ dÐ¾nt É¡ÑÎ½Ðµ Ð° ÑÒ»Ñt")
  	end    
})

Tab:AddButton({
	Name = "Ñull dÐ¾wn ÑÐ¾ur ÑÐ°ntÑÐµÑ rq",
	Callback = function()
      		Chat("Ñull dÐ¾wn ÑÐ¾ur ÑÐ°ntÑÐµÑ rq")
  	end    
})



Tab:AddButton({
	Name = "Ðµz nÑÉ¡É¡ÐµÐ³",
	Callback = function()
      		Chat("Ðµz nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ÑÉ¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð³")
  	end    
})
Tab:AddButton({
	Name = "Ðµz sIâ¥â¥â¥â¥â¥â¥â¥â¥â¥ut",
	Callback = function()
      		Chat("Ðµz sIut")
  	end    
})
Tab:AddButton({
	Name = "whÐ°tÑ ÑÐ¾ur nÐ°mÐµ? (the word name gets tagged so i added this)",
	Callback = function()
      		Chat("wÒ»Ð°tÑ ÑÐ¾uÐ³ nÐ°mÐµ?")
  	end    
})
Tab:AddButton({
	Name = "'mÑ ÐµÑÐµÑ É¡lÐ¾w rÐµd wÒ»Ðµn Ñm mÐ°d Ð°Ñs' reply",
	Callback = function()
      		Chat("'mÑ ÐµÑÐµÑ É¡lÐ¾w rÐµd wÒ»Ðµn Ñm mÐ°d' Ð°Ñs reply ")
  	end    
})
Tab:AddButton({
	Name = "É¡Ðµt bÐµttÐµr nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("É¡Ðµt bÐµttÐµr nÑÉ¡É¡Ð°")
  	end    
})
Tab:AddButton({
	Name = "É¡Ðµt bÐµttÐµr nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ÑÉ¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð³",
	Callback = function()
      		Chat("É¡Ðµt bÐµttÐµr nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ÑÉ¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð³")
  	end    
})
Tab:AddButton({
	Name = "dÐ¾nt dÑÑrÐµÑÑÐµÑt ÑÐ¾ur mÐ°ÑtÐµr, ÑlÐ°Î½Ðµ.",
	Callback = function()
      		Chat("dÐ¾nt dÑÑrÐµÑÑÐµÑt ÑÐ¾ur mÐ°ÑtÐµr, Ñlâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Î½Ðµ.")
  	end    
})
Tab:AddButton({
	Name = "work harder my slaves!",
	Callback = function()
      		Chat("work harder my slaves!")
  	end    
})
Tab:AddButton({
	Name = "*wÒ»ÑÑs ÑlÐ°Î½Ðµ *",
	Callback = function()
      		Chat("*wÒ»ÑÑs ÑIÐ°Î½Ðµ *")
  	end    
})
Tab:AddButton({
	Name = "cutÐµlÑ whÑÑs ÑlÐ°Î½Ðµ >w<",
	Callback = function()
      		Chat("cutÐµlÑ wÒ»ÑÑs ÑIÐ°Î½Ðµ >w<")
  	end    
})

Tab:AddButton({
	Name = "gay",
	Callback = function()
      		Chat("É¡Ð°Ñ")
  	end    
})
Tab:AddButton({
	Name = "Ð°Ñs",
	Callback = function()
      		Chat("Ð°Ñs")
  	end    
})
Tab:AddButton({
	Name = "nÑÉ¡É¡Ð° gÐ¾ fuÑkÑng jÐµrk Ð¾ff mÑ dÑÑk",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° É¡Ð¾ fuÑkÑnÉ¡ jÐµrk Ð¾ff mÑ dÑÑk")
  	end    
})



Tab:AddButton({
	Name = "kÑÑ",
	Callback = function()
      		Chat("kÑÑ")
  	end    
})

Tab:AddButton({
	Name = "IÐ ÐÐÐUÐ¢ Ð¢Ð ÎÐRÎÎÐÐ¢Ð YÐU IN Ð ISS!",
	Callback = function()
      		Chat("IÐ ÐÐÐUÐ¢ Ð¢Ð ÎÐRÎÎÐÐ¢Ð YÐU IN Ð ISS!")
  	end    
})


Tab:AddButton({
	Name = "Ò»ÐµÑ fÐ°É¡É¡Ð¾t",
	Callback = function()
      		Chat("Ò»ÐµÑ fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥")
  	end    
})


Tab:AddButton({
	Name = "wÒ»Ð°t kÑnd Ð¾f Ð°ÑÑ ÑÑÐ³ÑÑt ÑÑ tÒ»Ð°t",
	Callback = function()
      		Chat("wÒ»Ð°t kÑnd Ð¾f Ð°ÑÑ ÑÑÐ³ÑÑt ÑÑ tÒ»Ð°t")
  	end    
})

Tab:AddButton({
	Name = "Ð° fÐ°É¡É¡Ð¾t lÑkÐµ Ð°lwÐ°ÑÑ",
	Callback = function()
      		Chat("Ð° fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ lÑkÐµ Ð°lwÐ°ÑÑ")
  	end    
})

Tab:AddButton({
	Name = "wÒ»Ð¾ mÐ°dÐµ tÒ»ÑÑ nÑÉ¡É¡Ðµr Ð°blÐµ tÐ¾ wÐ°lk?",
	Callback = function()
      		Chat("wÒ»Ð¾ mÐ°dÐµ tÒ»ÑÑ nÑÉ¡É¡Ðµr Ð°blÐµ tÐ¾ wÐ°lk?")
  	end    
})

Tab:AddButton({
	Name = "nÐ¾ wÐ°â¥Ñ Ñâ¥â¥â¥â¥â¥â¥Ð¾â¥uâ¥â¥ jâ¥uâ¥â¥â¥Ñâ¥â¥t fâ¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥Ñâ¥â¥nâ¥â¥â¥â¥â¥â¥â¥â¥â¥É¡ ÑÐ°â¥Ñd tÒ»â¥â¥â¥Ð°â¥â¥â¥t tâ¥â¥Ð¾ mâ¥Ðµ",
	Callback = function()
      		Chat("nÐ¾ wÐ°â¥Ñ Ñâ¥â¥â¥â¥â¥â¥Ð¾â¥uâ¥â¥ jâ¥uâ¥â¥â¥Ñâ¥â¥t fâ¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥Ñâ¥â¥nâ¥â¥â¥â¥â¥â¥â¥â¥â¥É¡ ÑÐ°â¥Ñd tÒ»â¥â¥â¥Ð°â¥â¥â¥t tâ¥â¥Ð¾ mâ¥Ðµ")
  	end    
})

Tab:AddButton({
	Name = "tÐ°kÐµ tÒ»Ð°t ÑÒ»Ñt bÐ°Ñk ÎOW.",
	Callback = function()
      		Chat("tÐ°kÐµ tÒ»Ð°t ÑÒ»Ñt bÐ°Ñk ÎOW.")
  	end    
})



Tab:AddButton({
	Name = "YÐ¾u'Ð³Ðµ Ð° fuÑkÑnÉ¡ lÐ¾ÑÐµÐ³!",
	Callback = function()
      	Chat("â¥Yâ¥Ð¾â¥u'râ¥â¥Ðµ Ð° fâ¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥É¡ lâ¥Ð¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥Ðµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð³!")
  	
  	
end    


})

Tab:AddButton({
	Name = "bro Ñtfu",
	Callback = function()
      	Chat("brâ¥â¥o â¥Ñâ¥â¥â¥tâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥fâ¥â¥â¥â¥â¥â¥uâ¥")
  	
  	
end    


})

Tab:AddButton({
	Name = "ÑÒ»ÑvÐµr mÐµ tÑmbÐµrÑ rÐµtÐ°rd",
	Callback = function()
      	Chat("ÑÒ»ÑvÐµÐ³ mÐµ tÑmbÐµÐ³Ñ Ð³ÐµtÐ°Ð³d")
  	
  	
end    


})

local Tab2 = Window:MakeTab({
	Name = "Compliments",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "ÐwÐ *lÐ¾Ð¾ks Ð°t youÐ³ Ò»uÉ¡Ðµ  dÑÑk*",
	Callback = function()
      		Chat("ÐwÐ *lÐ¾Ð¾ks Ð°t youÐ³ Ò»uÉ¡Ðµ  dÑÑk*")
  	end    
})

Tab2:AddButton({
	Name = "ÑÐ¾uÐ³ dÑÑk ÑÑ tÒ»Ðµ mÑlÐµÑ bÐµtwÐµÐµn ÐµÐ°Ð³tÒ» Ð°nd mÐ°rÑ",
	Callback = function()
      		Chat("ÑÐ¾uÐ³ dÑÑk ÑÑ tÒ»Ðµ mÑlÐµÑ bÐµtwÐµÐµn ÐµÐ°Ð³tÒ» Ð°nd mÐ°rÑ*")
  	end    
})

Tab2:AddButton({
	Name = "dang thats a huÉ¡Ðµ dÑÑk",
	Callback = function()
      	Chat("dÐ°nÉ¡ tÒ»Ð°tÑ Ð° bÑÉ¡ dÑÑk")
  	end    
})

Tab2:AddButton({
	Name = "É¡Ð¾ ridÐµ mÑ fuÑkÑnÉ¡ dÑÑk",
	Callback = function()
      	Chat("nÑÉ¡É¡Ð° É¡Ð¾ Ò»Ð¾Ñ Ð¾n mÑ fuÑkÑnÉ¡ dÑÑk")
  	end    
})


Tab2:AddLabel("more shit will be added")


local Tab3 = Window:MakeTab({
	Name = "Racist shiz",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})




Tab3:AddButton({
	Name = "blÐ°Ñk ÑlÐ°Î½Ðµ",
	Callback = function()
      	Chat("bIÐ°Ñk ÑIÐ°Î½Ðµ")
  	end    
})


Tab3:AddButton({
	Name = "blÐ°Ñk ÑlÐ°Î½Ðµry",
	Callback = function()
      	Chat("bIÐ°Ñk ÑIÐ°Î½ÐµrÑ")
  	end    
})

Tab3:AddButton({
	Name = "hi my blÐ°Ñk ÑlÐ°Î½Ðµ",
	Callback = function()
      	Chat("Ò»Ñ mÑ bIÐ°Ñk ÑIÐ°Î½Ðµ")
  	end    
})

Tab3:AddButton({
	Name = "i miss blÐ°Ñk ÑlÐ°Î½Ðµry",
	Callback = function()
      	Chat("Ñ mÑÑÑ bIÐ°Ñk ÑIÐ°Î½ÐµrÑ")
  	end    
})

Tab3:AddButton({
	Name = "ÎÎÎ club was AMAZING!",
	Callback = function()
      	Chat("ÎÎÎ club was AMAZING!")
  	end    
})




Tab3:AddButton({
	Name = "selling slaves 5 dollars each!",
	Callback = function()
      	Chat("ÑÐµllÑnÉ¡ ÑlÐ°Î½ÐµÑ 5 dÐ¾llÐ°rÑ ÐµÐ°ÑÒ»!")
  	end    
})





local Tab4 = Window:MakeTab({
	Name = "*THIS TYPE OF SHIT*",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})


Tab4:AddButton({
	Name = "*ÑÑÑÑÐµÑ Ñn ÑÐ¾Ð¾l*",
	Callback = function()
      	Chat("*ÑÑÑÑÐµÑ Ñn ÑÐ¾Ð¾l*")
  	end    
})



Tab4:AddButton({
	Name = "*cums very fucking much*",
	Callback = function()
      	Chat("*Ñâ¥â¥â¥â¥â¥â¥uâ¥â¥â¥mâ¥â¥â¥â¥â¥â¥â¥â¥Ñ vâ¥â¥â¥Ðµâ¥â¥râ¥â¥â¥â¥â¥â¥Ñ fâ¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥kâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥É¡ mâ¥â¥â¥â¥uâ¥â¥â¥â¥Ñâ¥â¥â¥â¥Ò»*")
  	end    
})

Tab4:AddButton({
	Name = "ÑÒ»ut tÒ»Ðµ fuÑk uÑ Ñm tÐ³ÑÑnÉ¡ tÐ¾ ÐµnjÐ¾Ñ life",
	Callback = function()
      	Chat("ÑÒ»ut tÒ»Ðµ fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥k uÑ Ñm tÐ³ÑÑnÉ¡ tÐ¾ ÐµnjÐ¾Ñ life")
  	end    
})

Tab4:AddButton({
	Name = "ÑÐ¾u'rÐµ ÑkÑnnÑ Ð°Ñ fuÑk",
	Callback = function()
      	Chat("ÑÐ¾u'rÐµ ÑkÑnnÑ Ð°Ñ fuÑk")
  	end    
})

Tab4:AddButton({
	Name = "you better shut up or your butthole is gonna explode",
	Callback = function()
      	Chat("ÑÐ¾u bÐµttÐµr ÑÒ»ut uÑ Ð¾Ð³ ÑÐ¾uÐ³ buttÒ»Ð¾lÐµ ÑÑ gÐ¾nnÐ° ÐµÑÑlÐ¾dÐµ")
  	end    
})

Tab4:AddButton({
	Name = "Ñ'll fuÑkÑnÉ¡ kÑll ÑÐ¾u Ð°ftÐµr Ð¾nÐµ wÐ¾rd ÑÐ¾mÐµÑ Ð¾ut Ð¾f ÑÐ¾ur mÐ¾utÒ»",
	Callback = function()
      	Chat("Ñ'lâ¥l fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡ kÑll ÑÐ¾u Ð°ftÐµr Ð¾nÐµ wÐ¾rd ÑÐ¾â¥mÐµÑ Ð¾ut Ð¾f ÑÐ¾ur mÐ¾utÒ»")
  	end    
})

Tab4:AddButton({
	Name = "WÐ¾mÑ fuÑkÑnÉ¡ wÐ¾mÑ jÐ°ÑkÐ°ÑÑ",
	Callback = function()
      	Chat("WÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥mâ¥â¥â¥â¥â¥â¥â¥p fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡ wâ¥Ð¾â¥â¥mâ¥â¥Ñ jÐ°â¥â¥Ñâ¥kÐ°â¥â¥â¥â¥â¥Ñâ¥â¥Ñ")
  	end    
})


Tab4:AddButton({
	Name = "fuckÑng jÐ°ÑkÐ°ÑÑ wÐ¾nt ÑÐ°Ñ Ð°ttÐµntÑÐ¾n",
	Callback = function()
      	Chat("fuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥Ñâ¥â¥ng jÐ°ÑkÐ°ÑÑ wÐ¾nt ÑÐ°Ñ Ð°ttÐµntÑÐ¾n")
  	end    
})


Tab4:AddButton({
	Name = "nÑÉ¡É¡Ð° ÐµnjÐ¾Ñ tÒ»Ðµ vÐ¾Ñd",
	Callback = function()
      	Chat("nÑÉ¡É¡Ð° ÐµnjÐ¾Ñ tÒ»Ðµ vÐ¾Ñd")
  	end    
})



Tab4:AddButton({
	Name = "damn",
	Callback = function()
      	Chat("dâ¥â¥â¥â¥Ð°â¥â¥â¥â¥mâ¥â¥â¥â¥â¥nâ¥")
  	end    
})

Tab4:AddButton({
	Name = "ÑÒ»ut tÒ»Ðµ fuÑk uÑ",
	Callback = function()
      	Chat("ÑÒ»ut tÒ»Ðµ fuÑk uÑ")
  	end    
})


local Tab5 = Window:MakeTab({
	Name = "Average things",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})





Tab5:AddButton({
	Name = "gÐ¾Ð¾glÐµ Ñt",
	Callback = function()
      	Chat("gÐ¾Ð¾glÐµ Ñt")
  	end    
})

Tab5:AddButton({
	Name = "i bet you gÐ¾Ð¾glÐµd Ñt",
	Callback = function()
      	Chat("i bet you gÐ¾Ð¾glÐµd Ñt")
  	end    
})

Tab5:AddButton({
	Name = "replace gÐ¾Ð¾glÐµ",
	Callback = function()
      	Chat("replace gÐ¾Ð¾glÐµ")
  	end    
})

Tab5:AddButton({
	Name = "why gÐ¾Ð¾glÐµ it?",
	Callback = function()
      	Chat("why gÐ¾Ð¾glÐµ it?")
  	end    
})

Tab5:AddButton({
	Name = "no gÐ¾Ð¾gling ",
	Callback = function()
      	Chat("no gÐ¾Ð¾gling ")
  	end    
})

Tab5:AddButton({
	Name = "your discord? ",
	Callback = function()
      	Chat("ÑÐ¾ur dÑÑÑÐ¾Ð³d?")
  	end    
})

Tab5:AddButton({
	Name = "Ð°dd mÐµ Ð¾n dÑÑÑÐ¾Ð³d ",
	Callback = function()
      	Chat("Ð°dd mÐµ Ð¾n dÑÑÑÐ¾Ð³d")
  	end    
})

Tab5:AddButton({
	Name = "your ÑnÐ°Ñ? ",
	Callback = function()
      	Chat("yâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥oâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ur Ñnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñ?")
  	end    
})





local Tab6 = Window:MakeTab({
	Name = "zezual stuff",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})



Tab6:AddButton({
	Name = "Ð¡Ð¾Ñk InÑÐ¾ming!",
	Callback = function()
      	Chat("Ð¡Ð¾Ñk InÑÐ¾ming!")
  	end    
})

Tab6:AddButton({
	Name = "ÐÐÐ  ÐN ÐY Ð¡ÐÐ¡K ÐIÐ¢Ð¡Ð",
	Callback = function()
      	Chat("ÐÐÐ  ÐN ÐY Ð¡ÐÐ¡K ÐIÐ¢Ð¡Ð")
  	end    
})

Tab6:AddButton({
	Name = "ÑÐ°n ÑÐ¾u mÐ°kÐµ mÐµ jÐµrk Ð¾ff",
	Callback = function()
      	Chat("ÑÐ°n ÑÐ¾u mÐ°kÐµ mÐµ jÐµrk Ð¾ff")
  	end    
})


Tab6:AddButton({
	Name = "hÐµÑ nÑÉ¡É¡Ð° wÐ°nt Ð° tÐ°ÑtÐµ Ð¾f mÑ dÑldÐ¾?",
	Callback = function()
      	Chat("Ò»ÐµÑ nÑÉ¡É¡Ð° wÐ°nt Ð° tÐ°ÑtÐµ Ð¾f mÑ dÑldÐ¾?")
  	end    
})
Tab6:AddButton({
	Name = "jÐµrkÑnÉ¡ Ð¾ff tÐ¾ u Ð³n",
	Callback = function()
      	Chat("jÐµrkÑnÉ¡ Ð¾ff tÐ¾ u Ð³n")
  	end    
})


local Tab7 = Window:MakeTab({
	Name = "Songs",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})


Tab7:AddButton({
	Name = "Ballin'",
	Callback = function()
      	Chat(" I put the new Forgis on the Jeep")
  	task.wait(4)
Chat("I trap until the bloody bottoms is underneath")
  	task.wait(4)
Chat("'CÐ°uÑÐµ Ð°ll mÑ nÑÉ¡É¡Ð°Ñ É¡Ð¾t Ñt Ð¾ut tÒ»Ðµ ÑtrÐµÐµtÑ")
  	task.wait(3)
Chat("'i kÐµÐµÑ Ð° Ò»undÐ³Ðµd Ð³Ð°ÑkÑ ÑnÑÑdÐµ mÑ jÐµÐ°nÑ")
  	task.wait(3)
Chat("I remember hittin' the mall with the whole team")
  	task.wait(3)
Chat("ÎÐ¾w Ð° nÑÉ¡É¡Ð° ÑÐ°n't Ð°nÑwÐµÐ³ ÑÐ°llÑ 'ÑÐ°uÑÐµ Ó'm bÐ°llÑn'")
end    


})  


Tab7:AddButton({
	Name = "Christmas kids'",
	Callback = function()
      	Chat("You'll change your name")
  	task.wait(1)
Chat("or change your mind")
  	task.wait(1)
Chat("Ó'lâ¥l lÐµÐ°â¥vÐµ tâ¥â¥â¥â¥Ò»â¥â¥Ñâ¥â¥â¥Ñ fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥â¥d uÑ ÑlÐ°ÑÐµ bÐµÒ»Ñnd")
  	task.wait(1)
Chat("Now, i'll go")
  	task.wait(0.5)
Chat("i'll go..")
  	
end    


})

Tab7:AddButton({
	Name = "rizvy song'",
	Callback = function()
      	Chat("We can go gyatt for gyatt")
  task.wait(2)
  Chat("flip tâ¥hâ¥â¥aâ¥t wâ¥e câ¥aâ¥n gâ¥o râ¥iâ¥â¥zâ¥z fâ¥oâ¥â¥r rizâ¥z")


end    


})

Tab7:AddButton({
	Name = "ra bidiba",
	Callback = function()
      	Chat("bidibidi ba")
  	task.wait(1)
Chat("bidi bringing da pressure")
  	task.wait(1)
Chat("rÐ° bÑdÑbÐ° Ñum Ð° lÑttlÐµ Ð°tÑÒ»Ð°")
task.wait(1)
Chat("bom bom bom bom bringing it down")
task.wait(1)
Chat("widibida badaba")
task.wait(1)
Chat("WORLD STAR!")
task.wait(1)
Chat("now widibidi bi")
task.wait(1)
Chat("now widibidi bi")
task.wait(1)
Chat("wi bi bi bi")

end    


})




local Tab8 = Window:MakeTab({
	Name = "Lgbt game shit",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})



Tab8:AddButton({
	Name = "nÑÉ¡É¡Ð° rÐµÐ°llÑ bÐ¾uÉ¡Ò»t Ð° fuÑkÑnÉ¡ flÐ°É¡ fÐ¾r tÒ»ÑÑ É¡Ð°mÐµ",
	Callback = function()
      	Chat("nÑÉ¡É¡Ð° Ð³ÐµÐ°llÑ bÐ¾uÉ¡Ò»t Ð° fuÑkÑnÉ¡ flÐ°É¡ fÐ¾Ð³ tÒ»ÑÑ É¡Ð°mÐµ")
  	end    
})


Tab8:AddButton({
	Name = "tÒ»Ðµ numbÐµÐ³ Ð¾nÐµ tÐ¾Ñ ÑÑ juÑt Ð° fuÑkÑnÉ¡ fÐ°É¡É¡Ð¾t lÑkÐµ ÑÐ¾u Ð°ll Ð°Ð³Ðµ",
	Callback = function()
      	Chat("tÒ»Ðµ numbÐµÐ³ Ð¾nÐµ tÐ¾Ñ ÑÑ juÑt Ð° fuÑkÑnÉ¡ fÐ°É¡É¡Ð¾t lÑkÐµ ÑÐ¾u Ð°ll Ð°Ð³Ðµ")
  	end    
})

Tab8:AddButton({
	Name = "wÒ»Ð°t fÐ°É¡É¡Ð¾tÑ dÐµÑÑdÐµd tÐ¾ ÑÒ»Ð°ngÐµ gÐµndÐµrÑ",
	Callback = function()
      	Chat("wÒ»Ð°t fÐ°É¡É¡Ð¾tÑ dÐµÑÑdÐµd tÐ¾ ÑÒ»Ð°ngÐµ gÐµndÐµrÑ")
  	end    
})

Tab8:AddButton({
	Name = "Ñf ÑÐ¾u'rÐµ É¡Ð°Ñ tÒ»Ðµn Ò»Ð¾w Ð°bÐ¾ut ÑÐ¾u gÐ¾ fuÑk drÐ°kÐµ?",
	Callback = function()
      	Chat("Ñf ÑÐ¾â¥u'rÐµ É¡Ð°â¥â¥Ñ tÒ»â¥â¥â¥â¥Ðµn Ò»Ð¾w Ð°bâ¥â¥â¥â¥Ð¾uâ¥â¥t Ñâ¥â¥Ð¾â¥â¥u gÐ¾ fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥k dâ¥â¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥Ðµ?")
  	end    
})

Tab8:AddButton({
	Name = "rÐ°ÑnbÐ¾wÑ wÐµrÐµ rÐ°ÑnbÐ¾wÑ, nÐ¾t gÐµndÐµrÑ ÑÐ¾u fuÑkÑng fÐ°É¡É¡Ð¾t",
	Callback = function()
      	Chat("rÐ°ÑnbÐ¾wÑ wÐµrÐµ rÐ°Ñâ¥nbÐ¾wÑ, nÐ¾t gÐµâ¥â¥â¥ndÐµrÑ ÑÐ¾u fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥kÑâ¥â¥â¥â¥â¥â¥ng fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥t")
  	end    
})

Tab8:AddButton({
	Name = "Ñf ÑÐ¾u'rÐµ lÐµÑbÑÐ°n Ò»Ð¾w tÒ»Ðµ fuÑk Ð°rÐµ ÑÐ¾u ÑuÑÑÐ¾ÑÐµd tÐ¾ Ò»Ð°vÐµ bÐ°bÑÐµÑ",
	Callback = function()
      	Chat("Ñf ÑÐ¾u'rÐµ lÐµÑbÑÐ°n Ò»Ð¾w tÒ»Ðµ fuÑk Ð°rÐµ ÑÐ¾u ÑuÑÑÐ¾ÑÐµd tÐ¾ Ò»Ð°vÐµ bÐ°bÑÐµÑ")
  	end    
})

Tab8:AddButton({
	Name = "wÒ»Ð¾ lÐµt tÒ»ÑÑ gÐ°Ñ dudÐµ Ð¾ut tÒ»Ðµ tÐ¾rturÐµ ÑÐµll",
	Callback = function()
      	Chat("wÒ»Ð¾ lÐµt tÒ»ÑÑ gâ¥Ð°Ñ dudÐµ Ð¾ut tÒ»Ðµ tÐ¾rturÐµ ÑÐµll")
  	end    
})

Tab8:AddButton({
	Name = "nigga trying not to switch genders",
	Callback = function()
      	Chat("nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥Ð° tâ¥â¥râ¥â¥Ñâ¥â¥Ñâ¥nâ¥â¥â¥É¡ tâ¥Ð¾ nâ¥â¥Ð¾â¥t Ñwâ¥â¥Ñâ¥tÑâ¥â¥â¥Ò» É¡â¥â¥â¥Ðµnâ¥â¥dâ¥â¥â¥ÐµrÑ (LÐµvÐµl 1: Óâ¥â¥mâ¥â¥â¥ÑÐ¾â¥â¥Ñâ¥ÑÑblÐµ)")
  	end    
})




Tab8:AddButton({
	Name = "son of a bitch",
	Callback = function()
      	Chat("ÑÐ¾n Ð¾f Ð° bÑtÑÒ»")
  	end    
})


local Tab10 = Window:MakeTab({
	Name = "rerogatory phrases",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})

Tab10:AddButton({
	Name = "imo you're a fucking faggot",
	Callback = function()
      	Chat("Ñâ¥mâ¥â¥Ð¾ Ñâ¥Ð¾â¥â¥u'râ¥â¥Ðµ Ð° fâ¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥nâ¥â¥É¡ fâ¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥â¥t")
  	end    
})

Tab10:AddButton({
	Name = "drÑnk ÑÐ¾ur Ð¾wn ÑÑÑÑ lÑl nÑÉ¡É¡Ð°",
	Callback = function()
      	Chat("drink ÑÐ¾â¥â¥uâ¥r Ð¾â¥â¥wn Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥Ñâ¥â¥Ñ lâ¥â¥â¥Ñâ¥â¥â¥l nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð°")
  	end    
})

Tab10:AddButton({
	Name = "wÒ»Ð°t Ð° fuÑkÑnÉ¡ ÑÐµdÐ¾ É¡Ð¾ kÑÑ",
	Callback = function()
      	Chat("wÒ»Ð°t Ð° fuÑkÑnÉ¡ ÑÐµdÐ¾ É¡Ð¾ kÑÑ")
  	end    
})

Tab10:AddButton({
	Name = "this guy is so ugly and hes so fucking",
	Callback = function()
      	Chat("tÒ»ÑÑ É¡â¥â¥â¥uâ¥Ñ ÑÑ Ñâ¥Ð¾ uâ¥â¥â¥É¡â¥lÑ Ð°nâ¥d Ò»ÐµÑ â¥â¥ÑÐ¾ fâ¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkâ¥â¥Ñâ¥nâ¥â¥â¥â¥É¡ Ñâ¥â¥â¥â¥tâ¥uâ¥â¥â¥pÑâ¥d")
  	end    
})

Tab10:AddButton({
	Name = "ÑÐ¾u ÑÐ°nt fuÑkÑnÉ¡ ÑtuttÐµr Ñn rÐ¾blÐ¾Ñ fÐ°É¡É¡Ð¾t",
	Callback = function()
      	Chat("ÑÐ¾u ÑÐ°nt fâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥nÉ¡ Ñtâ¥uâ¥â¥tâ¥â¥â¥tÐµâ¥r Ñâ¥n rÐ¾â¥bâ¥â¥â¥lâ¥Ð¾â¥â¥â¥Ñ fâ¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥â¥t")
  	end    
})


Tab10:AddButton({
	Name = "ÑÐ¾u mÐ¾vÐµ Ð°nd ÑÐ¾u'rÐµ Ð° nÑÉ¡É¡Ð°",
	Callback = function()
      	Chat("ÑÐ¾u mÐ¾vÐµ Ð°nd ÑÐ¾u'rÐµ Ð° nÑÉ¡É¡Ð°")
  	end    
})

Tab10:AddButton({
	Name = "Ñm É¡Ð¾nnÐ° tÐµÐ°r tÒ»Ð°t fuÑkÑnÉ¡ ÑuÑÑÑ",
	Callback = function()
      	Chat("Ñm É¡Ð¾nnÐ° tÐµÐ°r tÒ»Ð°t fuÑkÑnÉ¡ ÑuÑÑÑ")
  	end    
})

Tab10:AddButton({
	Name = "lol ÑÑ tÒ»ÑÑ nÑÉ¡É¡Ð° rÐµtÐ°rdÐµd Ð¾r ÑmtÒ»?",
	Callback = function()
      	Chat("lol ÑÑ tÒ»ÑÑ nÑÉ¡É¡Ð° rÐµtÐ°rdÐµd Ð¾r ÑmtÒ»?")
  	end    
})


Tab10:AddButton({
	Name = "nÑÉ¡É¡Ð° whÐ¾ thÐµ fuÑk Ð°rÐµ ÑÐ¾u tÐ°lkinÉ¡ tÐ¾",
	Callback = function()
      	Chat("nÑÉ¡É¡Ð° whÐ¾ thÐµ fuÑk Ð°rÐµ ÑÐ¾u tÐ°lkinÉ¡ tÐ¾")
  	end    
})

Tab10:AddButton({
	Name = "nigga go suck your own dick",
	Callback = function()
      	Chat("nâ¥â¥Ñâ¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥Ð° É¡â¥â¥Ð¾ Ñâ¥â¥â¥uâ¥Ñâ¥â¥k Ñâ¥â¥â¥Ð¾â¥â¥uâ¥â¥â¥â¥r Ð¾â¥â¥wâ¥n dâ¥â¥â¥â¥Ñâ¥â¥â¥Ñâ¥â¥k")
  	end    
})

Tab10:AddButton({
	Name = "ÑÐ¾u Ð°rÐµ tÒ»Ðµ mÐ¾Ñt nÑÉ¡É¡ÐµrÐµÑt ÑÐµrÑÐ¾n Ñ'vÐµ ÐµvÐµr mÐµt",
	Callback = function()
      	Chat("ÑÐ¾u Ð°rÐµ tÒ»Ðµ mÐ¾Ñt nÑÉ¡É¡ÐµrÐµÑt ÑÐµrÑÐ¾n Ñ'vÐµ ÐµvÐµr mÐµt")
  	end    
})

Tab10:AddButton({
	Name = "ÑÐ¾ nÑÉ¡É¡Ð° gÐ¾ ÐµÐ°t ÑÒ»Ñt",
	Callback = function()
      	Chat("Ñâ¥â¥Ð¾ nÑâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð° gÐ¾ ÐµÐ°â¥â¥t ÑÒ»â¥â¥Ñt")
  	end    
})

Tab10:AddButton({
	Name = "*ÑÑÑÑÐµÑ Ð¾n ÑÐ¾ur bÐ¾Ð¾tÒ»*",
	Callback = function()
      	Chat("*ÑÑÑÑÐµÑ Ð¾n ÑÐ¾ur bÐ¾Ð¾tÒ»*")
  	end    
})

Tab10:AddButton({
	Name = "mÐ¾vÐµ Ð¾ut tÒ»Ðµ wÐ°Ñ fuÑktÐ°rdÑ",
	Callback = function()
      	Chat("mÐ¾vÐµ Ð¾ut tÒ»Ðµ wÐ°Ñ fuÑktÐ°rdÑ")
  	end    
})

Tab10:AddButton({
	Name = "nÑÉ¡É¡Ð° Ð°rÐµ ÑÐ¾u Ð°n Ð°ÑtuÐ°l Ð°sshÐ¾lÐµ ?",
	Callback = function()
      	Chat("nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ð° Ð°râ¥Ðµ Ñâ¥â¥Ð¾â¥â¥u Ð°â¥n Ð°Ñâ¥tâ¥uÐ°â¥l Ð°sâ¥â¥sâ¥hÐ¾â¥â¥lÐµ ?")
  	end    
})

Tab10:AddButton({
	Name = "nÑÉ¡É¡Ð° lÐµt mÐµ Ò»Ð°vÐµ tÒ»Ð°t bÐ¾Ð¾tÒ» lÐµmmÐµ ÑÒ»Ð¾w ÑÐ¾u Ò»Ð¾w tÐ¾ mÐ°kÐµ Ð° ÑrÐ¾ÑÐµr Ð¾nÐµ",
	Callback = function()
      	Chat("nÑÉ¡É¡Ð° lÐµt mÐµ Ò»Ð°vÐµ tÒ»Ð°t bÐ¾Ð¾tÒ» lÐµmmÐµ ÑÒ»Ð¾w ÑÐ¾u Ò»Ð¾w tÐ¾ mÐ°kÐµ Ð° ÑrÐ¾ÑÐµr Ð¾nÐµ")
  	end    
})

local Tab11 = Window:MakeTab({
	Name = "simple bypasses",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})

Tab11:AddButton({
	Name = "Ð°f",
	Callback = function()
      	Chat("Ð°f")
  	end    
})

Tab11:AddButton({
	Name = "ÑÒ»Ñt",
	Callback = function()
      	Chat("ÑÒ»Ñt")
  	end    
})

Tab11:AddButton({
	Name = "Ð°ÑÑ",
	Callback = function()
      	Chat("Ð°ÑÑ")
  	end    
})

Tab11:AddButton({
	Name = "Ð°ÑÑ fuÑkÐµr",
	Callback = function()
      	Chat("Ð°ÑÑ fuÑkÐµr")
  	end    
})

Tab11:AddButton({
	Name = "mÐ¾utÒ» fuÑkÐµr",
	Callback = function()
      	Chat("mÐ¾utÒ» fuÑkÐµr")
  	end    
})

Tab11:AddButton({
	Name = "alright fuÑktÐ°rd",
	Callback = function()
      	Chat("Ð°lrÑÉ¡Ò»t fâ¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥ktâ¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥â¥â¥â¥d")
  	end    
})

Tab11:AddButton({
	Name = "Ð° b Ñ d Ðµ f É¡ dÐ¾nt fuÑkÑnÉ¡ mÐµÑÑ wÑtÒ» mÐµ",
	Callback = function()
      	Chat("Ð° b Ñ d Ðµ f É¡ dÐ¾nt fuÑkÑnÉ¡ mÐµÑÑ wÑtÒ» mÐµ")
  	end    
})

Tab11:AddButton({
	Name = "that bitch wÐ¾nt ÐµvÐµr lÑkÐµ ÑÐ¾ur burnt ÑÒ»Ð¾ÑÐ¾lÐ°tÐµ Ð°ÑÑ",
	Callback = function()
      	Chat("tÒ»â¥â¥â¥â¥Ð°â¥â¥t bâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ò» wâ¥Ð¾â¥â¥nâ¥â¥â¥t Ðµâ¥â¥â¥vÐµâ¥r lâ¥â¥â¥Ñâ¥â¥kâ¥Ðµ ÑÐ¾â¥uâ¥r burnt ÑÒ»â¥Ð¾Ñâ¥â¥â¥â¥Ð¾lâ¥Ð°tâ¥â¥â¥Ðµ Ð°â¥Ñâ¥Ñ")
  	end    
})

Tab11:AddButton({
	Name = "nÐ¾ Ð¾nÐµ wÑll undÐµrÑtÐ°nd ÑÐ¾u lÑl nÑÉ¡É¡Ð°",
	Callback = function()
      	Chat("nÐ¾ Ð¾nÐµ wÑll undÐµrÑtÐ°nd ÑÐ¾u lÑl nÑÉ¡É¡Ð°")
  	end    
})

Tab11:AddButton({
	Name = "ÐdÐ¾lf Ò»ÑtlÐµr ÑÑ mÑ nÑÉ¡É¡Ð°",
	Callback = function()
      	Chat("Ðâ¥â¥â¥â¥â¥â¥â¥â¥dâ¥Ð¾â¥â¥â¥lâ¥â¥â¥â¥â¥â¥â¥â¥f Ò»â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥â¥â¥â¥lÐµâ¥â¥â¥â¥â¥â¥â¥â¥r Ñâ¥â¥Ñ mÑ nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡â¥â¥â¥â¥â¥â¥â¥â¥Ð°")
  	end    
})


Tab11:AddButton({
	Name = "ÑÐ¾u fuÑkÑnÉ¡ fÐ°É¡É¡Ð¾tÑ lÑnÐµ uÑ ÑrÐ¾ÑÐµrlÑ",
	Callback = function()
      	Chat("ÑÐ¾u fuÑkÑnÉ¡ fÐ°É¡É¡Ð¾tÑ lÑnÐµ uÑ ÑrÐ¾ÑÐµrlÑ")
  	end    
})

Tab11:AddButton({
	Name = "tÒ»ÑÑ Ð¾nÐµ ÑÑÐµÑÑfÑÑ fÐ°É¡É¡Ð¾t",
	Callback = function()
      	Chat("tÒ»ÑÑ Ð¾nÐµ ÑÑÐµÑÑfÑÑ fÐ°É¡É¡Ð¾t")
  	end    
})

Tab11:AddButton({
	Name = "ÑkÐ°w Ð°Ñ ÑÑÐ°nÉ¡ fuÑkÑnÉ¡ bÐ°dÑnÉ¡",
	Callback = function()
      	Chat("ÑkÐ°w Ð°Ñ ÑÑÐ°nÉ¡ fuÑkÑnÉ¡ bÐ°dÑnÉ¡")
  	end    
})

Tab11:AddButton({
	Name = "*ÑissÐµs Ð¾n ÑÐ¾ur fÐ°ÑÐµ*",
	Callback = function()
      	Chat("*ÑissÐµs Ð¾n ÑÐ¾ur fÐ°ÑÐµ*")
  	end    
})

Tab11:AddButton({
	Name = "ÑÐ¾u Ð°rÐµ Ð° fuÑkÑnÉ¡ wÒ»Ð¾rÐµ",
	Callback = function()
      	Chat("ÑÐ¾u Ð°rÐµ Ð° fuÑkÑnÉ¡ wÒ»Ð¾rÐµ")
  	end    
})


Tab11:AddButton({
	Name = "nÐ¾ nÑÉ¡É¡Ð°Ñ bÐµÑÐ¾nd tÒ»ÑÑ lÑnÐµ",
	Callback = function()
      	Chat("nÐ¾ nÑÉ¡É¡Ð°Ñ bÐµÑÐ¾nd tÒ»ÑÑ lÑnÐµ")
  	end    
})

local Tab0 = Window:MakeTab({
	Name = "Update logs",
	Icon = "rbxassetid://1",
	PremiumOnly = false
})





Tab0:AddLabel("the original creator is lanceconradlopez256 on scriptblox")
Tab0:AddLabel("log.5 alot of shit has been added")
Tab0:AddLabel("log.4 added alright fuÑktÐ°rd mÐ¾utÒ» fuÑkÐµr, etc")
Tab0:AddLabel("log.3 WE REACHED 100 BYPASSES!  ")
Tab0:AddLabel("log.2 added new phrases (suggest by rip_lucknothing)")
Tab0:AddLabel("log.1 added new song (suggest by rip_lucknothing)")

OrionLib:Init()