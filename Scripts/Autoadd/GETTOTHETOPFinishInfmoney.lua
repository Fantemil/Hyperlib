local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "KOW HUB", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
 Name = "KOW HUB",
 Content = "Hello!",
 Image = "rbxassetid://4483345998",
 Time = 5
})


local Tab = Window:MakeTab({
 Name = "GTTP",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Tab2 = Window:MakeTab({
 Name = "LocalPLayer",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddButton({
 Name = "FINISH",
 Callback = function()
        pcall(function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").TowerSpawn.TowerTop.EndingButton.TipTop.go.CFrame
   end)
   end    
})

Tab:AddSlider({
 Name = "POINTS",
 Min = 0,
 Max = 999999999999,
 Default = 0,
 Color = Color3.fromRGB(255,255,255),
 Increment = 10,
 ValueName = "POINTS",
 Callback = function(Value)
  game.Players.LocalPlayer.Points.Value = Value

 end    
})

Tab:AddLabel("Discord - fel!#0144")

Tab2:AddButton({
 Name = "CMD-X",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
   end    
})

Tab2:AddButton({
 Name = "CLICK TP (tool)",
 Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

Tab2:AddSlider({
 Name = "WalkSpeed",
 Min = 0,
 Max = 1000,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Speed",
 Callback = function(Speed)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
 end    
})