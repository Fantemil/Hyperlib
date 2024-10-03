--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
print("=====================")
--discord.gg/RezWare
print("discord.gg/RezWare")

print("=====================")

function checkFunctions()
    local workingCount = 0
    local totalCount = 0
    for name, value in pairs(getfenv()) do
        totalCount = totalCount + 1
        if type(value) == "function" then
            print(name .. " â")
            workingCount = workingCount + 1
        else
            print(name .. " â")
        end
    end
    print("=====================")
    print("Working functions: " .. workingCount .. "/" .. totalCount)
end

checkFunctions()

-- Solara down 

print("=====================")
--discord.gg/RezWare
print("discord.gg/RezWare")

print("Solara func")

print("=====================")

function checkFunctions2()
    local workingCount = 0
    local totalCount = 0
    for name, value in pairs(getgenv()) do
        totalCount = totalCount + 1
        if type(value) == "function" then
            print(name .. " â")
            workingCount = workingCount + 1
        else
            print(name .. " â")
        end
    end
    print("=====================")
    print("Working functions: " .. workingCount .. "/" .. totalCount)
end

checkFunctions2()
