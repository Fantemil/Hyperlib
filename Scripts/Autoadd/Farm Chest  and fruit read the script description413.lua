--[[
  Important warning!!!
  if you use this script on your main account, there is a high chance you are getting banned or it is being reset. Use this script knowing that you have a chance of losing your account!!
]]
--[[
  discord : redz9999
  👍
]]

local Configs = {
  Join_Team = "Marines", -- select your team (Pirates/Marines)
  Stop_Farm = true, -- the script will stop working as soon as you drop a rare item from the chest (recommended)
  Farm_Chest = true, -- Auto farm chest
  Farm_Fruit = true,  -- Auto Collect Fruits (as soon as you find some fruit on the map the whole script will stop working to ensure that you won't lose it)
  Server_Hop = true, -- after collecting all the chests/fruits, you will be teleported to an empty server
  Auto_Reset = true, -- reset your player (recommended) (Anti Kick)
  Reset_Delay = 15 -- select the time your doll will reset (recommended 10, 15, 20)
}

local Chests_Farm = { -- select the chests you want to farm
  Basic = true; -- false/true
  Golden = true; -- false/true
  Diamond = true; -- false/true
}

-- ////////////////////////////////////////////////////////////////////////
local placeId = game.PlaceId
if placeId ~= 2753915549 and placeId ~= 4442272183 and placeId ~= 7449423635 then
else

_G.JoinTeam = Configs.Join_Team;
_G.StopFarm = Configs.Stop_Farm;
_G.FarmChest = Configs.Farm_Chest;
_G.FarmFruit = Configs.Farm_Fruit;
_G.ServerHop = Configs.Server_Hop;
_G.AutoReset = Configs.Auto_Reset;

task.spawn(function()
  while _G.FarmFruit == true do task.wait()
    local Workspace = game:GetService("Workspace")
    local Player = game.Players.LocalPlayer
    local PlayerRP = Player.Character:FindFirstChild("HumanoidRootPart")
    for _,v in pairs(Workspace:GetChildren()) do
      if Workspace:FindFirstChild(v.Name) and v.ClassName == 'Tool' and PlayerRP then
        _G.StopFarm = false;
        _G.FarmChest = false;
        _G.ServerHop = false;
        _G.AutoReset = false;
        repeat task.wait()
          PlayerRP.CFrame = v.Handle.CFrame
        until not Workspace:FindFirstChild(v.Name) or Player.Backpack:FindFirstChild(v.Name) or Player.Character:FindFirstChild(v.Name)
      end
    end
  end
end)

local plrTeam = game.Players.LocalPlayer.Team

if plrTeam ~= 'Pirates' and plrTeam ~= 'Marines' then
  local a_1 = "SetTeam"
  local a_2 = _G.JoinTeam
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a_1, a_2)
end

task.spawn(function()
  while _G.StopFarm == true do task.wait()
  local Players = game:GetService("Players")
  local player = Players.LocalPlayer
    for _,v in pairs(player.Backpack:GetChildren()) do
      if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
        _G.FarmChest = false;
        _G.ServerHop = false;
        _G.AutoReset = false;
        _G.FarmFruit = false;
      end
    end
    for _,v in pairs(player.Character:GetChildren()) do
      if v.Name == "God's Chalice" or v.Name == "Fist of Darkness" then
        _G.FarmChest = false;
        _G.ServerHop = false;
        _G.AutoReset = false;
        _G.FarmFruit = false;
      end
    end
  end
end)

task.spawn(function()
  while _G.FarmChest == true do task.wait()
  local Workspace = game:GetService("Workspace")
  local plr = game.Players.LocalPlayer
  local plrRP = plr.Character:FindFirstChild("HumanoidRootPart")
  local FindSit = plr.Character:FindFirstChildOfClass('Humanoid') and plr.Character:FindFirstChildOfClass('Humanoid').SeatPart
  local chest1 = Workspace:FindFirstChild("Chest1")
  local chest2 = Workspace:FindFirstChild("Chest2")
  local chest3 = Workspace:FindFirstChild("Chest3")
  if FindSit then
    plr.Character.Humanoid.Sit = false
    task.wait(0.2)
  end
    if chest3 and plrRP and chest3.Transparency < 0.1 and Chests_Farm.Diamond == true then
      plrRP.CFrame = chest3.CFrame
    elseif chest2 and plrRP and chest2.Transparency < 0.1 and Chests_Farm.Golden == true then
      plrRP.CFrame = chest2.CFrame
    elseif chest1 and plrRP and chest1.Transparency < 0.1 and Chests_Farm.Basic == true then
      plrRP.CFrame = chest1.CFrame
    elseif _G.ServerHop == true then
      local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
      module:Teleport(game.PlaceId)
    end
  end
end)

task.spawn(function()
  while _G.AutoReset == true do
    local plr = game.Players.LocalPlayer
    local plrH = plr.Character.Humanoid
    plrH.Health = -math.huge
    task.wait(Configs.Reset_Delay)
  end
end)

task.spawn(function()
  getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
      local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
      module:Teleport(game.PlaceId)
    end
  end)
end)

end