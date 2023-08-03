-- No Recoil

local is_exploit_function = is_synapse_function or iskrnlclosure or isourclosure or isexecutorclosure or is_sirhurt_closure or issentinelclosure or is_protosmasher_closure or function(...) return "is_exploit_function was not found in exploit environment" end -- pasted from iris exploit compatability script


function lolz()
for i,v in pairs(getgc()) do
   if type(v) == "function" and islclosure(v) and not is_exploit_function(v) and tostring(getfenv(v).script) == "client_main" then
   local lol = getconstants(v)
   if table.find(lol, "math") and table.find(lol, "random") and table.find(lol, "rad") then
       for i2,v2 in pairs(getupvalues(v)) do
           if type(v2) == "number" then
               setupvalue(v,i2,0)
               end
           end
       end
   end
end




--no spread
for i,v in pairs(getgc()) do
   if type(v) == "function" and islclosure(v) and not is_exploit_function(v) and tostring(getfenv(v).script) == "client_main" then
   local lol = getconstants(v)
   if table.find(lol, "math") and table.find(lol, "random") and table.find(lol, "PumpAction") and table.find(lol, "Vector3") then
       setconstant(v, 15, "cos")
       end
   end
end

--max distance
for i,v in pairs(getgc(true)) do
   if typeof(v) == "table" and rawget(v, "maxdistance") then
       rawset(v, "maxdistance", 9999)
       end
   end

end
lolz()
local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character

Player.CharacterAdded:Connect(function(character)
   repeat task.wait() until #Player.Backpack:GetChildren() == 6
   lolz()
end)
