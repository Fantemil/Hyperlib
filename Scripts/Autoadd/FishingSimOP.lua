--To Do List
--Sunken Ships are named 'ShipModel' then an integer.
--Add Fly
--Add Auto Fish with fish detection
--Add Auto Shark
--Add Shark ESP
--Add Sunken Ship ESP
--Add Auto Quest Complete
--Add Legendary and Mythic Only Mode through Hook Function
--Add Collect Daily Chests 
 --Monster's Borough
 --Location 1: -3331.9873, 84.9329681, 2672.59546
 --Location 2: -3361.08521, 116.190727, 2824.31201
 --Location 3: -3106.71753, 40.5118103, 2906.54956
 --Location 4: -883.169434, 44.9942093, 3060.43579
 --Ancient Shores
 --Location 1: -2426.84131, 110.925598, -2122.33936
--Change Auto Sell to use SellEverything function instead
--Fix Speed when Swimming at Ocean Top
--Add Auto Chest Collect that works for both sunken ships and daily chests
--Complete Auto Ship
--Change Sell All Below Legendary to Toggle for Both Auto Sell and Auto Any Kill

--Completed To Do List
--Add Level Barrier Removal
--Add Boat Barrier Removal
--Fix Anti-AFK
--Add in Gamepass Toggle
--Add Respawn Where Died
--Add Teleport to Boat
--Add Boat Menu; Torque, Max Speed, Turn Speed;
--Add Player Menu; Jump Power, Walk Speed;
--Edit Level Barrier Removal to detect if sitting in boat and unsit
--Add Teleport to Shops
--Add Teleport to Caster
--Add Teleport to Player
--Add Teleport to Fish Aquarium
--Add Backup Location Data with Button
--Add Teleport to Islands

--Debug Print
local currVersion = "v1.4"

_G.fishdebug = true
function dprint(str)
 if _G.fishdebug then
  game:GetService('TestService'):Message("[Fish Sim GUI] "..str)
 end
end

--Load GUI
local library = loadstring(game:HttpGet("https://pastebin.com/raw/djhHQFXz", true))()
dprint("GUI Library Loaded")
local fishGui = library:CreateWindow('Fish Sim ' .. currVersion)
dprint("GUI Window Created")
local mainGui = library:CreateWindow('Main')
dprint("Main Window Created")
local teleGui = library:CreateWindow('Teleport')
dprint("Teleport Window Created")
local debugGui = library:CreateWindow('Debug')
dprint("Debug Window Created")

--Global Variables
local inputService = game:GetService("UserInputService")
dprint("User Input Service Variable Loaded")
local boundSpace = game.Workspace.IgnoredByMouse
dprint("Bound Space Workspace Loaded")
local playerList = game:GetService("Players")
dprint("Player List Variable Loaded")
local plr = playerList.LocalPlayer
dprint("Local Player Variable Loaded")
local hrp = plr.Character.HumanoidRootPart
dprint("HumanoidRootPart Variable Loaded")
local mse = plr:GetMouse()
dprint("Mouse Variable Loaded")
local lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
dprint("Set Last Location at Spawn")

--Debug Functions

--Rejoin Function
local bRejoin = debugGui:Button("Rejoin", function()
 game:GetService('TeleportService'):Teleport(game.PlaceId)
 dprint("bRejoin Clicked")
end)

--Force Start (NOT WORKING)
--[[
local bForceStart = debugGui:Button("Force Start",
 function()
  
 end
)
]]

--Unload Script (NOT WORKING)
--[[
local bUnload = debugGui:Button("Unload",
 function()
  script:Remove()
 end
)
]]

--Disable Console Game Warnings (NOT WORKING)
--[[
local tWarn = debugGui:Toggle("Disable Warn", {flag = "tWarn"})
local warnHook = hookfunction(warn, 
 function(...)
  if debugGui.flags.tWarn then
   return
  else
   return warnHook(...)
  end
 end
)
]]

--Click to Teleport Function
local tCtrl = debugGui:Toggle("Ctrl-TP", {flag = "ctrlTp"})

function cCtrlTp()
 inputService.InputBegan:Connect(function(input)
  if inputService:IsKeyDown(Enum.KeyCode.LeftControl) and debugGui.flags.ctrlTp then
   if mse.Target then
    hrp.CFrame = CFrame.new(mse.Hit.x, mse.Hit.y + 3, mse.Hit.z)
    dprint("Teleported to "..mse.Hit.x.." , "..mse.Hit.y.." , "..mse.Hit.z)
   end
  end
 end)
