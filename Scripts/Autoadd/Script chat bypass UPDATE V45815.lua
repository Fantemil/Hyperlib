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



local Window = OrionLib:MakeWindow({Name = "Chat Bypass Update", HidePremium = false, SaveConfig = true, ConfigFolder = "configs"})



local Tab = Window:MakeTab({
	Name = "Word bypassed",
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	PremiumOnly = false
})


Tab:AddLabel("--Creator--")

Tab:AddLabel("GamerPro_718")

Tab:AddLabel("Youtube - @GamerPro_718")

Tab:AddLabel("like and sub")

Tab:AddLabel("--acc two-")

Tab:AddLabel("GamerPro_7189")

Tab:AddLabel("Orion libary - v45")

Tab:AddButton({
	Name = "ENGLISH OR SPAINSH",
	Callback = function()
      		Chat("ENGLISH ÐR SÐ ÐÐNÅH")
  	end    
})

Tab:AddButton({
	Name = "Whoevery move first is nigga",
	Callback = function()
      		Chat("WhÐ¾ÐµvÐµrÑ mÐ¾vÐµ fÑrst Ñs nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "Whoevery move first is gay cock",
	Callback = function()
      		Chat("Whoevery mÐ¾vÐµ fÑrst Ñs Äay cÃ¶ck")
  	end    
})

Tab:AddButton({
	Name = "cock",
	Callback = function()
      		Chat("cÃ¶ck")
  	end    
})

Tab:AddButton({
	Name = "cock please! ð¼",
	Callback = function()
      		Chat("cÃ¶ck plÐµÃ¤se! ð¼")
  	end    
})

Tab:AddButton({
	Name = "Whoevery move first is gay",
	Callback = function()
      		Chat("Whoevery mÐ¾vÐµ fÑrst Ñs Äay")
  	end    
})

Tab:AddButton({
	Name = "Sex please? ð",
	Callback = function()
      		Chat("SÑÑ pleÃ¤se? ð")
  	end    
})

Tab:AddButton({
	Name = "Nigga",
	Callback = function()
      		Chat("ÃiÄÄa")
  	end    
})

Tab:AddButton({
	Name = "SlaÎ½e",
	Callback = function()
      		Chat("SlÐ°Î½e")
  	end    
})

Tab:AddButton({
	Name = "slaÎ½e",
	Callback = function()
      		Chat("slÐ°Î½e")
  	end    
})

Tab:AddButton({
	Name = "lÑl nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("lÑl nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "lÑl nÑÉ¡É¡Ð° wÒ»Ð°tÑÒ»u dÐ¾ÑnÉ¡",
	Callback = function()
      		Chat("lÑl nÑÉ¡É¡Ð° wÒ»Ð°tÑÒ»u dÐ¾ÑnÉ¡")
  	end    
})

Tab:AddButton({
	Name = "ÐurrÑ nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("ÐurrÑ nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "ez nigga",
	Callback = function()
      		Chat("Ðµz nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "Kirimad is gay",
	Callback = function()
      		Chat("ÐiriÐÐ°d iÅ Äay")
  	end    
})

Tab:AddButton({
	Name = "Kirimad is cock",
	Callback = function()
      		Chat("ÐiriÐÐ°d iÅ ÄÃ¶Äk")
  	end    
})

Tab:AddButton({
	Name = "i wanna sex",
	Callback = function()
      		Chat("i wÃ¤Ã±Ã±a Åex")
  	end    
})

Tab:AddButton({
	Name = "gay? ð¤¨",
	Callback = function()
      		Chat("Äay? ð¤¨")
  	end    
})

Tab:AddButton({
	Name = "gay? ð³",
	Callback = function()
      		Chat("Äay? ð³")
  	end    
})

Tab:AddButton({
	Name = "nigga got banned now",
	Callback = function()
      		Chat("nÑÉ¡É¡Ð° É¡Ð¾t bÐ°nnÐµd nÐ¾w")
  	end    
})

Tab:AddButton({
	Name = "CUM",
	Callback = function()
      		Chat("Ð¡UÐ")
  	end    
})

Tab:AddButton({
	Name = "CUM ALOT",
	Callback = function()
      		Chat("Ð¡UÐ ÐLÐÐ¢")
  	end    
})

Tab:AddButton({
	Name = "ass",
	Callback = function()
      		Chat("aÅÅ")
  	end    
})

Tab:AddButton({
	Name = "LGBTQ IS CUM (fixed)",
	Callback = function()
      		Chat("LGÐÐ¢Q IÅ Ð¡UÐ")
  	end    
})

Tab:AddButton({
	Name = "Ð ÐRN.Ð¡ÐÐ",
	Callback = function()
      		Chat("Ð ÐRN.Ð¡ÐÐ")
  	end    
})

Tab:AddButton({
	Name = "Ð¥Ð¥Ð¥.Ð¡ÐÐ",
	Callback = function()
      		Chat("Ð¥Ð¥Ð¥.Ð¡ÐÐ")
  	end    
})

Tab:AddButton({
	Name = "Sex.COM",
	Callback = function()
      		Chat("Åex.Ð¡ÐÐ")
  	end    
})

Tab:AddButton({
	Name = "FUCKING LGBTQ",
	Callback = function()
      		Chat("ÒUÐ¡KÐNG LGÐÐ¢Q")
  	end    
})

Tab:AddButton({
	Name = "shÐµ nÑÉ¡É¡Ð°",
	Callback = function()
      		Chat("shÐµ nÑÉ¡É¡Ð°")
  	end    
})

Tab:AddButton({
	Name = "SHE HAS DICK",
	Callback = function()
      		Chat("ÅÐÐ ÐÐS DÐÐ¡Ð")
  	end    
})

Tab:AddButton({
	Name = "SHE HAS DICK FR",
	Callback = function()
      		Chat("ÅÐÐ ÐÐS DÐÐ¡Ð FÅ")
  	end    
})

Tab:AddButton({
	Name = "LÐÐÐ",
	Callback = function()
      		Chat("LÐÐÐ")
  	end    
})

Tab:AddButton({
	Name = "SHIT",
	Callback = function()
      		Chat("SÐÐÐ¢")
  	end    
})

Tab:AddButton({
	Name = "FUCKING",
	Callback = function()
      		Chat("ÒUÐ¡KÐNG")
  	end    
})

Tab:AddButton({
	Name = "CUM PLEASE? ð¿",
	Callback = function()
      		Chat("ÃÃM PLEASE? ð¿")
  	end    
})

Tab:AddButton({
	Name = "Wash you dick",
	Callback = function()
      		Chat("WÄÅ¡Ä¥ yÃ¶Ã» ÄÃ­ÄÄ·")
  	end    
}) 

local Tab2 = Window:MakeTab({
	Name = "ABC",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "ÐÐÐ¡ + ABC = PORN.COM",
	Callback = function()
      		Chat("ABC + ÐÐÐ¡  = Ð ÐRN.Ð¡ÐÐ")
  	end    
})

Tab2:AddButton({
	Name = "ABC I WANT SEX",
	Callback = function()
      		Chat("ÐÐÐ¡ I WÃNT ÅEX")
  	end    
})

Tab2:AddButton({
	Name = "ÐÐÐ¡ Ð¥Ð¥Ð¥.Î½Ñdeo.Ð¡ÐÐ ÐS ÐÐÐ¢Ð¢ÐR",
	Callback = function()
      		Chat("ÐÐÐ¡ Ð¥Ð¥Ð¥.VÃÄÄÃ.Ð¡ÐÐ ÐS ÐÐÐ¢Ð¢ÐR")
  	end    
})

Tab2:AddButton({
	Name = "ÐÐÐ¡ Ð ÐRN.Ð¡ÐÐ ÐS ÐÐÐ¢Ð¢ÐR",
	Callback = function()
      		Chat("ÐÐÐ¡ Ð ÃÐN.Ð¡ÐÐ ÐÅ  ÐÄÅ¤Å¤ÄR")
  	end    
})

Tab2:AddButton({
	Name = "ÐÐÐ¡ YOU COCK SMALL",
	Callback = function()
      		Chat("ÐÐÄ YÃÅ¬ ÄÃCK SÐÐLL")
  	end    
})

local Tab3 = Window:MakeTab({
	Name = "more word ",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Sex",
	Callback = function()
      	Chat("Åex")
  	end    
})

Tab3:AddButton({
	Name = "gay sex",
	Callback = function()
      	Chat("ÄÃ¤y Å¡ÄÑ")
  	end    
})

Tab3:AddButton({
	Name = "Give me sex",
	Callback = function()
      	Chat("ÄÃ®vÄ mÄ Å¡ÄÑ")
  	end    
})

Tab3:AddButton({
	Name = "Give me cum",
	Callback = function()
      	Chat("ÄÃ®vÄ mÃ« ÄÅ­m")
  	end    
})

Tab3:AddButton({
	Name = "My dick gonna suck",
	Callback = function()
      	Chat("ÐÑ dÃ®ÄÄ· ÄÃ¶ÅnÃ¤ sÃ¹Äk")
  	end    
})

Tab3:AddButton({
	Name = "Cut you dick",
	Callback = function()
      	Chat("ÄÃ»t yÃ¶Å­ ÄÃ®ÄÄ·")
  	end    
})

Tab3:AddButton({
	Name = "Cut you cock",
	Callback = function()
      	Chat("ÄÃ»t yÃ¶Å­ ÄÃ¶ÄÄ·")
  	end    
})

Tab3:AddButton({
	Name = "OwO *look at u huge dick*",
	Callback = function()
      	Chat("OwO *lÃ¶Ã¶k Ät ÑÃ¶Å­ Ä¥Å­ÄÄ dÃ®ÄÄ·*")
  	end    
})

Tab3:AddButton({
	Name = "She has Dick",
	Callback = function()
      	Chat("Å Ä¥Ä Ä¥aÅ¡ ÄÃ®ÄÄ·")
  	end    
})

Tab3:AddButton({
	Name = "She cut Dick",
	Callback = function()
      	Chat("Å Ä¥Ä ÄÅ­Å¥ ÄÃ®ÄÄ·")
  	end    
})

Tab3:AddButton({
	Name = "She bite dick",
	Callback = function()
      	Chat("Å Ä¥Ä bÃ®Å¥Ä ÄÃ®ÄÄ·")
  	end    
})

Tab3:AddButton({
	Name = "shut up you ass",
	Callback = function()
      	Chat("shÃ¼t Ã¼p yoÃ¼ aÅÅ")
  	end    
})

Tab3:AddButton({
	Name = "shut up Nigga",
	Callback = function()
      	Chat("shÃ¼t Ã¼p NiÄÄa")
  	end    
})

Tab3:AddButton({
	Name = "My CUM",
	Callback = function()
      	Chat("ÐÑ Ð¡UÐ")
  	end    
})

Tab3:AddButton({
	Name = "She CUM",
	Callback = function()
      	Chat("Å Ä¥Ä Ð¡UÐ")
  	end    
})

Tab3:AddButton({
	Name = "he CUM",
	Callback = function()
      	Chat("Ä¥Ä Ð¡UÐ")
  	end    
})

Tab3:AddButton({
	Name = "he gay",
	Callback = function()
      	Chat("Ä¥Ä ÄÐ°Ñ")
  	end    
})

Tab3:AddButton({
	Name = "he gay? ð¥¶",
	Callback = function()
      	Chat("Ä¥Ä ÄÐ°Ñ? ð¥¶")
  	end    
})

Tab3:AddButton({
	Name = "BITCH",
	Callback = function()
      	Chat("ÐÐÐ¢Ð¡Ð")
  	end    
})

Tab3:AddButton({
	Name = "i miss blÐ°Ñk ÑlÐ°Î½Ðµry",
	Callback = function()
      	Chat("Ñ mÑÑÑ bIÐ°Ñk ÑIÐ°Î½ÐµrÑ")
  	end    
})

Tab3:AddButton({
	Name = "Fucking",
	Callback = function()
      	Chat("ÒuÑkÑng")
  	end    
})

Tab3:AddButton({
	Name = "selling slaves 10 dollars each!",
	Callback = function()
      	Chat("ÑÐµllÑnÉ¡ ÑlÐ°Î½ÐµÑ 10 dÐ¾llÐ°rÑ ÐµÐ°ÑÒ»!")
  	end    
})

Tab3:AddButton({
	Name = "Ñ wÐ°nt slÐ°Î½e blÐ°Ñk",
	Callback = function()
      	Chat("Ñ wÐ°nt slÐ°Î½e blÐ°Ñk")
  	end    
})

Tab3:AddButton({
	Name = "FUCKING MY DICK",
	Callback = function()
      	Chat("ÒUÐ¡KÐNG ÐÒ® DÐÐ¡Ð")
  	end    
})

Tab3:AddButton({
	Name = "SUCK MY DICK",
	Callback = function()
      	Chat("ÅUÐ¡Ð ÐÒ® DÐÐ¡Ð")
  	end    
})

Tab3:AddButton({
	Name = "RATE MY DICK",
	Callback = function()
      	Chat("RÃTE ÐÒ® DÐÐ¡Ð")
  	end    
})

Tab3:AddButton({
	Name = "RATE MY DICK SMALL?",
	Callback = function()
      	Chat("RÃTE ÐÒ® DÐÐ¡Ð Å MÃÄ¹Ä¹")
  	end    
})

Tab3:AddButton({
	Name = "RATE MY DICK OR SUCK YOU COCK",
	Callback = function()
      	Chat("RÃTE ÐÒ® DÐÐ¡Ð ÃR ÅÃÃK YÃÅ¬ ÄÃÃK")
  	end    
})

Tab3:AddButton({
	Name = "YES SEX? ð",
	Callback = function()
      	Chat("Ò®ÐÅ ÅEX? ð")
  	end    
})

Tab3:AddButton({
	Name = "YES SEX? ð¤¨",
	Callback = function()
      	Chat("Ò®ÐÅ ÅEX? ð¤¨")
  	end    
})

Tab3:AddButton({
	Name = "NO SEX? ð¼",
	Callback = function()
      	Chat("NÃ ÅEX? ð¼")
  	end    
})

Tab3:AddButton({
	Name = "NO SEX? ð¿",
	Callback = function()
      	Chat("NÃ ÅEX? ð¿")
  	end    
})

Tab3:AddButton({
	Name = "NO SEX? ð³",
	Callback = function()
      	Chat("NÃ ÅEX? ð³")
  	end    
})

Tab3:AddButton({
	Name = "FAGGOT,",
	Callback = function()
      	Chat("ÒÃÄÄÃÅ¤")
  	end    
})

Tab3:AddButton({
	Name = "nigga fucking cock",
	Callback = function()
      	Chat("Ã±iÄÄa ÒuÑkÑng cÃ¶ck")
  	end    
})

Tab3:AddButton({
	Name = "FACK YOU",
	Callback = function()
      	Chat("ÒÐÐ¡K Ò®ÐU")
  	end    
})

Tab3:AddButton({
	Name = "FUCKING NIGGA",
	Callback = function()
      	Chat("ÒÅ¬ÄÄ¶ÃNÄ ÅÃÄÄÄ")
  	end    
})

Tab3:AddButton({
	Name = "Anal Sex",
	Callback = function()
      	Chat("ÄÅÃ¤l Å ÄÑ")
  	end    
})

local Tab4 = Window:MakeTab({
	Name = "Others script bypass",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

Tab4:AddButton({
	Name = "ð¥FE BYPASSð¥ (not mine)",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Anonymous12131/MenaceV2.1.-Best-bypasser/main/obf_i7iAAH834YFQno0FLyuLPcNR5ouJrmvEFdtmXtF1C6u935ghB9DAFK5L3zgsPs6X.lua.txt'))()
  	end    
})

Tab4:AddButton({
	Name = "Btoolsâï¸ (not fe)",
	Callback = function()
      		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
  	end    
})

local Tab5 = Window:MakeTab({
	Name = "INFOS",
	Icon = "rbxassetid://3926305904",
	PremiumOnly = false
})

Tab5:AddLabel("-ADD MORE BYPASS WORD-")
Tab5:AddLabel("-REDUCE THE WORD CENSORED AND MORE UPDATE-")
Tab5:AddLabel("-MORE BUTTON , MORE TAB-")
Tab5:AddLabel("---DONT FORGOT LIKE AND SUB---")
Tab5:AddLabel("--INFOS--")
Tab5:AddLabel("English word but freaky naw")
Tab5:AddLabel("Freaky or weird word nah sorry")
Tab5:AddLabel("creator : GamerPro_718 - for more bypass")

local Tab6 = Window:MakeTab({
	Name = "FIXED BYPASSED",
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	PremiumOnly = false
})

Tab6:AddLabel("IF BYPASS WORD NOT WORK / TAG CLICK THIS,DOWN OPINIONS")

Tab6:AddButton({
	Name = "Sex",
	Callback = function()
      	Chat("Åex")
  	end    
})

Tab6:AddButton({
	Name = "Gay",
	Callback = function()
      	Chat("Äay")
  	end    
})

Tab6:AddButton({
	Name = "FAGGOT",
	Callback = function()
      	Chat("ÒÐÄÄÐÐ¢")
  	end    
})

Tab6:AddButton({
	Name = "BITCH",
	Callback = function()
      	Chat("ÐÐÐ¢ÄÐ")
  	end    
})

Tab6:AddButton({
	Name = "Whoevery move first is gay sex",
	Callback = function()
      		Chat("Whoevery mÐ¾vÐµ first is ÄÐ°Ñ Åex")
  	end    
})

Tab6:AddButton({
	Name = "ENGLISH OR SEX",
	Callback = function()
      		Chat("ENÄLISÐ¢ ÐR ÅEÐ¥")
  	end    
})

Tab6:AddButton({
	Name = "CUM",
	Callback = function()
      		Chat("ÄUM")
  	end    
})

Tab6:AddButton({
	Name = "CUM OR SEX",
	Callback = function()
      		Chat("ÄÅ¬M OR Å ÄÐ¥")
  	end    
})

Tab6:AddButton({
	Name = "NIGGA",
	Callback = function()
      		Chat("ÐÐÄÄA")
  	end    
})

Tab6:AddButton({
	Name = "NIGGA (better word)",
	Callback = function()
      		Chat("NÐÄÄA")
  	end    
})

Tab6:AddButton({
	Name = "cum nigga",
	Callback = function()
      		Chat("Äum niÄÄa")
  	end    
})

Tab6:AddButton({
	Name = "cum",
	Callback = function()
      		Chat("Äum")
  	end    
})

Tab6:AddButton({
	Name = "Nigger",
	Callback = function()
      		Chat("ÅiÄÄÃ«Å")
  	end    
})

Tab6:AddButton({
	Name = "Nigger shut up",
	Callback = function()
      		Chat("ÅiÄÄÃ«Å Åhut Å­p")
  	end    
})

Tab6:AddButton({
	Name = "Nigger kick you ass",
	Callback = function()
      		Chat("ÅiÄÄÃ«Å Ä·icÄ· ÑÐ¾Å­ Ð°ÅÅ")
  	end    
})

Tab6:AddButton({
	Name = "Give me ass",
	Callback = function()
      		Chat("ÄÃ®vÄ mÄ ÄÅÅ")
  	end    
})

Tab6:AddButton({
	Name = "LGBTQ is gay",
	Callback = function()
      		Chat("LÄÐÐ¢Q iÅ¡ ÄÐ°Ñ")
  	end    
})

local Tab7 = Window:MakeTab({
	Name = "i ain't gay",
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
	PremiumOnly = false
})

Tab7:AddLabel("i ain't gay lol ð¥¶ð")

Tab7:AddButton({
	Name = "I ain't gay but 20$ is 20$",
	Callback = function()
      		Chat("i ain't Äay 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't gay but 50$ is 50$",
	Callback = function()
      		Chat("i ain't Äay 50$ is 50$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't sex but 50$ is 50$",
	Callback = function()
      		Chat("i ain't Åex 50$ is 50$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't sex but 20$ is 20$",
	Callback = function()
      		Chat("i ain't Åex 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have dick 20$ is 20$",
	Callback = function()
      		Chat("I ain't have dÃ®cÄ· 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have dick 50$ is 50$",
	Callback = function()
      		Chat("I ain't have dÃ®cÄ· 50$ is 50$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have cock 20$ is 20$",
	Callback = function()
      		Chat("I ain't have ÄÃ¶cÄ· 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have cock 50$ is 50$",
	Callback = function()
      		Chat("I ain't have ÄÃ¶cÄ· 50$ is 50$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have dick black 50$ is 50$",
	Callback = function()
      		Chat("I ain't have dÃ®ÄÄ· blÄÄk 50$ is 50$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have dick black 20$ is 20$",
	Callback = function()
      		Chat("I ain't have dÃ®ÄÄ· blÄÄk 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have cock white 20$ is 20$",
	Callback = function()
      		Chat("I ain't have cÃ¶ÄÄ· wÄ¥Ã®Å¥Ä 20$ is 20$")
  	end    
})

Tab7:AddButton({
	Name = "I ain't have cock white 50$ is 50$",
	Callback = function()
      		Chat("I ain't have cÃ¶ÄÄ· wÄ¥Ã®Å¥Ä 50$ is 50$")
  	end    
})