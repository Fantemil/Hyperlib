local DevEnv = loadstring(game:HttpGet('https://raw.githubusercontent.com/Extorius/Developer-Utilities/main/src/library.lua'))({
 ['cache-event'] = false -- whether to fire the example cache-event after loading in
})

-- [[ Services ]] --
DevEnv.Players -- Players service
DevEnv.Workspace -- Workspace service
DevEnv.ReplicatedStorage -- ReplicatedStorage Service
DevEnv.Http -- HTttp Service
DevEnv.Tween -- Tween Service
DevEnv.CoreGui -- CoreGui Service
DevEnv.Pathfinding -- Pathfinding Service
DevEnv.RunService -- Run Service

-- [[ Misc ]] --
DevEnv.LocalPlayer -- LocalPlayer (player instance)

-- [[ Character Related Functions ]] --
DevEnv.F:Character(5)

--[[ 
Returns LocalPlayer's Character
]]--

DevEnv.F:Humanoid(5)

--[[
Returns LocalPlayer's Humanoid
First parameter is the timeout for WaitForChild (int)
If no parameter is passed, it defaults to 2 seconds.
]]--

DevEnv.F:Root(5)

--[[
Returns LocalPlayer's HumanoidRootPart
First parameter is the timeout for WaitForChild (int)
If no parameter is passed, it defaults to 2 seconds.
]]--

DevEnv.F:TweenTo(CFrame.new(0,0,0), 50)

--[[
Tween's LocalPlayer's HumanoidRootPart
First parameter is the CFrame to tween to (cfr) and must be passed
Second Parameter is the speed at which to tween (int), (studs/second) and must be passed
]]--

DevEnv.F:ChangeWalkSpeed(50)

--[[
Set's LocalPlayer's WalkSpeed
First parameter is the speed to set it to (int) and must be passed
]]--

DevEnv.F:ChangeJumpPower(50)

--[[
Set's LocalPlayer's JumPower
First parameter is the power to set it to (int) and must be passed
]]--

DevEnv.F:GetClosest(false, true)

--[[
Returns the closest player to LocalPlayer (player instance)
First parameter is whether to skip over people on the same team as LocalPlayer (bool) and must be passed
Second parameter is whether to skip over people friends with LocalPlayer (bool) and must be passed
]]--

DevEnv.F:God()

--[[
Replaces LocalPlayer's humanoid, effectively giving LocalPlayer god mode for a short period
]]--

-- [[ Misc Functions ]] --
DevEnv.F:JsonDecode({'test': 1})

--[[
Returns the decoded JSON (tbl)
First parameter is the JSON to decode (json) and must be passed
]]--

DevEnv.F:JsonEncode({['test'] = 1})

--[[
Returns the JSON encoded table {json}
First parameter is the table to encode (tbl) and must be passed
]]--

DevEnv.F:Descendants({[1] = {[1] = 1}})

--[[
Returns the descendants of a table (tbl)
First parameter is the table to search though (tbl) and must be passed
]]--

DevEnv.F:RandomString(10, true, true, true, true)

--[[
Returns a random string (str)
First parameter is the length of the string (int) and does not need to be passed (default 10)
Second parameter is whether to use lowercase letters (bool) and does not need to be passed (default true)
Third parameter is whether to use uppercase letters (bool) and does not need to be passed (default true)
Fourth parameter is whether to use numbers (bool) and does not need to be passed (default true)
Fifth parameter is whether to use special characters (bool) and does not need to be passed (default true)
]]--

DevEnv.F:GuardedCall(print, 'Hello world!')

--[[
Returns the cloned function being called with the select parameters (func)
First parameter is the function to clone and call (func) and must be passed
Second parameter is the variables to pass through the cloned function (?) and does not need to be passed
]]--

DevEnv.F:Compare('Hello', 'world!')

--[[
Returns the % of the same characters in the two strings passed as well as a table containing all of the matching letters (int, tbl)
First parameter is the first string to compare (str) and must be passed
Second parameter is the second string to compare (str) and must be passed
]]--

DevEnv.F:AddFunction(function(p1,p2) return p1+p2;end, 'test')

--[[
Adds a function to the developer enviroment's function table and can be called like:
DevEnv.F:Test(1,2) -- returns 3
]]--

DevEnv.E:CreateEvent()

--[[
Return's a event (tbl)
Two functions can be passed through this event:

event:Connect(func) -- adds a function that will be fired when the event is called
event:Fire(...) -- fires all functions connected to the event with the passed parameters
]]--

-- Example of making an event:
local CacheEvent = DevEnv.E:CreateEvent()
CacheEvent:Connect(function()
 print('There\'s currently ' .. tostring(#DevEnv.F:Descendants(DevEnv.__cache)) .. ' objects in the cache.')
end)

CacheEvent:Connect(function()
 table.foreach(DevEnv.F:Descendants(DevEnv.__cache), function(i, v)
  if type(v) == 'function' then
   print(i, getinfo(v).name, type(v))
  else
   print(i, tostring(v), type(v))
  end
 end)
end)

CacheEvent:Connect(function()
 print('Clearing cache..')
end)

CacheEvent:Connect(DevEnv.ClearCache)

CacheEvent:Connect(function()
 print('Now there\'s currently ' .. tostring(#DevEnv.__cache) .. ' objects in the cache.')
end)

CachEvent:Fire()