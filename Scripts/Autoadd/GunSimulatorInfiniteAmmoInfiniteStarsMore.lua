local RemoteTable;
for _,v in pairs(getgc(true)) do
if type(v)=="table" then
       if rawget(v,"SetRank") then
           for a,b in pairs(v) do
               if typeof(b) == "Instance" then
                   RemoteTable = v
                   break
               end
           end
       end
end
end

local StatsModule;
local AmmoModule;
for i,v in pairs(getloadedmodules()) do
   if v.Name == "Stats" and v:IsA("ModuleScript") then
       StatsModule = v
   elseif v.Name == "AmmoHandler" and v:IsA("ModuleScript") then
       AmmoModule = v
   end
end

for i,v in pairs(require(AmmoModule)) do
   if i == "GetAmmo" then
       local HookAmmo = hookfunction(v, function()
           return 50
       end)
   end
end

for FuncName,Func in pairs(require(StatsModule)) do
   if FuncName == "SkillAdd" then
       local OldHook = v
       OldHook = hookfunction(Func, function(SkillPoints)
           SkillPoints = math.huge
           return OldHook(SkillPoints)
       end)
   end
end

local OldNewIndex;
OldNewIndex = hookmetamethod(game, "__newindex", function(...)
   local Self, Index, Value = ...
   if not checkcaller() and Self:IsA("RemoteEvent") and Index == "Name" then
       return;
   end
   if not checkcaller() and Self == game:GetService("Players").LocalPlayer.PlayerGui.UI.Dialogs.SkillFull then
       if Index == "Visible" and Value == true then
           return;
       end
   end
   return OldNewIndex(...)
end)

local EventsFolder = game:GetService("ReplicatedStorage").Events
for _,v in pairs(EventsFolder:GetChildren()) do
   for RemoteName,Instance in pairs(RemoteTable) do
       if v == Instance then
           v.Name = RemoteName
       end
   end
end

local OldNameCall;
OldNameCall = hookmetamethod(game, "__namecall", function(Self,...)
   local Args = {...}
   local NamecallMethod = getnamecallmethod()

   if not checkcaller() and Self.Name == "SetStars" and NamecallMethod == "FireServer" then
       Args[1] = math.huge
       return Self.FireServer(Self, unpack(Args))
   end

   return OldNameCall(Self, ...)
end)

local StatsModule;
for i,v in pairs(getloadedmodules()) do
   if v.Name == "Stats" and v:IsA("ModuleScript") then
       StatsModule = v
   end
end

syn.set_thread_identity(1)
while wait() do
   require(StatsModule).SkillSell()
end