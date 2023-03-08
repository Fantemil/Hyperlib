-- // Variables

getgenv().fireRate = 0.01
getgenv().reloadTime = 0

-- // Code

local a;
a = hookmetamethod(game, "__namecall", function(self, ...)
   local method = getnamecallmethod()
   if method == "Play" and tostring(self):lower():find("reload") and reloadTime == 0 then
       return true
   end

   return a(self, ...)
end)

local localPlayer = game:GetService("Players").LocalPlayer
local playerScripts = localPlayer.PlayerScripts
local weaponFramework = playerScripts.WeaponryFramework

local currentWeapons;
for i, v in pairs(getsenv(weaponFramework)) do
   if typeof(v) == "function" and i == "OpenInventoryManager" then
       currentWeapons = getupvalues(v)[5]
   end
end

task.spawn(function()
   while task.wait(1) do
       for i, v1 in pairs(currentWeapons) do
           local v = v1.WeaponStats
           if not v1.CurrentAmmo then continue end

           v.BloomResetTime = 0
           v.MaxBloom = 0
           v.Reload_Start = 0
           v.Reload_Insert = 0
           v.Reload_EndTime = 0
           v.Reload_PerAmmo = 0
           if v.Spread then
               for i1, v2 in pairs(v.Spread) do
                   v.Spread[i1] = Vector3.new(0,0,0)
               end
           end

           rawset(v, "FireRate", fireRate)
           rawset(v, "Reload_TotalTime", reloadTime)
           rawset(v, "Reload_AmmoFull", reloadTime)
           rawset(v, "EquipTime", 0)
           rawset(v, "Range", math.huge)
           rawset(v, "RecoilData", {
               ["y"] = {
                   ["Damper"] = 0,
                   ["Speed"] = 0,
                   ["MaxAngle"] = 0,
                   ["ADSreduction"] = 0,
                   ["MinAngle"] = 0
               },
               ["x"] = {
                   ["Damper"] = 0,
                   ["Speed"] = 0,
                   ["MaxAngle"] = 0,
                   ["ADSreduction"] = 0,
                   ["MinAngle"] = 0
               },
               ["z"] = {
                   ["Damper"] = 0,
                   ["Speed"] = 0,
                   ["MaxAngle"] = 0,
                   ["ADSreduction"] = 0,
                   ["MinAngle"] = 0
               }
           })

           if v.Animations and v.Animations.reload then
               for i, v in pairs(v.Animations.reload.SoundTimeStamps) do
                   rawset(v, "Time", 0)
               end
           end
       end
   end
end)