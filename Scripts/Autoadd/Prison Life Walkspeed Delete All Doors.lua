local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Kin Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local PlayerTab = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = PlayerTab:AddSection({
 Name = "Movement"
})

PlayerTab:AddSlider({
 Name = "Walkspeed",
 Min = 16,
 Max = 500,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "WS",
 Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
 end    
})

PlayerTab:AddSlider({
 Name = "Jump Height",
 Min = 16,
 Max = 500,
 Default = 5,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Height",
 Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
 end    
})


--other tab

local MiscTab = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = MiscTab:AddSection({
 Name = "Misc"
})


MiscTab:AddButton({
 Name = "Delete Doors",
 Callback = function()
       game.Workspace.Doors:Destroy()
   end    
})