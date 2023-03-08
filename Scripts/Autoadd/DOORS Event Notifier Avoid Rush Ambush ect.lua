local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SukHubb", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
 Name = "Welcome!",
 Content = "Thanks For Using Suk Hubb",
 Image = "rbxassetid://4483345998",
 Time = 5
})

local MM2 = Window:MakeTab({
 Name = "Murder Mystrey 2",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

MM2:AddButton({
 Name = "OP GUI (patched)",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Doggo-cryto/EclipseMM2/master/Script", true))()
        print("Loaded")
   end    
})

MM2:AddButton({
 Name = "Vynixu's Gui",
 Callback = function()
        loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()

        print("Loaded")
   end    
})

local FF = Window:MakeTab({
 Name = "Funky Friday",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

FF:AddButton({
 Name = "Auto Player (oatched i think)",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
        print("Loaded")
   end    
})

local Doors = Window:MakeTab({
 Name = "Doors",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Doors:AddButton({
 Name = " items esp doors esp event notifier",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
        print("Loaded")
   end    
})

Doors:AddButton({
 Name = "Avoid Rush Ambush ect",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
        print("Loaded")
   end    
})

local pf = Window:MakeTab({
 Name = "Prison Life",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

pf:AddButton({
 Name = "Vynixius prison life script",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua"))()
        print("Loaded")
   end    
})

local RF = Window:MakeTab({
 Name = "Rainbow Fiends",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


RF:AddButton({
 Name = "Rainbow Friends Ez Win",
 Callback = function()
        loadstring(game:HttpGet(("https://cdn.discordapp.com/attachments/948140763429085204/1003597010533883994/out.lua.txt"),true))()
        print("Loaded")
   end    
})

local BAB = Window:MakeTab({
 Name = "Build A Boat",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

BAB:AddButton({
 Name = "Vynixius Build A boat Gui",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Build%20A%20Boat%20For%20Treasure/Script.lua"))()
        print("Loaded")
   end    
})

local US = Window:MakeTab({
 Name = "UniVersal Scritps",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

US:AddButton({
 Name = "Universal FE",
 Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))() 
        print("Loaded")
   end    
})

US:AddButton({
 Name = "Infinite Yield Admin",
 Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        print("Loaded")
   end    
})

local Arsenal = Window:MakeTab({
 Name = "Arsenal",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Arsenal:AddButton({
 Name = "OwlHub",
 Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
        print("Loaded")
   end    
})

local BigP = Window:MakeTab({
 Name = "Big Paintball",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

BigP:AddButton({
 Name = "Paint Ball esp and more",
 Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/radjahfromdiscord/iNEXT/main/source"))()
        print("Loaded")
   end    
})

local MR = Window:MakeTab({
 Name = "My Restaurant",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

MR:AddButton({
 Name = "Op Auto Farm",
 Callback = function()
  loadstring(game:HttpGet("https://rawscripts.net/raw/My-Restaurant!-Fast-Autofarm-4610"))()
        print("Loaded")
   end    
})


local BB = Window:MakeTab({
 Name = "Booga Booga",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

BB:AddButton({
 Name = "Op Auto Kill And Farm",
 Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/WarriorCrystal/WarriorHub/main/Load.lua"))()
        print("Loaded")
   end    
})