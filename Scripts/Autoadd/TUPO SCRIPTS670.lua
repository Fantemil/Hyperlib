getgenv().LOADER_EXE = {
    ["WarriorSimulatorRayField"] = true,
    ["WarriorSimulatorArrayField"] = false,
}

if LOADER_EXE["WarriorSimulatorRayField"] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Warrior-Simulator-BETA-/main/Warrior%20Simulator%20%5BBETA%5D%20RayField"))()
end

if LOADER_EXE["WarriorSimulatorArrayField"] then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Warrior-Simulator-BETA-ArrayField/main/Warrior%20Simulator%20%5BBETA%5D%20ArrayField"))()
end


DISCORD: https://discord.gg/R5xxUtSVgF