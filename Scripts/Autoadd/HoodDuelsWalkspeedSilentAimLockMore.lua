-- Retards don't execute this raw script file to avoid issues thanks.

pcall(function()

--_Function_Log_exploit_finder_)
local READ_EXECUTOR = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/ExecutorDetector", true))();
local RetrieveExecutor = identifyexecutor()

pcall(function()
 local INTERNAL_SCREW_SOURCE_DUMP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/FetchInternalVersion", true))(); task.wait()
end)

if RetrieveExecutor == "Synapse X" then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/IndexWinterSYNAPSE"))()
else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/IndexWinterMAIN"))()
end

end)