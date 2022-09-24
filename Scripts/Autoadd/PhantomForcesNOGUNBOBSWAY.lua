local gameLogic;
local char;
local loadmodules;
local localPlayer = game:GetService("Players").LocalPlayer;
local gunBobIdx;

for i,v in ipairs(getgc(true)) do
if type(v) == "table" then
if rawget(v, "gammo") then
gameLogic = v;
elseif rawget(v, "reloadsprings") then
char = v;
end
elseif type(v) == "function" then
if debug.getinfo(v).name == "loadmodules" then
loadmodules = v;
end
end
end



local oldUpdateCharacter = char.updatecharacter;

function char.updatecharacter(spawnPosition)
oldUpdateCharacter(spawnPosition);
local swingspring = debug.getupvalue(char.reloadsprings, 6);
if swingspring then
local mt = getrawmetatable(swingspring);
local index = mt.__index;
local newIndex = mt.__newindex;

swingspring.t = Vector3.new();
swingspring.s = 1000;
swingspring.v = Vector3.new();

function mt:__index(k)
if k == "v" then
return Vector3.new();
end
return index(self, k);
end

function mt:__newindex(k, v)
if k == "t" then
v = Vector3.new();
elseif k == "s" then
v = 1000;
elseif k == "d" then
v = 0;
end
return newIndex(self, k, v);
end

else
print("you should kill yourself, NOW!");
end
end


local oldLoadgun = debug.getupvalue(loadmodules, 6);
debug.setupvalue(loadmodules, 6, function(...)
local data = oldLoadgun(...);
task.spawn(function()
if not gunBobIdx then
for i,v in pairs(debug.getupvalues(oldLoadgun)) do
if type(v) == "function" and debug.getinfo(v).name == "gunbob" then
gunBobIdx = i;
end
end
end
if not gunBobIdx then
print("you should Kill yourself, NOW! (RETARD)");
end
debug.setupvalue(oldLoadgun, gunBobIdx, function()
return CFrame.new();
end);
end);
return data;
end);