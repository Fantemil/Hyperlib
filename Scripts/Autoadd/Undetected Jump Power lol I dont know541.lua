--[[
   Credits:
       Alias | Discord | (V3rmillion)

       engo | joeengo | (https://v3rmillion.net/member.php?action=profile&uid=1127047): Thank you for making me the detections,
       Amity | winterpark | (https://v3rmillion.net/member.php?action=profile&uid=2566454): For making the script

]]

local setjump = 200 -- Adding this for the script kiddies. If you're a developer, you can just remove this line.

local JumpPowerSpoof = getgenv().JumpPowerSpoof
local Disable = JumpPowerSpoof and JumpPowerSpoof.Disable
if Disable then
   Disable()
end

local cloneref = cloneref or function(...)
   return ...
end

local JumpPowerSpoof = {}

local Players = cloneref(game:GetService("Players"))
if not Players.LocalPlayer then
   Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end
local lp = cloneref(Players.LocalPlayer)

local split = string.split

local GetDebugIdHandler = Instance.new("BindableFunction")
local TempHumanoid = Instance.new("Humanoid")

local cachedhumanoids = {}

local CurrentHumanoid
local newindexhook
local indexhook

function GetDebugIdHandler.OnInvoke(obj: Instance): string
   return obj:GetDebugId()
end

local function GetDebugId(obj: Instance): string
   return GetDebugIdHandler:Invoke(obj)
end

local function GetJumpPower(obj: any): number
   TempHumanoid.JumpPower = obj
   return TempHumanoid.JumpPower
end

function cachedhumanoids:cacheHumanoid(DebugId: string, Humanoid: Humanoid)
   cachedhumanoids[DebugId] = {
       currentindex = indexhook(Humanoid, "JumpPower"),
       lastnewindex = nil
   }
   return self[DebugId]
end

indexhook = hookmetamethod(game,"__index",function(self, index)
   if not checkcaller() and typeof(self) == "Instance" then
       if self:IsA("Humanoid") then
           local DebugId = GetDebugId(self)
           local cached = cachedhumanoids[DebugId]

           if self:IsDescendantOf(lp.Character) or cached then
               if type(index) == "string" then
                   local cleanindex = split(index,"\0")[1]

                   if cleanindex == "JumpPower" then
                       if not cached then
                           cached = cachedhumanoids:cacheHumanoid(DebugId, self)
                       end

                       if not (CurrentHumanoid and CurrentHumanoid:IsDescendantOf(game)) then
                           CurrentHumanoid = cloneref(self)
                       end

                       return cached.lastnewindex or cached.currentindex
                   end
               end
           end
       end
   end

   return indexhook(self, index)
end)

newindexhook = hookmetamethod(game,"__newindex",function(self, index, newindex)
   if not checkcaller() and typeof(self) == "Instance" then
       if self:IsA("Humanoid") then
           local DebugId = GetDebugId(self)
           local cached = cachedhumanoids[DebugId]

           if self:IsDescendantOf(lp.Character) or cached then
               if type(index) == "string" then
                   local cleanindex = split(index,"\0")[1]

                   if cleanindex == "JumpPower" then
                       if not cached then
                           cached = cachedhumanoids:cacheHumanoid(DebugId, self)
                       end

                       if not (CurrentHumanoid and CurrentHumanoid:IsDescendantOf(game)) then
                           CurrentHumanoid = cloneref(self)
                       end
                       cached.lastnewindex = GetJumpPower(newindex)
                       return CurrentHumanoid.JumpPower
                   end
               end
           end
       end
   end

   return newindexhook(self, index, newindex)
end)

function JumpPowerSpoof:Disable()
   JumpPowerSpoof:RestoreJumpPower()
   hookmetamethod(game,"__index",indexhook)
   hookmetamethod(game,"__newindex",newindexhook)
   GetDebugIdHandler:Destroy()
   TempHumanoid:Destroy()
   table.clear(JumpPowerSpoof)
   getgenv().JumpPowerSpoof = nil
end

function JumpPowerSpoof:GetHumanoid()
   return CurrentHumanoid or (function()
       local char = lp.Character
       local Humanoid = char and char:FindFirstChildWhichIsA("Humanoid") or nil

       if Humanoid then
           cachedhumanoids:cacheHumanoid(Humanoid:GetDebugId(), Humanoid)
           return cloneref(Humanoid)
       end
   end)()
end

function JumpPowerSpoof:SetJumpPower(jump)
   local Humanoid = JumpPowerSpoof:GetHumanoid()

   if Humanoid then
       local connections = {}
       local function AddConnectionsFromSignal(Signal)
           for _, v in ipairs(getconnections(Signal)) do
               if v.State then
                   v:Disable()
                   table.insert(connections, v)
               end
           end
       end
       AddConnectionsFromSignal(Humanoid.Changed)
       AddConnectionsFromSignal(Humanoid:GetPropertyChangedSignal("JumpPower"))
       Humanoid.JumpPower = jump
       for _, v in ipairs(connections) do
           v:Enable()
       end
   end
end

function JumpPowerSpoof:RestoreJumpPower()
   local Humanoid = JumpPowerSpoof:GetHumanoid()

   if Humanoid then
       local cached = cachedhumanoids[Humanoid:GetDebugId()]

       if cached then
           JumpPowerSpoof:SetJumpPower(cached.lastnewindex or cached.currentindex)
       end
   end
end

getgenv().JumpPowerSpoof = JumpPowerSpoof

if setjump then
   JumpPowerSpoof:SetJumpPower(setjump)
end
