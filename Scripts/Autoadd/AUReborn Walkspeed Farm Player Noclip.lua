--discord.gg/boronide, code generated using luamin.jsâ¢




local player = game:GetService('Players').LocalPlayer

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
-- Lucid's UI library extenstion, Used for extending the use of frames,
-- Tab:addToggle("Hi", function()end).Size = Vector3.new(100,100,100)
loadstring(game:HttpGet("https://lucids.gq/ui-library-extensions/extension.txt"))(library)
local window = library.new("Amaterasu Hub : Au Reborn")

-- themes
local themes = {
 Background = Color3.fromRGB(24, 24, 24),
 Glow = Color3.fromRGB(0, 0, 0),
 Accent = Color3.fromRGB(10, 10, 10),
 LightContrast = Color3.fromRGB(20, 20, 20),
 DarkContrast = Color3.fromRGB(14, 14, 14),  
 TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local Client = window:addPage("client")
local Main = Client:addSection("Main")
local Misc = Client:addSection("misc")


Main:addToggle("Farm Players - Use Kill Aura", nil, function(value)
 getgenv().farmplayers = value
end)

Main:addDropdown("Farm Methiod", {
 "Behind",
 "Below",
 "Close",
}, function(value)
 getgenv().FarmMethod = value
end)

local PlayerList = {}
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
 if v ~= game.Players.LocalPlayer then
  table.insert(PlayerList, v.Name)
 end
end

local drop = Main:addDropdown("Choose A Player", PlayerList, function(value)
 choosenplayer = value
end)
Main:updateDropdown(drop, 'Choose A Player', PlayerList)

Main:addToggle("Farm Selected Player - Use Kill Aura", nil, function(value)
 getgenv().farmselectedPlayer = value
end)


local walkspeed_loop, walkspeed, jumppower_loop, juppower
Main:addToggle("walkspeed", nil, function(bool)
 if bool then
  function characterAdded(character)
   local humanoid = character:WaitForChild('Humanoid')

   if not bool then
    return
   end
   walkspeed_loop = humanoid:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
    humanoid.WalkSpeed = walkspeed or humanoid.WalkSpeed
   end)
  end
  if player.Character then
   characterAdded(player.Character)
  end
  player.CharacterAdded:Connect(characterAdded)
 else
  if walkspeed_loop then
   walkspeed_loop:Disconnect()
  end
 end
end)
Main:addSlider("walkspeed", 8, 8, 250, function(value)
 walkspeed = value
end)

Main:addToggle("JumpPower", nil, function(bool)
 if bool then
  function characterAdded(character)
   local humanoid = character:WaitForChild('Humanoid')

   if not bool then
    return
   end

   jumppower_loop = humanoid:GetPropertyChangedSignal('JumpPower'):Connect(function()
    humanoid.JumpPower = jumppower or humanoid.JumpPower
   end)
  end
  if player.Character then
   characterAdded(player.Character)
  end
  player.CharactaerAdded:Connect(characterAdded)
 else
  if jumppower_loop then
   jumppower_loop:Disconnect()
  end
 end
end)
Main:addSlider("JumpPower", 50, 50, 500, function(value)
 jumppower = value
end)

local nocliploop
Main:addToggle("noclip", nil, function(bool)
 if bool then
  nocliploop = game:GetService('RunService').Stepped:Connect(function()
   if player.Character then
    for _, child in pairs(player.Character:GetDescendants()) do
     if child:IsA("BasePart") and child.CanCollide == true then
      child.CanCollide = false
     end
    end
   end
  end)
 else
  if nocliploop then
   nocliploop:Disconnect()
  end
 end
end)

local admins = {
 "xenocql",
 "aur_oura",
 "KumoDev",
 "zenocql",
 "Nebqlaz",
 "PugJittai",
 "farmforegghunt",
 "mbscoops",
 "comp_5000",
 "DatsMini",
 "ericrich2",
 "AlreadyAxa",
 "Fraudsstar",
 "cetfrr",
 "Mr_OOFERS1",
 "Robyle0",
 "hakeemhall305",
 "Lekarma360",
 "7180000",
}
Main:addToggle("Detect If Admin/Mod Joins", nil, function(x)
 getgenv().ModDetector = x
end)

if getgenv().ModDetector and table.find(admins, plr.Name) then
 game.Players.LocalPlayer:Kick("Admin Joined")
end

local view_player
local plrdrop = Misc:addDropdown("View", ptable, function(v)
 view_player = v
end)

game:GetService('Players').PlayerAdded:Connect(function(player)
 table.insert(ptable, player.Name)
 Misc:updateDropdown(plrdrop, "View", ptable)
end)
game:GetService('Players').PlayerRemoving:Connect(function(player)
 if table.find(ptable, player) then
  table.remove(ptable, table.find(ptable, player))
  Misc:updateDropdown(plrdrop, "View", ptable)
 end
 
end)

