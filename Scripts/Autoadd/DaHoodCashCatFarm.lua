local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Cash Cat", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "Cash Stuff",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "Cash Farm",
 Callback = function()
        loadstring(game:HttpGet("https://www.klgrth.io/paste/novdk/raw", true))()

   end   
})