end

cCtrlTp()

--Anti AFK
local tAfk = debugGui:Toggle("Anti-AFK", {flag = "fAntiAfk"})

function antiAfk()
 local VirtualUser = game:GetService('VirtualUser')
 game:GetService("Players").LocalPlayer.Idled:connect(function()
  if debugGui.flags.fAntiAfk then
   VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(3)
   VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   dprint("Anti-AFK Script Active")
  end
 end)
end

antiAfk()

--NoClip
local tNoClip = debugGui:Toggle("NoClip", {flag = "fNoClip"})
local tNoClipToggle = false

debugGui:Bind("NoClip Bind", {
   flag = "dNoClip";
   kbonly = true;
   default = Enum.KeyCode.V;
}, function()
 if debugGui.flags.fNoClip then
  tNoClipToggle = not tNoClipToggle
  dprint("NoClip Toggled: "..tostring(tNoClipToggle))
 end
end)

game:getService("RunService"):BindToRenderStep("",0,function()
 if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") and debugGui.flags.fNoClip then return end
 
 if debugGui.flags.fNoClip and tNoClipToggle then
  game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
  dprint("NoClip Activated")
 end
end)


--Main Window Functions

fishGui:Section('Client Sided')
dprint("Client Sided Section Created")

--Toggle Game Passes (Client Sided)
local bGamePasses = fishGui:Button("Toggle All Gamepasses", function()
 for i, v in pairs(plr.LocalData.Gamepasses:GetChildren()) do
  v.Value = not v.Value
 end
 dprint("Gamepasses Toggled")
end)

fishGui:Section('Barriers')
dprint("Barrier Section Created")

--Level Barrier Removal
local bLvlBar = fishGui:Button("Remove Level Barriers", function()
 for i, v in pairs(boundSpace.LockedAreas:GetDescendants()) do 
  v:Destroy()
 end
 dprint("Level Barriers Removed")
end)

--Boat Barrier Removal
local bBoatBar = fishGui:Button("Remove Boat Barriers", function()
 for i, v in pairs(boundSpace.BoatBorders:GetDescendants()) do 
  v:Destroy()
 end
 dprint("Boat Barriers Removed")
end)

fishGui:Section('Character')
dprint("Character Section Created")

--Character and Boat Status
local tRespawn = fishGui:Toggle("Respawn Where Died", {flag = "fRespawn"})
dprint("fRespawn Status: "..tostring(fishGui.flags.fRespawn))

--WalkSpeed Changer
local xSpeed = fishGui:Box("Speed (16/23)", {
 flag = "ws";
 type = 'number';
}, function(new)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
 dprint("WalkSpeed set to "..new)
end)

--JumpPower Changer
local xJump = fishGui:Box("Jump (50)", {
 flag = "jp";
 type = 'number';
}, function(new)
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
 dprint("JumpPower set to "..new)
end)

fishGui:Section('Boat')
dprint("Boat Section Created")

--BoatSpeed Changer
local xBoat = fishGui:Box("Speed", {
 flag = "bs";
 type = 'number';
}, function(new)
 for i, v in pairs(game.Workspace:GetChildren()) do 
  dprint("Current Object Selected: "..v.Name)
  if v.Name == (game.Players.LocalPlayer.Name.."'s Boat") then
   dprint("Boat Selected: "..v.Name)
   v.Controller.VehicleSeat.MaxSpeed = tonumber(new)
   dprint("BoatSpeed set to "..new)
   break
  end
 end
end)

--Teleport to Boat
local bToBoat = fishGui:Button("Teleport to Boat", function()
 for i, v in pairs(game.Workspace:GetChildren()) do 
  dprint("Current Object Selected: "..v.Name)
  if v.Name == (game.Players.LocalPlayer.Name.."'s Boat") then
   lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   if game.Players.LocalPlayer.Character.Humanoid.Sit then
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
   end
   wait()
   local coord = v.Controller.VehicleSeat.CFrame
   dprint("Boat Selected: "..v.Name)
   hrp.CFrame = CFrame.new(coord.x,coord.y + 3,coord.z)
   dprint("Teleported to Coordinates: "..tostring(hrp.CFrame))
   break
  end
 end
end)


--Teleport Functions

