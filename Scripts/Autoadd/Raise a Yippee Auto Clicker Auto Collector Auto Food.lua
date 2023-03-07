local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Epic raise a yippee stuff", IntroText = "Epic raise a yippee stuff"})

local General = Window:MakeTab({
 Name = "General",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Main = General:AddSection({
 Name = "Main"
})

Main:AddToggle({
 Name = "Auto Clicker",
 Default = false,
 Callback = function(Value)
  autoClicker = Value
  task.spawn(function()
   while autoClicker do
       fireclickdetector(game:GetService("Workspace").Creature.Tbh.ClickDetector, 0)
       task.wait()
      end
  end)
 end    
})

Main:AddToggle({
 Name = "Auto Collect",
 Default = false,
 Callback = function(Value)
  autoCollect = Value
  task.spawn(function()
   while autoCollect do
       for i, v in pairs(game:GetService("Workspace").Debris:GetChildren()) do firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0) task.wait() end
       task.wait()
      end
  end)
 end    
})

Main:AddToggle({
 Name = "Auto Purchase Food",
 Default = false,
 Callback = function(Value)
  autoPurchase = Value
  task.spawn(function()
      while autoPurchase do
    if game:GetService("Workspace").Creature.Tbh.Values.Hunger.Value < 3 and not game:GetService("Workspace").Delivery:FindFirstChild("Chip Flakes") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chip Flakes") then game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack({[1] = "Chip Flakes",[2] = false})) end
    task.wait()
   end
  end)
 end    
})