--[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
if (getgenv().Disconnect and type(getgenv().Disconnect) == "function") then
   getgenv().Disconnect()
   getgenv().Disconnect = nil
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Target = nil

local Folder = {workspace:WaitForChild("Game"):WaitForChild("BossZombies"), workspace:WaitForChild("Game"):WaitForChild("Zombies")}

local GetClosestZombie = function()
   local Closest = nil
   local Distance = math.huge

   for _, Zombies in pairs(Folder) do
      for i,v in next, Zombies:GetChildren() do
         if not v:FindFirstChild("Head") then continue end
         if not v:FindFirstChild("Torso") then continue end
         if not v:FindFirstChildOfClass("Humanoid") then continue end
         if v[v:FindFirstChildOfClass("Humanoid").Name].Health <= 0 then continue end

         local ScreenPOS, onScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Torso.Position)
         if not onScreen then continue end

         local Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPOS.X, ScreenPOS.Y)).Magnitude
         if Magnitude < Distance then
            Closest = v
            Distance = Magnitude
         end
      end
   end

   return Closest
end

Target = GetClosestZombie()
game:GetService("RunService").Stepped:Connect(function()
   Target = GetClosestZombie()
end)

local Old; Old = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
   local Args = {...}
   local Method = getnamecallmethod()

   if not checkcaller() and Method == "FireServer" and Self.Name == "Connection" then
      if rawequal(Args[1], "Fire") then
         if Target ~= nil then
            rawset(Args, 2, Target.Head.CFrame)
            return Old(Self, unpack(Args))
         end
      end
   end
   return Old(Self, ...)
end))

getgenv().Disconnect = function()
   hookmetamethod(game, "__namecall", Old)
end