--Last Location Teleport
local bReturn = teleGui:Button("Return to Last Location", 
 function()
  if lastLocation ~= nil then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastLocation
  end
 end
)

--Master Teleport Search

local masterLocations = {
 --Port Jackson
 PortJacksonDocks = Vector3.new(56.7393608, 41.4751053, -63.380661),
 Aquarium = Vector3.new(-71.4487915, 55.8237305, 77.1413193),
 BoatShop = Vector3.new(-3.54861736, 46.9481888, -107.122681),
 SupplyShop = Vector3.new(2.20014167, 53.5718613, 11.437911),
 PortJacksonCaster = Vector3.new(-52.98069, 54.567421, -20.777195),
 QuestTavern = Vector3.new(-114.295792, 54.1254578, -67.9122925),
 Rodney = Vector3.new(-105.481873, 54.1767731, -10.4815578),
 CoinChests = Vector3.new(-53.1726341, 52.9375458, 13.6784639),
 PortJacksonPoperson = Vector3.new(-76.9964676, 50.4331894, -132.130676),

 --Volcano Island
 VolcanoIslandDocks = Vector3.new(2815.75854, 41.5044899, 1470.11658),
 VolcanoIslandCaster = Vector3.new(2971.24414, 45.0137711, 1409.98901),
 VolcanoIslandObby = Vector3.new(3162.37256, 48.9485931, 1512.08679),
 VolcanoIslandObbyEnd = Vector3.new(48146.2109, 2162.26001, 13683.6201),
 VolcanoIslandPoperson = Vector3.new(3185.36279, 47.8058777, 1239.24707),
 VolcanoIslandQuest = Vector3.new(3091.27783, 180.46051, 1799.91833),

 --Shadow Isles
 ShadowIslesDocks = Vector3.new(2189.79932, 42.294281, -2260.20508),
 ShadowIslesPoperson = Vector3.new(2198.46167, 43.0711288, -2222.51172),
 ShadowIslesCave = Vector3.new(2144.77222, 50.0127106, -2270.18164),
 ShadowIslesCasper = Vector3.new(2128.79346, 188.23761, -2222.95239),
 ShadowIslesFirePlace = Vector3.new(2128.79346, 188.23761, -2222.95239),
 ShadowIslesBombLocation = Vector3.new(2066.40381, 194.53775, -2432.69336),

 --Ancient Shores
 AncientShoresDocks = Vector3.new(-2244.64795, 42.2645645, -1716.90173),
 AncientShoresCasper = Vector3.new(-2582.82251, 51.214386, -1796.34143),
 AncientShoresGiant = Vector3.new(-2392.20386, 110.919983, -2110.41602),
 AncientShoresQuest1 = Vector3.new(-2625.92065, 162.517609, -2124.42725),
 AncientShoresQuest2 = Vector3.new(-2852.25513, 74.7504883, -2232.0437),
 AncientShoresQuest3 = Vector3.new(-2517.18921, 123.897522, -1611.0531),
 AncientShoresRiver = Vector3.new(-2427.65845, 45.6136932, -1902.73279),

 --Monster's Borough
 MonsterBoroughDocks = Vector3.new(-3200.25781, 41.6784821, 2732.46777),

}

teleGui:SearchBox("Master Teleport Search", {
 location = shared;
 flag = "mTeleports";
 list= {
  "Aquarium";
  "Port Jackson's Docks";
  "Boat Shop";
  "Supply Shop";
  "Port Jackson's Caster";
  "Quest Tavern";
  "Rodney";
  "Coin Chests";
  "Port Jackson's Poperson";
  "Volcano Island's Docks";
  "Volcano Island's Caster";
  "Volcano Island's Obby";
  "Volcano Island's Obby End";
  "Volcano Island's Poperson";
  "Volcano Island's Quest";
  "Shadow Isles' Docks";
  "Shadow Isles' Poperson";
  "Shadow Isles' Cave";
  "Shadow Isles' Casper";
  "Shadow Isles' Fire Place";
  "Shadow Isles' Bomb Location";
  "Ancient Shores' Docks";
  "Ancient Shores' Casper";
  "Ancient Shores' Giant";
  "Ancient Shores' Quest 1";
  "Ancient Shores' Quest 2";
  "Ancient Shores' Quest 3";
  "Ancient Shores' River";
  "Monster's Borough Docks";
 }
},
 function(new)
  lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  if game.Players.LocalPlayer.Character.Humanoid.Sit then
   game.Players.LocalPlayer.Character.Humanoid.Sit = false
  end
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
  dprint("Teleported to " .. new)
 end
)

