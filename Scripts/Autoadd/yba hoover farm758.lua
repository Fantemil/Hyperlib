--[[Pity Farming Features]]--
getgenv()["Pity_Config"] = {
    --// Farm Pity rokas shinys and continues farming until you have x.xx pity \\--
    ["Farm_Pity"] = false,
    ["Pity_Goal"] = 2.00
}

--[[Optimization Features]]--
getgenv()["Reduce_Crashes"] = true
getgenv()["Anti_Lag"] = true

--[[Farming Configuration Features]]--
getgenv()["Use_Ribcages"] = false
getgenv()["Farm_Shinys"] = true
getgenv()["Extra_Items"] = {
    "Item Name Here",
    "Item Name Here",
    "Item Name Here"
}

getgenv()["Teleport_Timing"] = 0.4

loadstring(game:HttpGet("https://gist.githubusercontent.com/Hooverfarm/df6ab1c2c86c360ae6092b6b262d5855/raw/9eb6d406590e53435fe8a42eb61b48376f66efd7/farm", true))():Activate()