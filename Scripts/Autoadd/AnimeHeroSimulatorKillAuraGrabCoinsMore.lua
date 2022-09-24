--Variables
local player = game.Players.LocalPlayer
local killauraToggle = false
local tpToggle = false
local coinsToggle = false
local mergeToggle = false  
local zoneDropdown = "Demon Village"
local zones = {}
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren())do
   table.insert(zones,tostring(v))
end

--Functions
function getClosest(zone)
   local closest = math.huge
   local choice
   for i,v in pairs (game:GetService("Workspace").Enemies[zone]:GetChildren()) do
       if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HP") and v.HP.Value > 0 then
           local dist = (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
           if dist <= closest then
               closest = dist
               choice = v
           end
       end
   end

  return choice
end

--Lib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Anime Hero Simulator", HidePremium = false, SaveConfig = false})
local AutofarmTab = Window:MakeTab({
Name = "Autofarm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local MiscTab = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
AutofarmTab:AddToggle({
Name = "Killaura(Closest)",
Default = false,
Callback = function(Value)
killauraToggle = Value
end    
})
AutofarmTab:AddToggle({
Name = "Tp to mob(Closest)",
Default = false,
Callback = function(Value)
tpToggle = Value
end    
})
AutofarmTab:AddToggle({
Name = "Grab Coins",
Default = false,
Callback = function(Value)
coinsToggle = Value
end    
})
AutofarmTab:AddDropdown({
Name = "Zone",
Default = "Demon Village",
Options = zones,
Callback = function(Value)
zoneDropdown = Value
end    
})
MiscTab:AddToggle({
Name = "Auto Evolve Weapons",
Default = false,
Callback = function(Value)
mergeToggle = Value
end    
})


--Scripts
task.spawn(function()
   while task.wait() do
       if killauraToggle then
           local mob = getClosest(zoneDropdown)
           if tpToggle then
               player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
           end
           game:GetService("ReplicatedStorage").Remotes.WeaponRemote:FireServer(mob)
       end
end
end)

task.spawn(function()
   while task.wait() do
       if coinsToggle then
           for i,v in pairs(game:GetService("Workspace").TemporaryAssets:GetChildren())do
               if v.Name == "Coin" then
                   local check = false
                   if tpToggle then
                       tpToggle = false
                       check = true
                   end
                   pcall(function() player.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame end)
                   if check then
                       tpToggle = true
                   end
               end
               task.wait(.01)
           end
       end
end
end)

task.spawn(function()
   while task.wait() do
       if mergeToggle then
           for i,v in pairs(player.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList:GetChildren())do
               game:GetService("ReplicatedStorage").Remotes.WeaponEvolve:FireServer(v.Name)
           end
       end
end
end)



OrionLib:Init()