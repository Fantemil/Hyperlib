-- https://v3rmillion.net/showthread.php?tid=1022844 for discord webhook ty <3


function disableanticheat()
   local playerhook = game:GetService'Players'.LocalPlayer
   repeat wait() until playerhook.Character:FindFirstChild'CoreCharacter'
local CoreCharacter = playerhook.Character.CoreCharacter
   repeat wait() until getsenv(CoreCharacter).SetupBed ~= nil
for i,v in pairs(getconnections(playerhook.Character.DescendantAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(workspace.DescendantRemoving)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(workspace.RankBarriers.DescendantRemoving)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(CoreCharacter.Parent.DescendantAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(playerhook.Character.Humanoid.Changed)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(getconnections(playerhook.Backpack.ChildAdded)) do if
   getfenv(v.Function).script == CoreCharacter then
   v:Disable()
end
end
for i,v in pairs(workspace.RankBarriers:GetChildren()) do
   for o,b in pairs(getconnections(v.Changed)) do if
   getfenv(b.Function).script == CoreCharacter then
   b:Disable()
end
end
end
for i,v in pairs(playerhook.Character:GetChildren()) do if
   v:IsA'MeshPart' or v:IsA'BasePart' then
   for o,b in pairs(getconnections(v:GetPropertyChangedSignal"CanCollide")) do if
   getfenv(b.Function).script == CoreCharacter then
       b:Disable()
   end
end
end
end
for i,v in pairs(game.Lighting:GetChildren()) do
   for o,b in pairs(getconnections(v.Changed)) do if
   getfenv(b.Function).script == CoreCharacter then
   b:Disable()
end
end
end
print("\nDisabled\n")
end
disableanticheat()
game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(function(chr)
   chr.ChildAdded:Connect(function(obj)
       if obj.Name == "CoreCharacter" then
           disableanticheat()
       end
   end)
end)

game:GetService("Workspace").RankBarriers["Balcony Barrier"]:Destroy()

nursenames = {}


getgenv().playingroup = game:GetService'Players'.LocalPlayer:IsInGroup(5008654)
function parenttochar(item)
   game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild(item).Parent = game:GetService'Players'.LocalPlayer.Character
   end
function eatmelon()
for i=0,2 do
wait(3)
game:GetService("ReplicatedStorage").Events.Game:FireServer("ConsumeItem", game:GetService'Players'.LocalPlayer.Character["Pride Melon"])
end
end


local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
event.OnMessageDoneFiltering.OnClientEvent:Connect(function(object)
       if getgenv().nursechatlog == true and game:GetService'Players'[object.FromSpeaker]:GetRankInGroup(5008654) >= 50 and string.len(object.Message) ~= 1 then
  print(string.format("%s : %s", object.FromSpeaker, object.Message or ""))
  local time = os.date("*t")
local url =
  "insert you little discord webhook url here to log their chatlogs to discord <3 also the discord webhook was completely skidded because i wasnt aware of how to do that, ive learned how to do it without skidding now ;sob;"
local data = { -- i do need the exact SECOND. they post the msg okay, i totally do trust me, i just know it'll be useful one day
   ["content"] = object.FromSpeaker.. " : ".. object.Message.. "\n"..time.month..":"..time.day..":"..time.hour .. ":" .. time.min..":" ..time.sec.."\n"
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
  if string.find(object.Message, string.lower("EXPLOIT")) then
      print("\n ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ \n")
  end
  end
end)

game:GetService'Players'.LocalPlayer.Voracity.Changed:Connect(function(hungervalue)
   if getgenv().eatafk == true and hungervalue <= 50 then
   for i,v in pairs(game:GetService'Workspace'.QweerialTrees:GetDescendants()) do if
       v.ClassName == "ClickDetector" and v.Parent.Name == "QweerialFruit" and v.Parent.Transparency == 0 then
           eatafkplrr.CFrame = v.Parent.Fruit.CFrame + Vector3.new(0,5,0)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           fireclickdetector(v)
           eatafkplrr.CFrame = CFrame.new(-2434.729248046875, 119.08981323242188, 1581.9818115234375)
           if game:GetService'Players'.LocalPlayer.Character:FindFirstChild("Pride Melon") then
               eatmelon() -- #badcode!! <3
               break end
           elseif game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Pride Melon' then
               game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Pride Melon'.Parent = game:GetService'Players'.LocalPlayer.Character
               eatmelon()
           end
   end
   end
end)



plrtable2 = {}
for _, player in ipairs(game:GetService'Players':GetPlayers()) do if
   player.Name ~= game:GetService'Players'.LocalPlayer.Name then
   table.insert(plrtable2, player.Name)
   table.sort(plrtable2) -- #notskidded100% lmao
   end
end
PlayerList = table.concat(plrtable2, ", ")




oldrank95 = game:GetService("Players").LocalPlayer:WaitForChild("Rank").Value


if game:GetService'Lighting':FindFirstChild'NightVision' then
game:GetService'Lighting'.NightVision.Name = "nightvision"
end



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "De Pride Isle Sanatorium GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

game:GetService'Players'.PlayerRemoving:Connect(function(plr)
   do if
   plr:GetRankInGroup(5008654) >= 50 then
OrionLib:MakeNotification({
Name = "Nurse left",
Content = "A nurse/ "..plr.Name..  " left the game!",
Image = "rbxassetid://4483345998",
Time = 20
})
end
end
end)

game:GetService'Players'.PlayerAdded:Connect(function(plr)
   do if
   plr:GetRankInGroup(5008654) >= 50 then
OrionLib:MakeNotification({
Name = "Nurse joined!",
Content = "A nurse/ "..plr.Name..  " joined the game!",
Image = "rbxassetid://4483345998",
Time = 20
})
end
end
end)

local Tab = Window:MakeTab({
Name = "Important",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab1 = Window:MakeTab({
Name = "Interactables",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab2 = Window:MakeTab({
Name = "Grab/give stuff",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab3 = Window:MakeTab({
Name = "random",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab4 = Window:MakeTab({
Name = "tracers",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab5 = Window:MakeTab({
Name = "Visuals",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab6 = Window:MakeTab({
Name = "Notifications",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab7 = Window:MakeTab({
Name = "Teleports",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

OrionLib:MakeNotification({
Name = "Anticheat bypassed!",
Content = "Most of the anticheat has been bypassed!",
Image = "rbxassetid://4483345998",
Time = 20
})



Tab:AddButton({
Name = "Inf energy: Click when standing still",
Callback = function()
      local OldNameCall = nil
           local remotee = game:GetService("ReplicatedStorage").Events.Game


           OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
           local Args = {...}
           local NamecallMethod = getnamecallmethod()

           if not checkcaller() and Self == remotee and Args[2] == "Jumping" or Args[2] == "Running" then
               return workspace:WaitForChild("bigfatfuckingshitonthefloor")

           end

       return OldNameCall(Self, ...)
end)
end    
})





function thing()
game:GetService'Players'.LocalPlayer.Character:WaitForChild("CoreCharacter")
local env = getsenv(game:GetService'Players'.LocalPlayer.Character.CoreCharacter)
local old
old = hookfunction(env.FallDamage, function(...)
   if getgenv().nofalldamage == true then return end
       return old(...)
end)
end
game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(function()
   if getgenv().nofalldamage == true then
game:GetService'Players'.LocalPlayer.Character:WaitForChild("CoreCharacter")
repeat wait() until getsenv(game:GetService'Players'.LocalPlayer.Character.CoreCharacter).FallDamage
thing()
end
end)
Tab:AddToggle({
Name = "Disable FallDamage",
Default = false,
Callback = function(Value)
   getgenv().nofalldamage = Value
   thing()
end
})




Tab:AddBind({
Name = "Killaura, when you press the key itll hit the nearest guy",
Default = Enum.KeyCode.E,
Hold = false,
Callback = function()
for i,v in pairs(game:GetService'Players':GetPlayers()) do if
   v.Character ~= game:GetService'Players'.LocalPlayer.Character and game:GetService'Players'.LocalPlayer.Rank.XLevel.Value == 16669 and
   (game:GetService'Players'.LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude < 12 then
local ohString1 = "AswangGo"
local ohInstance2 = v.Character
local ohNumber3 = 1
local ohString4 = "013069"

game:GetService("ReplicatedStorage").Events.Aswang:FireServer(ohString1, ohInstance2, ohNumber3, ohString4)
end
end
end    
})

eatafkplr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
eatafkplrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
Tab:AddToggle({
Name = "eat food while afk, use with anti-afk on IY and no falldamage",
Default = false,
Callback = function(Value)
   if Value == true then
eatafkplr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
eatafkplrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
       wait(1)
       getgenv().doneafktrue = true
   getgenv().eatafk = Value
   eatafkplrr.CFrame = CFrame.new(-2434.729248046875, 119.08981323242188, 1581.9818115234375)
elseif doneafktrue == true then
   getgenv().eatafk = Value
eatafkplrr.CFrame = eatafkplr -- omg bad code again lets goo!!!
end
end
})



Tab:AddToggle({
Name = "Nurse chatlogs",
Default = false,
Callback = function(Value)
getgenv().nursechatlog = Value
end    
})






Tab1:AddLabel("These may lag your game") -- it doesnt lmao, i made it not laggy but ok loser


Tab1:AddSlider({
Name = "How fast to spam open/close lower is faster",
Min = 0,
Max = 5,
Default = 0.025,
Color = Color3.fromRGB(255,255,255),
Increment = 0.01,
ValueName = "Seconds",
Callback = function(Value)
   spamtime = Value
end    
})

Tab1:AddSlider({
Name = "How fast to spam unlock/lock lower is faster",
Min = 0,
Max = 5,
Default = 0.025,
Color = Color3.fromRGB(255,255,255),
Increment = 0.01,
ValueName = "Seconds",
Callback = function(Value)
   spamtime1 = Value
end    
})




Tab1:AddToggle({
Name = "spam open/close nearest door",
Default = false,
Callback = function(Value)
   getgenv().assm = Value
while assm == true do
       wait(spamtime)
for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Name == "OpenCloseLockableDoor" or v.Name == "OpenCloseDoor" and v.Parent.Name == "Handle" then
       if (game:GetService'Players'.LocalPlayer.Character.Head.Position - v.Parent.Position).Magnitude < 18 then
       game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v) -- omg i love distance checks they're so fun
   end
end
end
end
end
})



Tab1:AddToggle({
Name = "Spam unlock/lock nearest door",
Default = false,
Callback = function(Value)
getgenv().assm2 = Value
while assm2 == true do
   wait(spamtime1)
for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Name == "OpenCloseLockableDoor" and v.Parent.Name == "Handle" and (v.Parent.Position - game:GetService'Players'.LocalPlayer.Character.Head.Position).Magnitude < 18 then
       game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v.Parent.Parent.Parent.LockModel.Crank.ToggleLock) -- woah this is hideous what did i do
   end
end
end
end    
})


Tab1:AddButton({
Name = "Open/Close Nearest door",
Callback = function()
   for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Name == "OpenCloseLockableDoor" or v.Name == "OpenCloseDoor" and v.Parent.Name == "Handle" then
       if (v.Parent.Position - game:GetService'Players'.LocalPlayer.Character.Head.Position).Magnitude < 18 then
       game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v)
       end
end
end
end    
})


Tab1:AddButton({
Name = "Unlock/lock Nearest door",
Callback = function()
for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Name == "OpenCloseLockableDoor" and v.Parent.Name == "Handle" and (v.Parent.Position - game:GetService'Players'.LocalPlayer.Character.Head.Position).Magnitude < 18 then
       game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v.Parent.Parent.Parent.LockModel.Crank.ToggleLock)
   end
end
end    
})

getgenv().done = false
Tab1:AddToggle({
Name = "Spam Open Dorm Doors",
Default = false,
Callback = function(Value)
   if Value == true then
   getgenv().spamdoor = Value
   plrcframe = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
   redo()
   spawn(function()
       while getgenv().spamdoor == true do
           wait(0.25)
           if getgenv().done == true then
               redo()
           end
       end -- holy shit pls dont -rep me for this i woudl remake it but i just.. it works okay??
   end)
   else
        getgenv().spamdoor = Value
   end
end    
})







function opendoor(RFC)
   getgenv().done = false
   game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = RFC
wait(0.3)
for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Parent.Parent.Parent:FindFirstChild'State' and v.Name == "ToggleLock" and v.Parent.Name == "Crank" and (game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude < 14 then
       if v.Parent.Parent.Parent.State.Value == "Locked" and v.Parent.Parent.Parent.Busy.Value == false then
           game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v)
           getgenv().state1 = v.Parent.Parent.Parent.State.Value
           getgenv().locked = true
   end
end
end


if getgenv().locked == true then -- ITS SO FUCKING HIDEOUS
   wait(0.55)
for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Parent.Parent.Parent:FindFirstChild'State' and v.Name == "OpenCloseLockableDoor" and v.Parent.Name == "Handle" and (game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude < 14 then
       if v.Parent.Parent.Parent.State.Value == "Closed" and getgenv().locked == true then
           game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v)
           getgenv().locked = false
   end
end
end
elseif getgenv().locked == false then
   for i,v in pairs(game:GetService("Workspace").Interactables:GetDescendants()) do if
   v.Parent.Parent.Parent:FindFirstChild'State' and v.Name == "ToggleLock" and v.Parent.Name == "Crank" and (game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.Position).Magnitude < 14 then
       if v.Parent.Parent.Parent.State.Value == "Closed" then
           game:GetService("ReplicatedStorage").Events.Interactables:FireServer(v)
   end
end
end
end
end
if state1 == "Closed" or state1 == "Locked" then do wait(2)
   end
end
function redo()
opendoor(CFrame.new(-4165.654296875, 416.1250915527344, 1081.0914306640625))
opendoor(CFrame.new(-4144.50830078125, 416.12506103515625, 1088.7515869140625))
opendoor(CFrame.new(-4128.3271484375, 416.2212219238281, 1121.0902099609375))
opendoor(CFrame.new(-4130.89208984375, 416.2212829589844, 1143.3843994140625))
opendoor(CFrame.new(-4093.399658203125, 416.125, 1171.462890625))
opendoor(CFrame.new(-4067.5693359375, 416.1251220703125, 1176.871337890625))
opendoor(CFrame.new(-4060.54736328125, 416.12506103515625, 1138.1324462890625))
opendoor(CFrame.new(-4087.7041015625, 416.1250305175781, 1133.56298828125))
opendoor(CFrame.new(-4059.529052734375, 416.1417236328125, 1080.7008056640625))
opendoor(CFrame.new(-4090.160400390625, 416.1418762207031, 1075.3221435546875))
opendoor(CFrame.new(-4050.270263671875, 406.6195373535156, 1053.5997314453125))
opendoor(CFrame.new(-4085.785888671875, 406.6195373535156, 1048.5054931640625))
opendoor(CFrame.new(-4119.31982421875, 416.0267028808594, 1055.3663330078125))
if getgenv().spamdoor == false then
   game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = plrcframe
   else print("not true")
end
getgenv().done = true
end



local dropdown0 = Tab2:AddDropdown({
Name = "Player to give melon to",
Options = plrtable2,
Callback = function(Value)
       getgenv().givemelon = true
   if game:GetService'Players'[Value].Backpack:FindFirstChild("Pride Melon") or game:GetService'Players'[Value].Character:FindFirstChild("Pride Melon") then
OrionLib:MakeNotification({
Name = "Player already has that item!",
Content = "Player already has a melon!",
Image = "rbxassetid://4483345998",
Time = 5
})
getgenv().givemelon = false
end
   local plr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
   local plrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
   for i,v in pairs(game:GetService'Workspace'.QweerialTrees:GetDescendants()) do if
       v.ClassName == "ClickDetector" and v.Parent.Name == "QweerialFruit" and getgenv().givemelon == true and v.Parent.Transparency == 0 then
           plrr.CFrame = v.Parent.Fruit.CFrame + Vector3.new(0,5,0)
           fireclickdetector(v)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2) -- what is this wait? what??? why does it.. why is it likethis what??
           fireclickdetector(v)
           plrr.CFrame = plr
           if getgenv().givemelon == false then break end
           
           if game:GetService'Players'.LocalPlayer.Character:FindFirstChild("Pride Melon") or game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Pride Melon") then
               for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do if
                   v.ClassName == "Tool" and v.Name ~= "Pride Melon" then
                       v.Parent = game:GetService'Players'.LocalPlayer.Backpack
                   end
               end
           if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Pride Melon") then
               game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Pride Melon").Parent = game:GetService'Players'.LocalPlayer.Character
           end
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = true
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService'Players'[Value].Character.HumanoidRootPart.CFrame + Vector3.new(0,-4,0)
           game:GetService("ReplicatedStorage").Events.Game:FireServer("GiveTool", game:GetService'Players'[Value], game:GetService'Players'.LocalPlayer.Character["Pride Melon"])
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           plrr.CFrame = plr
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = false
           getgenv().givemelon = false
           break end
       end
       end
end})






local dropdown1 = Tab2:AddDropdown({
Name = "Player to give cockroach to",
Options = plrtable2,
Callback = function(Value)
   getgenv().givecockroach = true
if game:GetService'Players'[Value].Backpack:FindFirstChild("Cockroach") or game:GetService'Players'[Value].Character:FindFirstChild("Cockroach") then
OrionLib:MakeNotification({
Name = "Player already has that item!",
Content = "Player already has a cockroach!",
Image = "rbxassetid://4483345998",
Time = 5
})
getgenv().givecockroach = false
end
local plr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
local plrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
   for i,v in pairs(game:GetService("Workspace").Givers:GetDescendants()) do if
       v.Name == "ClickDetector" and v.Parent.Name == "Cockroach" and getgenv().givecockroach == true and v.Parent.Transparency == 0 and not v.Parent.Parent:FindFirstChild'MemberLock' and not getgenv().playingroup then
           plrr.CFrame = v.Parent.CFrame + Vector3.new(0,3,0)
           fireclickdetector(v)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2) -- stop dony bvully me it happens enough at school-; i use v3rm thats y
           fireclickdetector(v)
           plrr.CFrame = plr
           
           if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Cockroach' or game:GetService'Players'.LocalPlayer.Character:FindFirstChild'Cockroach' then
           for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do if
               v.ClassName == "Tool" and v.Name ~= "Cockroach" then
                   v.Parent = game:GetService'Players'.LocalPlayer.Backpack
               end
           end
           if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Cockroach") then
               game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Cockroach").Parent = game:GetService'Players'.LocalPlayer.Character
           end
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService'Players'[Value].Character.HumanoidRootPart.CFrame + Vector3.new(0,-4,0)
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = true
           game:GetService("ReplicatedStorage").Events.Game:FireServer("GiveTool", game:GetService'Players'[Value], game:GetService'Players'.LocalPlayer.Character.Cockroach)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           plrr.CFrame = plr game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = false
           break end
       
       elseif v.Name == "ClickDetector" and v.Parent.Name == "Cockroach" and getgenv().givecockroach == true and v.Parent.Transparency == 0 and getgenv().playingroup then
           plrr.CFrame = v.Parent.CFrame + Vector3.new(0,3,0)
           fireclickdetector(v)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           fireclickdetector(v)
           plrr.CFrame = plr
           if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Cockroach' or game:GetService'Players'.LocalPlayer.Character:FindFirstChild'Cockroach' then
           for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do if
               v.ClassName == "Tool" and v.Name ~= "Cockroach" then
                   v.Parent = game:GetService'Players'.LocalPlayer.Backpack
               end
           end
           if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Cockroach") then
               game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Cockroach").Parent = game:GetService'Players'.LocalPlayer.Character
           end
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService'Players'[Value].Character.HumanoidRootPart.CFrame + Vector3.new(0,-4,0)
           game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = true
           game:GetService("ReplicatedStorage").Events.Game:FireServer("GiveTool", game:GetService'Players'[Value], game:GetService'Players'.LocalPlayer.Character.Cockroach)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           plrr.CFrame = plr game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Anchored = false
           break end
       end
   end
end    
})






Tab2:AddButton({
Name = "Grab melon",
Callback = function()
   local plr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
   local plrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
   for i,v in pairs(game:GetService'Workspace'.QweerialTrees:GetDescendants()) do if
       v.ClassName == "ClickDetector" and v.Parent.Name == "QweerialFruit" and v.Parent.Transparency == 0 then
           plrr.CFrame = v.Parent.Fruit.CFrame + Vector3.new(0,5,0)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           fireclickdetector(v)
           plrr.CFrame = plr
           if game:GetService'Players'.LocalPlayer.Character:FindFirstChild("Pride Melon") or game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Pride Melon' then
               break end
end
end
end    
})






Tab2:AddButton({
Name = "grab cockroach",
Callback = function()
       OrionLib:MakeNotification({
   Name = "Grab cockroach",
   Content = "if this doesnt work there are no cockroaches left, please wait",
   Image = "rbxassetid://4483345998",
   Time = 8
   })
   local plr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame
   local plrr = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
   for i,v in pairs(game:GetService("Workspace").Givers:GetDescendants()) do if
       v.Name == "ClickDetector" and v.Parent.Name == "Cockroach" and v.Parent.Transparency == 0 and not v.Parent.Parent:FindFirstChild'MemberLock' and not getgenv().playingroup then
           plrr.CFrame = v.Parent.CFrame + Vector3.new(0,3,0)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           fireclickdetector(v)
           plrr.CFrame = plr
           if game:GetService'Players'.LocalPlayer.Character:FindFirstChild'Cockroach' or game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Cockroach' then
           break end
       elseif v.Name == "ClickDetector" and v.Parent.Name == "Cockroach" and v.Parent.Transparency == 0 and getgenv().playingroup then
           plrr.CFrame = v.Parent.CFrame + Vector3.new(0,3,0)
           wait(game:GetService("Players").LocalPlayer:GetNetworkPing() * 2)
           fireclickdetector(v)
           plrr.CFrame = plr
           if game:GetService'Players'.LocalPlayer.Character:FindFirstChild'Cockroach' or game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild'Cockroach' then
           break end
       end
   end
  end    
})




Tab2:AddButton({
Name = "Grab uniform",
Callback = function()
   for i,v in pairs(game:GetService("Workspace").Givers:GetDescendants()) do if
       v.Name == "ClickDetector" and v.Parent.Name == "Coathanger" then
   fireclickdetector(v)
end
end
end    
})

Tab2:AddButton({
Name = "clear plates in inventory",
Callback = function()
   if game:GetService'Players'.LocalPlayer.Character:FindFirstChild("Empty Plate") then
      game:GetService'Players'.LocalPlayer.Character:FindFirstChild("Empty Plate").Parent =  game:GetService'Players'.LocalPlayer.Backpack
      end
   for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren()) do if
       v.Name == "Empty Plate" then
           v.Parent = game:GetService'Players'.LocalPlayer.Character
               game:GetService("ReplicatedStorage").Events.Game:FireServer("TrashTool")
   end
   end
  end    
})



Tab2:AddButton({
Name = "Give closest player tool",
Callback = function()
OrionLib:MakeNotification({
Name = "Give player tool",
Content = "If this doesn't work, player already has that tool.",
Image = "rbxassetid://4483345998",
Time = 10
})
for i,v in pairs(game:GetService'Players':GetPlayers()) do if v.Character ~= game:GetService'Players'.LocalPlayer.Character and
   (v.Character.Head.Position - game:GetService'Players'.LocalPlayer.Character.Head.Position).Magnitude < 8 then
       getgenv().giveplrtool = v
       getgenv().giveplrtooltrue = true
   end
end
for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do if getgenv().giveplrtooltrue == true and
   v.ClassName == "Tool" then
       game:GetService("ReplicatedStorage").Events.Game:FireServer("GiveTool", getgenv().giveplrtool, v)
       getgenv().giveplrtooltrue = false -- idk why the fuck im doing this why why why am i? im going insane why did i do this??
   end
end
end    
})







Tab3:AddSlider({
Name = "How long you want to ragdoll (seconds)",
Min = 0,
Max = 240,
Default = 5,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "ragdoll time",
Callback = function(Value)
   ragdolltime = Value
end    
})



Tab3:AddButton({
Name = "Ragdoll",
Callback = function()
local ohString1 = "Ragdoll"
local ohString2 = "FallDamage"
local ohInstance3 = game:GetService'Players'.LocalPlayer.Character
local ohNumber4 = ragdolltime

game:GetService("ReplicatedStorage").Events.Game:FireServer(ohString1, ohString2, ohInstance3, ohNumber4)
  end    
})


Tab3:AddButton({
Name = "Reset character",
Callback = function()
   game:GetService'Players'.LocalPlayer.Character.Head:Destroy()
  end    
})



Tab3:AddToggle({
Name = "Remove nurse barriers",
Default = false,
Callback = function(Value)
       for i,v in pairs(game:GetService("Workspace").RankBarriers:GetChildren()) do if
           Value == true then
       v.CanCollide = false
       else
           v.CanCollide = true -- this is ok
           end
       end
end    
})



Tab3:AddToggle({
Name = "Become a cannibal (you cant hurt anyone)",
Default = false,
Callback = function(Value)
   if Value == true then game:GetService("Players").LocalPlayer.Rank.XLevel.Value = 16669
   else game:GetService("Players").LocalPlayer.Rank.XLevel.Value = 0 -- jesus
   end
end    
})



Tab3:AddToggle({
Name = "Change rank kinda useless",
Default = false,
Callback = function(Value)
       if Value == true then
           game:GetService("Players").LocalPlayer.Rank.Value = 300
           else
               game:GetService("Players").LocalPlayer.Rank.Value = oldrank95 -- stfu
       end
end    
})





Tab3:AddBind({
Name = "Carry people normally ",
Default = Enum.KeyCode.C,
Hold = false,
Callback = function()
for i,v in pairs(game:GetService'Players':GetPlayers()) do if
   v.Character ~= game:GetService'Players'.LocalPlayer.Character and (v.Character.Head.Position - game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8 then
game:GetService'ReplicatedStorage'.Events.Ragdoll:FireServer("CarryNormal", v.Character)
end
end
end    
})


Tab3:AddBind({
Name = "Carry people forward",
Default = Enum.KeyCode.R,
Hold = false,
Callback = function()
for i,v in pairs(game:GetService'Players':GetPlayers()) do if
   v.Character ~= game:GetService'Players'.LocalPlayer.Character and (v.Character.Head.Position - game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8 then
game:GetService'ReplicatedStorage'.Events.Ragdoll:FireServer("CarryForward", v.Character)
end
end
end
})



Tab4:AddToggle({
Name = "esp toggle",
Default = true,
Callback = function(Value)
getgenv().toggleespmpt = Value
end    
})

Tab4:AddToggle({
Name = "esp only for nurses toggle",
Default = true,
Callback = function(Value)
getgenv().mptespnurses = Value
end    
})

Tab4:AddColorpicker({
Name = "Esp colour",
Default = Color3.fromRGB(255, 255, 255),
Callback = function(Value)
getgenv().mptespcolour = Value
end  
})

Tab4:AddSlider({
Name = "esp max distance",
Min = 1,
Max = 50000,
Default = 50000,
Color = Color3.fromRGB(255,255,255),
Increment = 125,
ValueName = "studs",
Callback = function(Value)
getgenv().mptespdistance = Value
end    
})

Tab4:AddSlider({
Name = "esp thickness",
Min = 1,
Max = 30,
Default = 2,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "thickness",
Callback = function(Value)
getgenv().mptespthickness = Value
end    
})
   







Tab5:AddToggle({
Name = "Remove blurs and red tint + deathscreen",
Default = false,
Callback = function(Value)
   if Value == true then
       removeblurs = true
game:GetService("Lighting").PanicColor.Enabled = false
game:GetService("Lighting").PanicBlur.Enabled = false
game:GetService("Lighting").Blur.Enabled = false
game:GetService("Players").LocalPlayer.PlayerGui.DeathScreen.Enabled = false
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do if
   v.Name == "_1Script" then
       v.Enabled = false
   end
end
else
   removeblurs = false
   game:GetService("Lighting").PanicColor.Enabled = true
game:GetService("Lighting").PanicBlur.Enabled = true
game:GetService("Lighting").Blur.Enabled = true
game:GetService("Players").LocalPlayer.PlayerGui.DeathScreen.Enabled = true
for i,v in pairs(game:GetService("Lighting"):GetChildren()) do if
   v.Name == "_1Script" then
       v.Enabled = true
   end
end
end
end
})


game:GetService("Lighting").ChildAdded:Connect(function(child)
   if child.Name == "_1Script" and removeblurs == true then
       child.Enabled = false
   end
end)


Tab5:AddToggle({
Name = "Shit nightvision that nurses recieve",
Default = false,
Callback = function(Value)
   if Value == true then
       game:GetService("Lighting").NightVision.Name = "nightvision"
       game:GetService("Lighting").nightvision.Enabled = true
       else game:GetService("Lighting").nightvision.Enabled = false
           game:GetService("Lighting").nightvision.Name = "NightVision"
           end
end    
})



Tab5:AddToggle({
Name = "Disable/enable rain",
Default = false,
Callback = function(Value)
   if Value == true then
       game:GetService("ReplicatedStorage").Server.Rain.Value = true
       else
           game:GetService("ReplicatedStorage").Server.Rain.Value = false -- doesnt even change value if it chaines the thginewadawda i cant english
   end
end
})






Tab6:AddButton({
Name = "Insanity level",
Callback = function()
   OrionLib:MakeNotification({
Name = "Insanity level",
Content = game:GetService'Players'.LocalPlayer.Insanity.Value,
Image = "rbxassetid://4483345998",
Time = 6 -- ok
})
  end    
})


Tab6:AddButton({
Name = "Time of day",
Callback = function()
OrionLib:MakeNotification({
Name = "Time of Day",
Content = game:GetService'Lighting'.TimeOfDay,
Image = "rbxassetid://4483345998",
Time = 5
})
  end    
})


Tab6:AddButton({
Name = "Kill Counter",
Callback = function()
OrionLib:MakeNotification({
Name = "Kill count",
Content = game:GetService'Players'.LocalPlayer.EventKills.Value.. " Kills",
Image = "rbxassetid://4483345998",
Time = 5
})
  end    
})

Tab6:AddButton({
Name = "print names of nurses in server, laggy",
Callback = function()
   nursenames = {}
   for i,v in pairs(game:GetService'Players':GetPlayers()) do if
       v.Rank.Value >= 50 and v ~= game:GetService'Players'.LocalPlayer then
           table.insert(nursenames, v.Name)
       end
   end
   print(table.concat(nursenames, ', '))
end
})


Tab7:AddButton({
Name = "Chapel",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4150.8837890625, 479.5267333984375, 1028.993896484375)
  end    
})


Tab7:AddButton({
Name = "Melon Room",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4369.30615234375, 442.9017639160156, 1040.6756591796875)
  end    
})

Tab7:AddButton({
Name = "Nurse headquarters",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4044.856689453125, 442.1517333984375, 1195.205322265625)
  end    
})

Tab7:AddButton({
Name = "Cafeteria entrance",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4060.506591796875, 442.2517395019531, 1023.3228759765625)
  end    
})

Tab7:AddButton({
Name = "Sanatorium Entrance",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4177.146484375, 406.9017333984375, 957.5060424804688)
  end    
})

Tab7:AddButton({
Name = "Dormitories",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4169.34375, 415.9979248046875, 1065.26416015625)
  end    
})

Tab7:AddButton({
Name = "Bunker",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4447.572265625, 416.0081787109375, 1030.11962890625)
  end    
})

Tab7:AddButton({
Name = "Spawn",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2526.462890625, 94.20721435546875, 324.8193359375)
  end    
})

Tab7:AddButton({
Name = "Village",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2972.90234375, 150.21424865722656, 46.20768356323242)
  end    
})

Tab7:AddButton({
Name = "Playground",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4370.59130859375, 412.03033447265625, 1098.6705322265625)
  end    
})

Tab7:AddButton({
Name = "Nursery",
Callback = function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4306.41015625, 404.5767517089844, 977.330322265625)
  end    
})






game:GetService'Players'.ChildAdded:Connect(function()
   plrtable2 = {}
    for _, player in ipairs(game:GetService'Players':GetPlayers()) do if
   player.Name ~= game:GetService'Players'.LocalPlayer.Name then
   table.insert(plrtable2, player.Name)
   table.sort(plrtable2)
   end
end
PlayerList = table.concat(plrtable2, ", ")
   dropdown0:Refresh(plrtable2,true)
   dropdown1:Refresh(plrtable2,true)
end)

game:GetService'Players'.ChildRemoved:Connect(function()
   plrtable2 = {}
    for _, player in ipairs(game:GetService'Players':GetPlayers()) do if
   player.Name ~= game:GetService'Players'.LocalPlayer.Name then
   table.insert(plrtable2, player.Name)
   table.sort(plrtable2)
   end
end
PlayerList = table.concat(plrtable2, ", ")
   dropdown0:Refresh(plrtable2,true)
   dropdown1:Refresh(plrtable2,true)
end)


local cam = workspace.CurrentCamera
local players = game:GetService'Players'
local player = players.LocalPlayer
local rs = game:GetService'RunService'
getgenv().toggleespmpt = true
getgenv().Thickmpt = 2
function esp(plr)
   local rat = Drawing.new("Line")
   rs.RenderStepped:Connect(function()
       pcall(function()
       if plr.Character ~= nil and plr.Character.HumanoidRootPart ~= nil and plr ~= player then
           local vector,screen = cam:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
           if screen and (player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude < getgenv().mptespdistance and not getgenv().mptespnurses or getgenv().mptespnurses and plr:FindFirstChild'Rank' and plr.Rank.Value >= 50 and screen and (player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude < getgenv().mptespdistance then
               rat.Visible = toggleespmpt
               rat.Thickness = Thickmpt
               rat.From = Vector2.new(cam.ViewportSize.X / 2,cam.ViewportSize.Y / 1)
               rat.To = Vector2.new(vector.X,vector.Y)
               rat.Color = getgenv().mptespcolour
               rat.Thickness = getgenv().mptespthickness
               else
                   rat.Visible = false
           end
           else
               rat.Visible = false
       end
           if plr.Character == nil or not plr.Character:IsDescendantOf(game:GetService'Workspace') then
               rat:Remove()
       end
   end)
end)
end
   
   for i,v in pairs(players:GetPlayers()) do
       esp(v)
   end
   players.PlayerAdded:Connect(function(plr)
       repeat wait() until plr:HasAppearanceLoaded() == true
       esp(plr)
   end)