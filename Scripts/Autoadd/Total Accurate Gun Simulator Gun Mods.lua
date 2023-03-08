-- // Variables

getgenv().FireRate = 0 -- // lower is better
getgenv().ReloadTime = 0
getgenv().Spread = 0
getgenv().Auto = true
getgenv().Recoil = 0
getgenv().Accuracy = 1 -- // 1 is best

getgenv().Range = 10000
getgenv().BulletSpeed = 10000

getgenv().Ammo = math.huge
getgenv().MaxAmmo = math.huge
getgenv().AmmoPerMag = math.huge

getgenv().ShellClipinSpeed = 0 -- // speed for shotguns reloading

-- // Code

function setData(v)
   rawset(v, "FireRate", getgenv().FireRate)
   rawset(v, "ReloadTime", getgenv().ReloadTime)
   rawset(v, "Spread", getgenv().Spread)
   rawset(v, "Auto", getgenv().Auto)
   rawset(v, "Recoil", getgenv().Recoil)
   rawset(v, "Accuracy", getgenv().Accuracy)
   rawset(v, "ChargingTime", 0)
   rawset(v, "DelayBeforeFiring", 0)
   rawset(v, "DelayAfterFiring", 0)
   rawset(v, "BulletSpeed", getgenv().BulletSpeed)
   rawset(v, "Ammo", getgenv().Ammo)
   rawset(v, "MaxAmmo", getgenv().MaxAmmo)
   rawset(v, "AmmoPerMag", getgenv().AmmoPerMag)
   rawset(v, "ShellClipinSpeed", getgenv().ShellClipinSpeed)
   rawset(v, "Range", getgenv().Range)
   local spreadPattern = rawget(v, "SpreadPattern")
   if spreadPattern then
       for i1, v1 in pairs(spreadPattern) do
           if typeof(v) == "table" then
               rawset(spreadPattern, i1, {0,0})
           end
       end
    end
end

for i, v in pairs(getgc(true)) do
   if typeof(v) == "table" and rawget(v, "FireRate") then
       setData(v)
   end
end

local oldRequire = getrenv().require

local oldHook;
oldHook = hookfunction(oldRequire, function(Module)
   local v = oldHook(Module)
   if typeof(v) == "table" and rawget(v, "FireRate") and Module.Name == "Setting" then
       setData(v)
   end

   return v
end)