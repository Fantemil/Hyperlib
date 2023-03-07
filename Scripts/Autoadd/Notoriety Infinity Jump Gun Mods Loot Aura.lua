local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char:WaitForChild("Humanoid")
local uis = game:GetService("UserInputService")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Balls Script | Notoriety", IntroEnabled = false})

local Main = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Main1 = Main:AddSection({
 Name = "Main"
})

Main1:AddToggle({
 Name = "Loot Aura",
 Default = false,
 Callback = function(Value)
  LA = Value
  while LA do
   for _, v in pairs(game:GetService("Workspace").Lootables:GetChildren()) do
    for _, v in pairs(v:GetDescendants()) do
     if v:IsA("ProximityPrompt") then
      fireproximityprompt(v)
     end
    end
    task.wait()
   end
  end
 end    
})

local infJump = false;

Main1:AddToggle({
 Name = "Inf Jump",
 Default = false,
 Callback = function(Value)
  infJump = Value
 end    
})

uis.JumpRequest:Connect(function()
 if infJump then
  hum:ChangeState(Enum.HumanoidStateType.Jumping)
 end
end)

Main1:AddButton({
 Name = "Collect Ammo",
 Callback = function()
       firetouchinterest(char.HumanoidRootPart, game:GetService("Workspace"):FindFirstChild("AmmoPart"), 0)
   end    
})

local gun1 = Window:MakeTab({
 Name = "Gun Mod",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local gun = gun1:AddSection({
 Name = "Gun Mod"
})

local fireDelay, Accuracy, gunDamage, bulletSpeed

gun:AddSlider({
 Name = "Fire Delay",
 Min = 0,
 Max = 10,
 Default = 0.1,
 Color = Color3.fromRGB(255,255,255),
 Increment = 0.1,
 ValueName = "seconds",
 Callback = function(Value)
  fireDelay = Value
 end    
})

gun:AddSlider({
 Name = "Accuracy",
 Min = 0,
 Max = 100,
 Default = 0,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "accuracy",
 Callback = function(Value)
  Accuracy = Value
 end    
})

gun:AddSlider({
 Name = "Damage",
 Min = 0,
 Max = 10000,
 Default = 10000,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "damage",
 Callback = function(Value)
  gunDamage = Value
 end    
})

gun:AddSlider({
 Name = "Bullet Speed",
 Min = 0,
 Max = 100,
 Default = 30,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "ammo",
 Callback = function(Value)
  bulletSpeed = Value
 end    
})

gun:AddButton({
 Name = "Apply",
 Callback = function(Value)
  if char:FindFirstChildOfClass("Tool") and char:FindFirstChildOfClass("Tool"):FindFirstChild("Data") then
   local gunMod = require(char:FindFirstChildOfClass("Tool").Data)
   gunMod.Damage = gunDamage
   gunMod.BulletSpeed = bulletSpeed
   gunMod.Accuracy = Accuracy
   gunMod.FireDelay = fireDelay
   OrionLib:MakeNotification({
    Name = "Applied!",
    Content = "Applied Settings to holding weapon",
    Image = "rbxassetid://4483345998",
    Time = 5
   })
  else
   OrionLib:MakeNotification({
    Name = "Woops",
    Content = "You must be holding a weapon",
    Image = "rbxassetid://4483345998",
    Time = 5
   })
  end
 end    
})