-- Not FAST BUT ULTRA PERFORMANCE AND SECURE
-- And causes remote flood

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local TotalKills = 0
local TotalRequests = 0

local function CheckIfVictimIsAlive(Victim)
 if Victim.Character and (Victim.Character:FindFirstChild("Humanoid") and Victim.Character:FindFirstChild("HumanoidRootPart")) and Victim.Character.Humanoid.Health >= 1 then
  return true
 else
  return false
 end
end

local function GetRemote()
 local Tool_Character = LocalPlayer.Character:FindFirstChildWhichIsA("Tool")

 if Tool_Character then
  return Tool_Character.Knife.Remote
 else
  local Tool_Backpack = LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")

  if Tool_Backpack then
   return Tool_Backpack.Knife.Remote
  else
   game:GetService("Players").LocalPlayer.Character.clientMain.Remote:FireServer("Teleport")

   task.wait(0.07)

   return GetRemote()
  end
 end
end

local function StartLoop()
 for Index, Victim in ipairs(Players:GetPlayers()) do

  task.spawn(function()
   if Victim ~= LocalPlayer and (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Victim.Character and Victim.Character:FindFirstChild("HumanoidRootPart") and Victim.Character:FindFirstChild("Humanoid")) then

    local Remote = GetRemote()

    local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
    local VictimHumanoidRootPart = Victim.Character.HumanoidRootPart

    HumanoidRootPart.CFrame = VictimHumanoidRootPart.CFrame

    while CheckIfVictimIsAlive(Victim) do task.wait() TotalRequests += 1
     if Victim and Victim.Character:FindFirstChild("Humanoid") then
      task.spawn(function()
       Remote:FireServer("Hit", Victim.Character.Humanoid, true)
      end)
     end
    end

    TotalKills += 1

    rconsoleinfo("Killed " .. Victim.DisplayName .. " @" .. Victim.Name)
   end
  end)
  
  task.wait(0.05)
  
  rconsolename("Made By Rizve#3400 | Total Kills: " .. TotalKills .. " | Total Requests: " .. TotalRequests)
 end

 task.wait()

 StartLoop()
end

task.spawn(StartLoop)

-- FAST LOOP KILL ALL BUT BUGGY
--[[
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local TotalKills = 0
local TotalSlashes = 0

function CheckIfVictimIsAlive(Victim)
 if Victim.Character and (Victim.Character:FindFirstChild("Humanoid") and Victim.Character:FindFirstChild("HumanoidRootPart")) and Victim.Character.Humanoid.Health > 0 then
  return true
 else
  return false
 end
end

function GetRemote()
 local Remote

 for I, instance in pairs(LocalPlayer.Character:GetDescendants()) do
  if instance:IsA("RemoteEvent") and instance.Name == "Remote" and instance.Parent.Name ~= "clientMain" then
   Remote = instance
  end
 end

 if Remote then
  return Remote
 else
  for I, instance in pairs(LocalPlayer.Backpack:GetDescendants()) do
   if instance:IsA("RemoteEvent") and instance.Name == "Remote" then
    Remote = instance
   end
  end

  if Remote then
   return Remote
  else
   game:GetService("Players").LocalPlayer.Character.clientMain.Remote:FireServer("Teleport")

   task.wait(0.3)

   Remote = GetRemote()

   return Remote
  end
 end
end

local function StartLoop()
 for Index, Victim in pairs(Players:GetPlayers()) do
  task.spawn(function()
   if Victim ~= LocalPlayer and (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Victim.Character and Victim.Character:FindFirstChild("HumanoidRootPart")) then

    local Remote = GetRemote()

    local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
    local VictimHumanoidRootPart = Victim.Character.HumanoidRootPart
    HumanoidRootPart.CFrame = VictimHumanoidRootPart.CFrame

    while CheckIfVictimIsAlive(Victim) do task.wait() TotalSlashes += 1
     Remote:FireServer("Hit", VictimHumanoidRootPart.Parent:WaitForChild("Humanoid"), true)
    end
    
    TotalKills += 1
    rconsoleinfo("Killed " .. Victim.DisplayName .. " @" .. Victim.Name)
    
   end
  end)

  task.wait(0.01)
 end

 task.wait()

 StartLoop()
end

task.spawn(StartLoop)

while task.wait(0.01) do
 rconsolename("Made By Rizve#3400 | Total Kills: " .. TotalKills .. " | Total Slashes: " .. TotalSlashes)
end
]]