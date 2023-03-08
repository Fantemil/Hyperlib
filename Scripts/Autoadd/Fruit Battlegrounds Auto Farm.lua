-- Configurations
getgenv().Position        =  CFrame.new(67, 822, 1616) -- Position you want to farm at
getgenv().Stamina         =  10   -- The Percentage Of Stamina You Want To Reset At ( If you dont wanna reset make it tonumber('-inf') or -math.huge )
getgenv().Autofarm        =  true -- Autofarm Toggle
getgenv().AntiKill        =  true -- Toggles anti kill feature
getgenv().AntiKillShop    =  true -- Server hop after anti kill triggered?
getgenv().AntiKillPercent =  99   -- Percentage of health to trigger anti kill at (Must be integer)

getgenv().Version         =  3 -- DO NOT EDIT
-- Autofarm
loadstring(game:HttpGet("https://raw.githubusercontent.com/508droid/FruitBattlegrounds/main/FruitBattlegrounds.lua",true))() -- Open Source