local view_loop
Misc:addToggle("view", false, function(bool)
 if bool then
  view_loop = game:GetService('RunService').Stepped:Connect(function()
   local camera = workspace:FindFirstChild('Camera')
   local view_plr = game:GetService('Players'):FindFirstChild(view_player)
   local view_character = view_plr and view_plr.Character
   if not camera or not view_plr or not view_character or not view_character:FindFirstChild('Humanoid') then
    return
   end

   camera.CameraSubject = view_character:FindFirstChild('Humanoid')
  end)
 else
  if view_loop then
   view_loop:Disconnect()
  end
  spawn(function()
   local camera = workspace:FindFirstChild('Camera')
   repeat
    wait()
   until player.Character and player.Character:FindFirstChild('Humanoid')
   camera.CameraSubject = player.Character:FindFirstChild('Humanoid')
  end)
 end
end)

Misc:addButton('get summit badge', function()
 for i, v in next, workspace:FindFirstChild('Ignore'):FindFirstChild('MainParts'):FindFirstChild('Badge'):GetDescendants() do
  if v.ClassName == 'TouchInterest' then
   if v.Parent then
    firetouchinterest(player, v.Parent, 0)
   end
  end
 end
end)

Misc:addButton('crash server', function()
 game:GetService('RunService').Stepped:Connect(function()
  spawn(function()
   game:GetService("ReplicatedStorage").Remotes.Buy:FireServer('Tsuna')
  end)
 end)
end)

function closest_character(currentMagnitude)
 local closestCurrent = nil
 for i, v in pairs(game:GetService("Players"):GetPlayers()) do
  if v ~= game:GetService("Players").LocalPlayer then
   if v.Character and v.Character:FindFirstChild('Humanoid') then
    if v.Character:FindFirstChild('Humanoid').Health >= 1 then
     if not v.Character:FindFirstChild('HumanoidRootPart') then
      continue
     end
     if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < currentMagnitude then
      currentMagnitude = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
      closestCurrent = v.Character
     end
    end
   end
  end
 end
 return closestCurrent
end

local page_combat = window:addPage("combat")
local MainCombat = page_combat:addSection("Main")
local nums = {
 'One',
 'Two',
 'Three',
 'Four',
 'Five',
 'Six'
}
MainCombat:addToggle('enable', false, function(value)
 getgenv().autoskill = value
 while getgenv().autoskill do
  task.wait()
  game:GetService("ReplicatedStorage").Remotes.Combat:FireServer()
  for i, v in pairs(nums) do
   game:GetService("ReplicatedStorage").Remotes.Skill:FireServer(v, nil)
  end
 end
end)


local old
local combodisabled
old = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
 if tostring(self) == 'ComboReset' and getnamecallmethod() == 'FireServer' then
  if combodisabled then
   return
  end
 end

 return old(self, ...)
end))

MainCombat:addToggle('no combo reset', false, function(bool)
 combodisabled = bool
end)




spawn(function()
 while task.wait() do
  if getgenv().farmplayers == true and getgenv().FarmMethod == "Behind" then
   while getgenv().farmplayers do
    task.wait()
    pcall(function()
     for i, v in pairs(game.Players:GetChildren()) do
      if v ~= game.Players.LocalPlayer then
       repeat
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3.25)
        wait()
       until v.Humanoid.Health > 0 or not getgenv().farmplayers or not v:IsDescendantOf(workspace)
      end
     end
    end)
   end
  end
 end
end)


spawn(function()
 while task.wait() do
  if getgenv().farmplayers == true and getgenv().FarmMethod == "Below" then
   while getgenv().farmplayers do
    task.wait()
    pcall(function()
     for i, v in pairs(game.Players:GetChildren()) do
      if v ~= game.Players.LocalPlayer then
       repeat
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -7, 0)
        wait()
       until v.Humanoid.Health > 0 or not getgenv().farmplayers or not v:IsDescendantOf(workspace)
      end
     end
    end)
   end
  end
 end
end)

spawn(function()
 while task.wait() do
  if getgenv().farmplayers == true and getgenv().FarmMethod == "Close" then
   while getgenv().farmplayers do
    task.wait()
    pcall(function()
     for i, v in pairs(game.Players:GetChildren()) do
      if v ~= game.Players.LocalPlayer then
       repeat
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
        wait()
       until v.Humanoid.Health > 0 or not getgenv().farmplayers or not v:IsDescendantOf(workspace)
      end
     end
    end)
   end
  end
 end
end)


spawn(function()
 while task.wait() do
  if getgenv().farmselectedPlayer == true and getgenv().farmselectedPlayer then
   pcall(function()
    repeat
     task.wait()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[choosenplayer].Character.HumanoidRootPart.CFrame  * CFrame.new(0, 0, 2.52)
    until v.Humanoid.Health > 0 or not getgenv().farmselectedPlayer or not v:IsDescendantOf(workspace)
   end)
  end
 end
end)