teleGui:Section('Port Jackson')
dprint("Port Jackson Teleport Section Created")

teleGui:Dropdown("Port Jackson Teleports", {
 location = shared;
 flag = "pjTeleports";
 list = {
  "Aquarium";
  "Port Jackson's Docks";
  "Boat Shop";
  "Supply Shop";
  "Port Jackson's Caster";
  "Quest Tavern";
  "Rodney";
  "Coin Chests";
  "Port Jackson's Poperson";
 }
 }, function(new)
 lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 if game.Players.LocalPlayer.Character.Humanoid.Sit then
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
 end
 wait()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
 dprint("Teleported to " .. new)
 end)

 teleGui:Section('Volcano Island')
 dprint("Volcano Island Teleport Section Created")

teleGui:Dropdown("Volcano Island Teleports", {
 location = shared;
 flag = "viTeleports";
 list = {
  "Volcano Island's Docks";
  "Volcano Island's Caster";
  "Volcano Island's Obby";
  "Volcano Island's Obby End";
  "Volcano Island's Poperson";
  "Volcano Island's Quest";
 }
 }, function(new)
 lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 if game.Players.LocalPlayer.Character.Humanoid.Sit then
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
 end
 wait()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
 dprint("Teleported to " .. new)
 end)

 teleGui:Section('Shadow Isles')
 dprint("Shadow Isles Teleport Section Created")

 teleGui:Dropdown("Shadow Isles Teleports", {
 location = shared;
 flag = "siTeleports";
 list = {
  "Shadow Isles' Docks";
  "Shadow Isles' Poperson";
  "Shadow Isles' Cave";
  "Shadow Isles' Casper";
  "Shadow Isles' Fire Place";
  "Shadow Isles' Bomb Location";
 }
 }, function(new)
 lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 if game.Players.LocalPlayer.Character.Humanoid.Sit then
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
 end
 wait()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
 dprint("Teleported to " .. new)
 end)

 teleGui:Section('Ancient Shores')
 dprint("Ancient Shores Teleport Section Created")

 teleGui:Dropdown("Ancient Shores Teleports", {
 location = shared;
 flag = "asTeleports";
 list = {
  "Ancient Shores' Docks";
  "Ancient Shores' Casper";
  "Ancient Shores' Giant";
  "Ancient Shores' Quest 1";
  "Ancient Shores' Quest 2";
  "Ancient Shores' Quest 3";
  "Ancient Shores' River";
 }
 }, function(new)
 lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 if game.Players.LocalPlayer.Character.Humanoid.Sit then
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
 end
 wait()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
 dprint("Teleported to " .. new)
 end)

 teleGui:Section("Monster's Borough")
 dprint("Monster's Borough Teleport Section Created")

 teleGui:Dropdown("Monster's Borough Teleports", {
 location = shared;
 flag = "mbTeleports";
 list = {
  "Monster's Borough Docks";
 }
 }, function(new)
 lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 if game.Players.LocalPlayer.Character.Humanoid.Sit then
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
 end
 wait()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(masterLocations[new:gsub("'s",""):gsub(" ",""):gsub("'","")])
 dprint("Teleported to " .. new)
 end)
 


--Main Functions

--Auto Fish Delay
local minDelay = 3
local maxDelay = 7
local xMinDelay = mainGui:Box("Min Delay (3)", {
 flag = "mindf";
 type = 'number';
}, function(new)
 minDelay = tonumber(new)
 dprint("Minimum Auto Fish Delay set to " .. new)
end)

local xMaxDelay = mainGui:Box("Max Delay (7)", {
 flag = "maxdf";
 type = 'number';
}, function(new)
 maxDelay = tonumber(new)
 dprint("Maximum Auto Fish Delay set to " .. new)
end)

--Catch Fish
local bCatchFish = mainGui:Button("Catch Fish", 
 function()
  game.ReplicatedStorage.CloudClientResources.Communication.Events.FishedDone:FireServer()
 end
)

--Auto Fish
local tAutoFish = mainGui:Toggle("Auto Fish", {flag = "fAutoFish"})

