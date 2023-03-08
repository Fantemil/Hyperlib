local FinishRun = game:GetService('ReplicatedStorage').Functions.FinishRun

local namecall; namecall = hookmetamethod(game, '__namecall', function(caller, ...)
   local args = {...}
   local method = getnamecallmethod()

   if not checkcaller() and caller == FinishRun and method == 'InvokeServer' then
args[2][1] = 1000 -- breaks
args[2][2] = 1000 -- sprains
args[2][3] = 100 -- dislocations
args[2][8]['Breaks'] = 0xFFFFFFFFFFFFFFFF -- math.huge breaks this script
   end

   return namecall(caller, unpack(args))
end)
--this was not made by me it was made by Sharp1ne in v3rm