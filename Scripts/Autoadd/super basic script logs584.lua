if not isfolder("Script_Logs") then
    makefolder("Script_Logs")
end
local oldl;oldl = hookfunc(loadstring,function(stuff)
    pcall(function()
        writefile("Script_Logs/Logged Script "..tostring(#listfiles("Script_Logs/"))..".txt",stuff)
    end)
    return oldl(stuff)
end)