_G.fishAuto = false
_G.fishWaitTime = math.random(minDelay, maxDelay)
dprint("Global Auto Fish Boolean created")
loadstring(game:HttpGet("https://pastebin.com/raw/AtqDXgmq", true))()

plr.Character.ChildAdded:Connect(function()
 _G.fishAuto = mainGui.flags.fAutoFish
 dprint("Global Auto Fish Boolean set to " .. tostring(mainGui.flags.fAutoFish))
end)
plr.Character.ChildRemoved:Connect(function()
 _G.fishAuto = mainGui.flags.fAutoFish
 dprint("Global Auto Fish Boolean set to " .. tostring(mainGui.flags.fAutoFish))
end)

--Sell All
local bSellAll = mainGui:Button("Sell All", 
 function()
  game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellEverything:InvokeServer()
 end
)

--Sell All Below Legendary
local bSellAllBelowLegendary = mainGui:Button("Sell All Below Legendary", 
 function()
  for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if not v:FindFirstChild("Hold") then 
    if v.RarityLevel.Value < 5 then
     dprint("Selling All Below Legendary: " .. v.Name)
     game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellItem:InvokeServer(v.Name, 1)
    end
   end
   wait(0.010)
  end
 end
)

--Auto Sell
local tAutoSell = mainGui:Toggle("Auto Sell", {flag = "fAutoSell"})

plr.Backpack.ChildAdded:Connect(function()
 if mainGui.flags.fAutoSell then
  game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellEverything:InvokeServer()
  --[[
  for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if not v:FindFirstChild("Hold") then 
    dprint("Selling " .. v.Name)
    game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellItem:InvokeServer(v.Name, 1)
   end
   wait(1)
  end
  ]]
 end
end)

plr.CharacterAdded:Connect(function()
 local bp = Player:WaitForChild('Backpack')
 bp.ChildAdded:connect(function()
  if mainGui.flags.fAutoSell then
   game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellEverything:InvokeServer()
   --[[
   for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    print(v.Name)
    if string.find(v.Name, "fish") or string.find(v.Name, "Fish") then 
     print("Selling " .. v.Name)
     game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellItem:InvokeServer(v.Name, 1)
    end
    wait(1)
   end
   ]]
  end
 end)
end)

--Kill Shark
local prevLocation
local bKillShark = mainGui:Button("Kill Shark", 
 function()
  dprint("Kill Shark Pressed.")
  for i, v in pairs(game.Workspace:GetChildren()) do
   if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "GreatWhiteShark" then
    prevLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
     if game.Players.LocalPlayer.Character.Humanoid.Sit then
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
     wait(0.25)
     game.ReplicatedStorage.CloudClientResources.Communication.Events.DamageSeaMonster:FireServer(v, v.Health, true)
     wait(0.5)
     dprint("Sent Game Damage to Shark")
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevLocation
     break
    elseif game.Players.LocalPlayer:FindFirstChild("Backpack") then
     for p, q in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do
      if q:FindFirstChild("Damage") then
       q.Parent = game.Players.LocalPlayer.Character
      end
     end
    end
   end
  end
 end
)

--Kill Orca
local prevLocation
local bKillOrca = mainGui:Button("Kill Orca", 
 function()
  dprint("Kill Any Pressed.")
  for i, v in pairs(game.Workspace:GetChildren()) do
   if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "KillerWhale" then
    prevLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
     if game.Players.LocalPlayer.Character.Humanoid.Sit then
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
     wait(0.25)
     game.ReplicatedStorage.CloudClientResources.Communication.Events.DamageSeaMonster:FireServer(v, v.Health, true)
     wait(0.5)
     dprint("Sent Game Damage to Shark")
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevLocation
     break
    elseif game.Players.LocalPlayer:FindFirstChild("Backpack") then
     for p, q in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do
      if q:FindFirstChild("Damage") then
       q.Parent = game.Players.LocalPlayer.Character
      end
     end
    end
   end
  end
 end
)

--Kill Any
local prevLocation
local bKillAny = mainGui:Button("Kill Any", 
 function()
  dprint("Kill Any Pressed.")
  for i, v in pairs(game.Workspace:GetChildren()) do
   if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") then
    prevLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
     if game.Players.LocalPlayer.Character.Humanoid.Sit then
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
     wait(0.25)
     game.ReplicatedStorage.CloudClientResources.Communication.Events.DamageSeaMonster:FireServer(v, v.Health, true)
     wait(0.5)
     dprint("Sent Game Damage to Shark")
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevLocation
     break
    elseif game.Players.LocalPlayer:FindFirstChild("Backpack") then
     for p, q in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do
      if q:FindFirstChild("Damage") then
       q.Parent = game.Players.LocalPlayer.Character
      end
     end
    end
   end
  end
 end
)

