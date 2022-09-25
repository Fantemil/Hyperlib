local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Magnet Legends")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local world = "1"
local Rebirth = "1"

b:Toggle("AutoFarm",function(bool)
 shared.toggle = bool
 AutoFarm = bool
end) 

b:Box("World","number",function(value)
 world = value
end)

b:Toggle("AutoRebirth",function(bool)
 shared.toggle = bool
 AutoRebirth = bool
end) 

b:Box("Rebirth","number",function(value)
 Rebirth = value
end)

b:Toggle("Flags",function(bool)
 shared.toggle = bool
 Flags = bool
end)

b:Toggle("Quests",function(bool)
 shared.toggle = bool
 Quests = bool
end)

f:Toggle("Magnet",function(bool)
 shared.toggle = bool
 Magnet = bool
end)

f:Toggle("Backpack",function(bool)
 shared.toggle = bool
 Backpack = bool
end)

e:Toggle("AntiAfk",function(bool)
 shared.toggle = bool
 AntiAfk = bool
end)

e:Button("Use All Codes",function()
    local stuff = {}
    local workspace = workspace:GetDescendants()
    for i = 1, #workspace do 
        local v = workspace[i]
        if v.Name == "CODE" then
            table.insert(stuff,v)
        end
    end
    for i = 1, #stuff do 
        local v = stuff[i]
        game:GetService("ReplicatedStorage").network_connections.redeem_code:FireServer(v.SurfaceGui.TextLabel.Text)
    end
end)

u:Button("maxgat5#8395",function()
 setclipboard("maxgat5#8395")
end)

u:Button("Discrod Server",function()
 setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if AutoRebirth == true then
        game:GetService("ReplicatedStorage").network_connections.rebirth:FireServer(Rebirth)
    end
    
 if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
  game:GetService("CoreGui").PurchasePromptApp:Destroy()
 end
 
 if Backpack == true then
  for i,v in pairs(game:GetService("Workspace")["_cache"].BackpackStartCache:GetChildren()) do
   local ohString1 = "Backpack"
   local ohNumber2 = v.Name
   local ohString3 = "BackpackStart"
   game:GetService("ReplicatedStorage").network_connections.interact_item:FireServer(ohString1, ohNumber2, ohString3)
  end
 end
 
 if Magnet == true then
  for i,v in pairs(game:GetService("Workspace")["_cache"].MagnetStartCache:GetChildren()) do
   local ohString1 = "Magnet"
   local ohNumber2 = v.Name
   local ohString3 = "MagnetStart"
   game:GetService("ReplicatedStorage").network_connections.interact_item:FireServer(ohString1, ohNumber2, ohString3)
  end
 end
 
 if Flags == true then
  for i,v in pairs(game:GetService("Workspace").Flags:GetChildren()) do
   if game.workspace[game.Players.LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
    if Flags == true then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.FlagZone.CFrame.Position + Vector3.new(0,0,0))
     wait(6)
    end
   end
  end
 end
 
 if Quests == true then
  for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quests.Scroll:GetChildren()) do
   game:GetService("ReplicatedStorage").network_connections.claim_quest_rewards:FireServer(i)
  end
 end
 
 if AutoFarm == true then
  for i,v in pairs(game:GetService("Workspace").CoinSpawns:GetChildren()) do
   if v.Name == world then
    for i,v1 in pairs(v:GetChildren()) do
     for i,v2 in pairs(game:GetService("Workspace").SellParts:GetChildren()) do
      if v2.Name == world then
       if AutoFarm == true then
        keypress(0x31)  
        keyrelease(0x31)
        if game.workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid") then
         if game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
          keypress(0x31)  
          keyrelease(0x31) 
         end
        end
        local tweenInfo = TweenInfo.new(
        0
        )       
        local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
        v1.CFrame.Position + Vector3.new(0,0,0)
        )})
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
        t:Play()
        wait(0)
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
        wait()
        local tweenInfo = TweenInfo.new(
        0
        )
        local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
        v2.Sell.CFrame.Position + Vector3.new(0,0,0)
        )})
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
        t:Play()
        wait(0)
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
        wait()
        
        if Backpack == true then
         for i,v in pairs(game:GetService("Workspace")["_cache"].BackpackStartCache:GetChildren()) do
          local ohString1 = "Backpack"
          local ohNumber2 = v.Name
          local ohString3 = "BackpackStart"
          game:GetService("ReplicatedStorage").network_connections.interact_item:FireServer(ohString1, ohNumber2, ohString3)
         end
        end
        
        if Magnet == true then
         for i,v in pairs(game:GetService("Workspace")["_cache"].MagnetStartCache:GetChildren()) do
          local ohString1 = "Magnet"
          local ohNumber2 = v.Name
          local ohString3 = "MagnetStart"
          game:GetService("ReplicatedStorage").network_connections.interact_item:FireServer(ohString1, ohNumber2, ohString3)
         end
        end
        
        if Quests == true then
         for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quests.Scroll:GetChildren()) do
          game:GetService("ReplicatedStorage").network_connections.claim_quest_rewards:FireServer(i)
         end
        end
        
        if AutoRebirth == true then
                                    game:GetService("ReplicatedStorage").network_connections.rebirth:FireServer(Rebirth)
                                end
       end
      end
     end
    end
   end
  end
 end

 if AntiAfk == true then
  local bb=game:service'VirtualUser'
  bb:CaptureController()
  bb:ClickButton2(Vector2.new())
 end
end