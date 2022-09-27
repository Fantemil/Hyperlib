-- Stop attempting to execute this raw script you're just going to get banned when I update it, your choice pal.

pcall(function()

--_Function_Log_exploit_finder_)
local READ_EXECUTOR = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/ExecutorDetector", true))();

local RetrieveExecutor = identifyexecutor()
if RetrieveExecutor == "Synapse X" then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/IndexWinterSYNAPSE"))()
else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/IndexWinterMAIN"))()
end

end)