--Auto Any Kill
local runOnce = true
local delayAuto = 7
local tAutoAnyKill = mainGui:Toggle("Auto Any Kill", {flag = "tAutoAnyKill"})
game.Workspace.ChildAdded:Connect(
 function ()
  if runOnce then
   runOnce = false
   for i, v in pairs(game.Workspace:GetChildren()) do
    if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and mainGui.flags.tAutoAnyKill then
     prevLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     if #game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren() + 1 >= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model").Spaces.Value and mainGui.flags.fAutoSell then
      dprint("Max Bag Space: " .. game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model").Spaces.Value)
      dprint("Current Bag Holding: " .. #game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren())
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.98069, 54.567421, -20.777195)
      wait(1)
      game.ReplicatedStorage.CloudClientResources.Communication.Functions.SellEverything:InvokeServer()
      wait(2)
     end
     dprint("Auto Any Kill - Last Location Saved As: " .. tostring(prevLocation))
     if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
      if game.Players.LocalPlayer.Character.Humanoid.Sit then
       game.Players.LocalPlayer.Character.Humanoid.Sit = false
      end
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
      wait(0.25)
      game.ReplicatedStorage.CloudClientResources.Communication.Events.DamageSeaMonster:FireServer(v, v.Health, true)
      wait(0.5)
      dprint("Sent Game Damage to Sea Monster")
     elseif game.Players.LocalPlayer:FindFirstChild("Backpack") then
      for p, q in pairs(game.Players.LocalPlayer:FindFirstChild("Backpack"):GetChildren()) do
       if q:FindFirstChild("Damage") then
        q.Parent = game.Players.LocalPlayer.Character
       end
      end
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevLocation
     dprint("Auto Any Kill - Last Location Loaded To: " .. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
     wait(delayAuto)
    end
   end
   runOnce = true
  end
 end
)

--Teleport to Sunken Ship
local bToShip = mainGui:Button("Teleport to Sunken Ship", 
 function()
  for i, v in pairs(game.Workspace:GetChildren()) do
   if string.find(v.Name, "ShipModel") then
    local newFrame = v.HitBox.CFrame
    lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
     game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = newFrame
    dprint("Teleported to Sunken Ship")
    return
   end
  end
  dprint("No Sunken Ships Found!")
  return
 end
)

--Auto Ship
local tToShip = mainGui:Toggle("Auto Ship", {flag = "tToShip"})
game.Workspace.ChildAdded:Connect(
 function(child)
  if string.find(child.Name, "ShipModel") then
   if mainGui.flags.tToShip then
    dprint("Ship Model Name: " .. child.Name)
    local newFrame = child:WaitForChild("HitBox").CFrame
    lastLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
     game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = newFrame
    dprint("Teleported to Sunken Ship")
    return
   end
  end
 end
)


--Character Status
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
 --Death Check
 dprint("Character Dead")
 local vRestore = hrp.CFrame
 local lastLocation = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
 dprint("Character Death Location Saved")
 dprint("Respawn on Death is "..tostring(fishGui.flags.fRespawn))
 
 --Respawn Check
 plr.CharacterAdded:wait()
 repeat wait() until plr.Character:FindFirstChild("HumanoidRootPart")
 dprint("Character Respawned")
 
 inputService = game:GetService("UserInputService")
 dprint("User Input Service Variable Loaded After Death")
 playerList = game:GetService("Players")
 dprint("Player List Variable Loaded After Death")
 plr = playerList.LocalPlayer
 dprint("Local Player Variable Loaded After Death")
 hrp = plr.Character.HumanoidRootPart
 dprint("HumanoidRootPart Variable Loaded After Death")
 mse = plr:GetMouse()
 dprint("Mouse Variable Loaded After Death")
 
 
 cCtrlTp()
 dprint("After Death CtrlTP Loaded")
 
 
 antiAfk()
 dprint("After Death Anti-AFK Loaded")
 
 if fishGui.flags.fRespawn then
  hrp.CFrame = vRestore
  dprint("Character Death Location Loaded")
 end
end)