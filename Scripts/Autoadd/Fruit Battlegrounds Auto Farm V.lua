-- Configurations
getgenv().Position  = CFrame.new(67, 822, 1616) -- Position you want to farm at
getgenv().Stamina   =  10   -- The Percentage Of Stamina You Want To Reset At ( If you dont wanna reset make it tonumber('-inf') or -math.huge )
getgenv().Autofarm  =  true -- AutoFarm Toggle
-- Autofarm
loadstring(game:HttpGet("https://raw.githubusercontent.com/508droid/FruitBattlegrounds/main/FruitBattlegrounds.lua",true))() -- Open Source