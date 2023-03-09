assert(syn or KRNL_LOADED or (identifyexecutor and identifyexecutor() == 'ScriptWare'), 'shit exploit')
local GrassObjects = workspace:WaitForChild'GrassObjects'
local LocalPlayer = game:GetService'Players'.LocalPlayer
local function HandleObject(GrassObject)
   local Character = LocalPlayer.Character
   repeat
       task.wait()
       GrassObject.CFrame = Character:GetPivot()
   until GrassObject.Parent == nil
end

local __namecall do
   __namecall = hookmetamethod(game, '__namecall', function(self, ...)
       if getcallingscript() and self == LocalPlayer and getnamecallmethod() == 'Kick' or getnamecallmethod() == 'kick' then
           return    
       end
       return __namecall(self, ...)
   end)
end

do -- silly dev
   local OldKick do
       OldKick = hookfunction(LocalPlayer.Kick, function(self, ...)
           if getcallingscript() and self == LocalPlayer then
               return    
           end
           return OldKick(self, ...)
       end)
   end
   local Oldkick do
       Oldkick = hookfunction(LocalPlayer.kick, function(self, ...)
           if getcallingscript() and self == LocalPlayer then
               return    
           end
           return Oldkick(self, ...)
       end)
   end
end

local Multipliers = require(game:GetService'ReplicatedStorage':WaitForChild'Multipliers') do
   local calculateMulti = rawget(Multipliers, 'calculateMulti')
   for Index, Value in next, getconstants(calculateMulti) do
       if type(Value) == 'number' then
           setconstant(calculateMulti, Index, 0xfffffffffffff) -- adjust the number ur game might crash from all of the unoptimized popups
       end
   end
end

for _, GrassObject in next, GrassObjects:GetChildren() do
   task.spawn(HandleObject, GrassObject)    
end

GrassObjects.ChildAdded:Connect(
   HandleObject    
)