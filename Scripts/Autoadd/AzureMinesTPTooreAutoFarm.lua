local getAsset = syn and getsynasset or getcustomasset

if not isfile("AmbrosiaAlert.mp3") then
 local request = syn and syn.request or request
 local raw = request({
  Url = "https://cdn.discordapp.com/attachments/752654393211486309/1012085895127650324/asddads.mp3",
  Method = "GET",
 })
 writefile("AmbrosiaAlert.mp3", raw.Body)
end

game.Workspace.Terrain:ClearAllChildren()

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Plr = Players.LocalPlayer
local Characters = workspace:FindFirstChild("Players")
local Mine = workspace:FindFirstChild("Mine")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "End's Azure Mines Utility"})

local Main = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Misc = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Ore
local Raygun
local farming = false
local count
local fbcheck = 0
local deposit
local ESPtoggle
local AmbrosiaTP
local SafeMode = false
local skip
local farmStop
local zobies

function addUi(part)
 local partgui = Instance.new("BillboardGui")
 local frame = Instance.new("Frame")
 local namegui = Instance.new("BillboardGui")
 local text = Instance.new("TextLabel")

 partgui.Size = UDim2.new(1,0,1,0)
 partgui.AlwaysOnTop = true
 partgui.Name = "ESP"

 frame.BackgroundColor3 = Color3.fromRGB(255,80,60)
 frame.BackgroundTransparency = 0.75
 frame.Size = UDim2.new(1,0,1,0)
 frame.BorderSizePixel = 0
 frame.Parent = partgui

 namegui.Size = UDim2.new(3,0,1.5,0)
 namegui.SizeOffset = Vector2.new(0,1)
 namegui.AlwaysOnTop = true
 namegui.Name = "Namee"
 namegui.Parent = part

 text.Text = part.Name
 text.TextColor3 = Color3.fromRGB(255,80,60)
 text.TextTransparency = 0.25
 text.BackgroundTransparency = 1
 text.TextScaled = true
 text.Size = UDim2.new(1,0,1,0)
 text.Font = Enum.Font.GothamSemibold
 text.Name = "Text"
 text.Parent = namegui

 partgui.Parent = part
end

Misc:AddToggle({
 Name = "No Zombies",
 Default = false,
 Callback = function(Value)
  zobies = Value
  if zobies == true then
   for _,v in pairs(game.Workspace.Mine:GetChildren()) do
    if v.Name == "Zombie" then
     v:Destroy()
    end
   end
  end
 end
})

Misc:AddButton({
 Name = "FullBright",
 Callback = function()
  fbcheck = fbcheck + 1
  if fbcheck >= 2 then
   return
  end
  local stuff = {Lighting.GameBlur, Lighting.ColorCorrection, Lighting.Blur, Lighting.Bloom}
  Lighting.FogEnd = 100000
  Lighting.FogStart = 0
  Lighting.Atmosphere.Parent = ReplicatedStorage
  for _, v in pairs(stuff) do
   v.Enabled = false
  end
  while true do
   wait()
   Lighting.Brightness = 2
   Lighting.ClockTime = 13
  end
 end    
})

Main:AddDropdown({
 Name = "Select Ore",
 Default = "1",
 Options = {"Ambrosia", "Amethyst", "Antimatter", "Azure", "Baryte", "Boomite", "Coal", "Copper", "Constellatium", "Darkmatter", "Diamond", "Dragonglass", "Dragonstone", "Emerald", "Firecrystal", "Frightstone", "Frostarium", "Garnet", "Gold", "Illuminunium", "Iron", "Kappa", "Mithril", "Moonstone", "Newtonium", "Nightmarium", "Opal", "Painite", "Platinum", "Plutonium", "Pumpkinite", "Promethium", "Rainbonite", "Ruby", "Sapphire", "Silver", "Serendibite", "Sinistyte L", "Sinistyte M", "Sinistyte S", "Stellarite", "Stone", "Sulfur", "Symmetrium", "Topaz", "Twitchite", "Unobtainium", "Uranium"},
 Callback = function(Value)
  Ore = Value
 end
})

Misc:AddToggle({
 Name = "Autofarm with Raygun [GAMEPASS NEEDED]",
 Default = false,
 Callback = function(Value)
  Raygun = Value
  if Raygun then

   if not Characters[Plr.Name]:FindFirstChild("RayGun") then
    Plr.Backpack:FindFirstChild("RayGun").Parent = Characters[Plr.Name]
    task.wait(0.1)
    Characters[Plr.Name]:FindFirstChild("RayGun").Parent = Plr.Backpack
   end
  end
  while Raygun do
   Plr.Backpack.RayGun.Gun.Func:InvokeServer("Reload")
   task.wait(3)
  end
 end
})

Main:AddButton({
 Name = "Teleport to Ore",
 Callback = function()
  for _,v in pairs(Mine:GetChildren()) do
   if v.Name == Ore then
    Plr.Character.HumanoidRootPart.CFrame = v.CFrame
    break
   end
  end
 end
})

Main:AddToggle({
 Name = "Ore ESP",
 Default = false,
 Callback = function(Value)
  ESPtoggle = Value
  while ESPtoggle do
   task.wait(2)
   for _,v in pairs(Mine:GetChildren()) do
    if v.Name == Ore and not v:FindFirstChildWhichIsA("BillboardGui") then
     addUi(v)
    end
   end
  end
  if not ESPtoggle then
   for _,v in pairs(Mine:GetChildren()) do
    if v:FindFirstChild("ESP") then
     v.ESP:Destroy()
     v.Namee:Destroy()
    end
   end
  end
 end
})

Misc:AddToggle({
 Name = "GhostCollect Ambrosia (Don't autofarm with this!)",
 Default = false,
 Callback = function(Value)
  AmbrosiaTP = Value
 end
})

