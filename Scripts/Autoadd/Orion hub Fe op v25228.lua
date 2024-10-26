local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Universal hub", HidePremium = false,IntroText = "universal hub", SaveConfig = true, ConfigFolder = "Universal hub"})

---Tab---

local  Tab1 = Window:MakeTab({
	Name = "info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local  Tab2 = Window:MakeTab({
	Name = "Scrips",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

---localsection---

local Section = Tab2:AddSection({
	Name = "All script here"
})

---AddButton---

Tab2:AddButton({
	Name = "Evadeð",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Evade'))()
  	end    
})

Tab2:AddButton({
	Name = "Script the chosen one (laziest)",
	Callback = function()
      	loadstring(game:HttpGet("https://rawscripts.net/raw/The-Chosen-One-laziest-V2-7696"))()
  	end    
})

Tab2:AddButton({
	Name = "Script Redz (meme sea)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua"))()
  	end    
})

Tab2:AddButton({
	Name = "Chat bypass (orion hub)",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Anonymous12131/MenaceV2.1.-Best-bypasser/main/obf_i7iAAH834YFQno0FLyuLPcNR5ouJrmvEFdtmXtF1C6u935ghB9DAFK5L3zgsPs6X.lua.txt'))()
  	end    
})

Tab2:AddButton({
	Name = "Blade ball (triple)",
	Callback = function()
      	loadstring(Game:HttpGet("https://raw.githubusercontent.com/SumitScripts/PlantomBallScript/main/NewPhantballScript/AutoParryUpdated"))()
  	end    
})

Tab2:AddButton({
	Name = "Prison life tiger admin v3",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Tiger%20Admin%203.0'))()
  	end    
})

Tab2:AddButton({
	Name = "Keyboard",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
  	end    
})

Tab2:AddButton({
	Name = "index hub (FE)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/IndexZHub/Loader/main/Loader"))()
  	end    
})

Tab2:AddButton({
	Name = "kawaii bypass chat",
	Callback = function()
      	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-UNIVERSAL-CHAT-BYPASS-KAWAII-BYPASS-99-PERCENT-CONSISTENCY-16909"))()
  	end    
})

Tab2:AddButton({
	Name = "Fling gui credit X",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
  	end    
})

Tab2:AddButton({
	Name = "Build a boat",
	Callback = function()
      	loadstring(game:HttpGet("https://waza-scripts.vercel.app/script/BuildABoat"))()
  	end    
})

Tab2:AddButton({
	Name = "Hit box remake",
	Callback = function()
      	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Hit-box-remake-6723"))()
  	end    
})

Tab2:AddButton({
	Name = "The strongest battles KJ",
	Callback = function()
      	loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-Five-Seasons-Script-KJ-16855"))()
  	end    
})

Tab2:AddButton({
	Name = "Anti chat logs",
	Callback = function()
      	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Anti-Chat-and-Screenshot-Logger-TEXTCHATSERVICE-SUPPORT-16739"))()
  	end    
})

Tab2:AddButton({
	Name = "Fe control npcs",
	Callback = function()
      	loadstring(game:HttpGet(('https://pastefy.app/rZPYaAaT/raw'),true))()
  	end    
})

Tab2:AddButton({
	Name = "Fe coolkid mobile",
	Callback = function()
      	loadstring(game:GetObjects("rbxassetid://16738300563")[1].Source)()
  	end    
})

---labelText---

Tab1:AddLabel("Creator scripts : GamerPro_718")
Tab1:AddLabel("you welcome ð¿")
Tab1:AddLabel("Orion hub")
Tab1:AddLabel("Orion library - ui")
Tab1:AddLabel("Update : v25")

OrionLib:Init()


