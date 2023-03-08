local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local RunService = game:GetService("RunService")
local Closest

local isAlive = function()
   if not Player.Character then return false end
   if not Player.Character:FindFirstChild("HumanoidRootPart") then return false end
   if not Player.Character:FindFirstChild("Humanoid") then return false end
   if Player.Character.Humanoid.Health <= 0 then return false end
   return true
end

local function getClosest()
   if not isAlive() then return end

   local closest = nil;
   local distance = math.huge;

   for i, v in pairs(Players:GetPlayers()) do
       if v == Player then continue end
       if v.Team == Player.Team then continue end
       if not v.Character then continue end
       if not v.Character:FindFirstChildOfClass("Humanoid") then continue end

       local d = (v.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude

       if d < distance then
           distance = d
           closest = v
       end
   end

   return closest
end

RunService.RenderStepped:Connect(function(deltaTime)
   Closest = getClosest()
end)

local old; old = hookmetamethod(game, "__namecall", function(this, ...)
   local args = {...}
   local method = getnamecallmethod()

   if not checkcaller() and method == "FireServer" and tostring(this) == "WeaponHit" then
       if Closest then
           args[2]["part"] = Closest.Character.Head
           args[2]["h"] = Closest.Character.Head
       end
   end

   return old(this, unpack(args))
end)

local to0 = {"ShotCooldown", "HeadshotCooldown", "MinSpread", "MaxSpread", "TotalRecoilMax", "RecoilMin", "RecoilMax", "RecoilDecay"}
local toInf = {"CurrentAmmo", "AmmoCapacity", "HeadshotDamage"}

-- retarded gun mods (re-equip your weapon)
local old2; old2 = hookmetamethod(game, "__index", function(this, index)
   if not checkcaller() and index == "Value" then
       if table.find(toInf, tostring(this)) then
           return math.huge
       end
       if table.find(to0, tostring(this)) then
           return 0
       end
   end
   return old2(this, index)
end)