Main:AddToggle({
 Name = "Autofarm SafeMode (Recommended in public servers)",
 Default = true,
 Callback = function(Value)
  SafeMode = Value
 end    
})

local susfarm = Main:AddToggle({
 Name = "Enable Autofarm",
 Default = false,
 Callback = function(toggled)
  farming = toggled
  while farming do
   workspace.Gravity = 0
   if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
    Plr.Backpack:FindFirstChild("Pickaxe").Parent = Characters[Plr.Name]
    task.wait(0.1)
   end
   Characters[Plr.Name].Pickaxe.PickaxeScript.Disabled = true
   task.wait(0.666)
   for _,v in pairs(Mine:GetChildren()) do
    if not farming then
     break
    end
    if v.Name == Ore and v.Anchored == true then
     for _,playerz in pairs(game.Players:GetPlayers()) do
      local OrePlayerDistance = (v.Position - playerz.Character.Head.Position).Magnitude
      if OrePlayerDistance <= 100 and SafeMode == true and playerz ~= game.Players.LocalPlayer then
       skip = true
       break
      end
     end
     if skip == true then
      skip = false
      continue
     end
     v.CanCollide = false
     Plr.Character.HumanoidRootPart.CFrame = v.CFrame
     task.wait(0.1)
     Plr.Character.HumanoidRootPart.Anchored = true
     if Raygun == true then
      Plr.Backpack.RayGun.Gun.Func:InvokeServer("Fire", {Vector3.new(v.Position.X, v.Position.Y, v.Position.Z), 661203044677.2754, Vector3.new(v.Position.X, v.Position.Y-4, v.Position.Z)})
     end
     if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
      FarmStop()
      break
     end
     Characters[Plr.Name].Pickaxe.SetTarget:InvokeServer(v)
     task.wait(0.3)
     if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
      FarmStop()
      break
     end
     Characters[Plr.Name].Pickaxe.Activation:FireServer(true)
     count = 0
     repeat
      if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
       FarmStop()
       break
      end
      if count == 5 then
       Characters[Plr.Name].Pickaxe.Activation:FireServer(true)
      end
      if count >=10 then
       print("Breaking")
       break
      end
      task.wait(0.5)
      local Leg = game.Players.LocalPlayer.Character["Left Leg"]
      local Platforms = game.Workspace.Terrain:GetChildren()
      if Platforms[1] then
       for i,sussy in pairs(game.Workspace.Terrain:GetChildren()) do
        local Distance = (sussy.Position - Leg.Position).Magnitude
        if Distance <= 6 then
         print("Pass")
         count = 0
         repeat
          task.wait(0.1)
         until v.Parent ~= Mine or farming == false
        else
         count = count + 1
         print(count)
        end
       end
      else
       count = count + 1
       print(count)
      end
      if not farming then
       break
      end
      if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
       FarmStop()
       break
      end
     until v.Parent ~= Mine or farming == false
     Plr.Character.HumanoidRootPart.Anchored = false
     if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
      FarmStop()
      break
     end
     Characters[Plr.Name].Pickaxe.Activation:FireServer(false)
    end
   end
   if farming == false then
    workspace.Gravity = 192
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    if Characters[Plr.Name]:FindFirstChild("Pickaxe") then
     Characters[Plr.Name]:FindFirstChild("Pickaxe").PickaxeScript.Disabled = false
    elseif Plr.Backpack:FindFirstChild("Pickaxe") then
     Plr.Backpack:FindFirstChild("Pickaxe").PickaxeScript.Disabled = false
    end
   end
  end
 end
})

function FarmStop()
 susfarm:Set(false)
 farming = false
end

Main:AddToggle({
 Name = "Auto Deposit",
 Default = false,
 Callback = function(Value)
  deposit = Value
  while deposit do
   ReplicatedStorage.MoveAllItems:InvokeServer()
   task.wait(5)
  end
 end
})

game.Workspace.Mine.ChildAdded:Connect(function(child)
 task.wait(0.1)
 if child.Name == "Ambrosia" then
  OrionLib:MakeNotification({
   Name = "OH MA GAWD",
   Content = "Ambrosia just spawned!",
   Image = "rbxassetid://10693905882",
   Time = 13
  })
  local sound = Instance.new("Sound")
  sound.SoundId = getAsset("AmbrosiaAlert.mp3")
  sound.Parent = game.Workspace
  sound.Volume = 3.5
  sound.Playing = true
  if AmbrosiaTP then
   game.Workspace.Gravity = 0
   if not Characters[Plr.Name]:FindFirstChild("Pickaxe") then
    Plr.Backpack:FindFirstChild("Pickaxe").Parent = Characters[Plr.Name]
   end
   Characters[Plr.Name].Pickaxe.PickaxeScript.Disabled = true
   child.CanCollide = false
   Plr.Character.HumanoidRootPart.CFrame = child.CFrame
   task.wait(0.1)
   Plr.Character.HumanoidRootPart.Anchored = true
   Characters[Plr.Name].Pickaxe.SetTarget:InvokeServer(child)
   task.wait(0.2)
   Characters[Plr.Name].Pickaxe.Activation:FireServer(true)
   repeat
    task.wait(0.1)
   until child.Parent ~= Mine
   task.wait(0.1)
   Characters[Plr.Name].Pickaxe.Activation:FireServer(false)
   workspace.Gravity = 192
   Plr.Character.HumanoidRootPart.Anchored = false
   Characters[Plr.Name].Pickaxe.PickaxeScript.Disabled = false
   game.ReplicatedStorage.ToSurface:InvokeServer()
  end
 elseif child.Name == "Zombie" then
  if zobies == true then
   child:Destroy()
  end
 end
end)

OrionLib:Init()