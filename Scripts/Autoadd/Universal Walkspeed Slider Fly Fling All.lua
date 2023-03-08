local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Grgrr Centerð½", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Main"
})

Tab:AddButton({
 Name = "Fling X to activate",
 Callback = function()
        _G.KeyCode = "X"
loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/touch_fling.lua"))()
   end    
})

Tab:AddButton({
 Name = "Fling ALL script(OP)",
 Callback = function()
loadstring(game:HttpGet('https://github.com/DigitalityScripts/roblox-scripts/raw/main/loop%20fling%20all'))()
   end    
})

Tab:AddSlider({
 Name = "Walkspeed",
 Min = 16,
 Max = 670,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Speed",
 Callback = function(s)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
 end    
})

Tab:AddButton({
 Name = "Tp tool",
 Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Tp tool(Equip to Click TP)"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

Tab:AddButton({
 Name = "Owl hub script",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
   end    
})

local Tab = Window:MakeTab({
 Name = "combat warriors",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


Tab:AddButton({
 Name = "Execute combat warriors script",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))();
   end    
})