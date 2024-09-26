local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Suger Bear X", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "RALR",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Chat Bypass",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Anonymous12131/MenaceV2.1.-Best-bypasser/main/obf_i7iAAH834YFQno0FLyuLPcNR5ouJrmvEFdtmXtF1C6u935ghB9DAFK5L3zgsPs6X.lua.txt'))()
  	end    
})
Tab:AddButton({
	Name = "Fling",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
  	end   
})
Tab:AddButton({
	Name = "Pendulum Hub",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
  	end     
})
Tab:AddButton({
	Name = "K00pgui delta",
	Callback = function()
      		print("button pressed")
loadstring(game:HttpGet("https://pastebin.com/raw/AB1FRY0n"))()
  	end     
})
local httpHook;
httpHook = hookfunction(game.HttpGet, function(self,...)
   local Args = {...}
   if Args[1] and type(Args[1]) == "string" then
       if Args[1]:match("checkPremium.php") then
           return "true"
       end
   end
   return httpHook(self,...)
end)

local OrionLib = loadstring(game:HttpGet(('https://hypernite.xyz/Backup/Orion/source.lua')))() -- Backed up to my host