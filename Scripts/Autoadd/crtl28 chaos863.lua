 if shared.settings then return end

shared.settings = {
   killaura = true,
   maxdistance = 12,
   debugging = true
}

local Players = game:GetService("Players")
local lp = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer

local function getchar(plr,yield)
   local plr = plr or lp
   return plr.Character or yield and plr.CharacterAdded:Wait()
end

local function gethumanoid(plr,yield)
   local plr = plr or lp
   local char = getchar(plr,yield)
   return yield and char:WaitForChild("Humanoid") or char:FindFirstChildWhichIsA("Humanoid")
end

local function getDamageRemote()
   local char = getchar(nil,true)
   local Tool = char:FindFirstChildWhichIsA("Tool")
   local Remote = Tool and Tool:FindFirstChild("DamageRemote")
   return Remote
end

local function GetClosestPlayer()
   local dist = shared.settings.maxdistance or 1/0
   local closest_player

   for i,v in next, Players:GetPlayers() do
       if v ~= lp then
           local char = getchar(v)
           if char and not char:FindFirstChildWhichIsA("ForceField") then
               local BasePart = char:FindFirstChildWhichIsA("BasePart")
               local Humanoid = gethumanoid(v)
               local DistanceFromTarget = BasePart and lp:DistanceFromCharacter(BasePart.CFrame.Position)
       
               if DistanceFromTarget and DistanceFromTarget <= dist and Humanoid and Humanoid.Health > 0 then
                   dist = DistanceFromTarget
                   closest_player = v
               end
           end
       end
   end
   return closest_player,dist    
end

repeat
   local DamageRemote = getDamageRemote()
   if DamageRemote then
       local Target,Distance = GetClosestPlayer()
       if Target then
           DamageRemote:FireServer(gethumanoid(Target))
           if shared.settings.debugging then
               warn("Attacked",Target,"from",Distance,"studs away")
           end
       end
   end
   task.wait()
until not shared.settings.killaura