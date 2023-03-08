-- // Variables

getgenv().FireRate = 2500

-- // Code

local weaponsStorage = game:GetService("ReplicatedStorage").Weapons
for i, v in pairs(weaponsStorage:GetChildren()) do
   local Variables = v:FindFirstChild("Variables")
   if not Variables then continue end

   if Variables:FindFirstChild("FullAuto") then
       Variables.FullAuto.Value = true
   end

   if Variables:FindFirstChild("StoredAmmo") then
       Variables.StoredAmmo.Value = 999
   end

   if Variables:FindFirstChild("FireRate") then
       Variables.FireRate.Value = getgenv().FireRate
   end
end

-- // Inf ammo

local fireFunctions = {};
for i, v in pairs(getgc(true)) do
   if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "Fire" then
       debug.setupvalue(v, 40, 999)
       fireFunctions[v] = true
   end
end

task.spawn(function()
   while task.wait(1) do
       for fireFunction, v in pairs(fireFunctions) do
           debug.setupvalue(fireFunction, 40, 999)
           for i1, v1 in pairs(debug.getprotos(fireFunction)) do
               if debug.getinfo(v1).name == "Recoil" then
                   pcall(function()hookproto(v1, function()end)end)
               end
           end
       end
   end
end)

task.spawn(function()
   while task.wait(5) do
       for i, v in pairs(getgc(true)) do
           if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "Fire" then
               if not fireFunctions[v] then
                   fireFunctions[v] = true
               end
           end
       end
   end
end)