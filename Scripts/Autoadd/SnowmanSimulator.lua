loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/ZHZH0MIYKR.lua"))()

local gamePlayer = game:GetService("Players").LocalPlayer
local ballSize = game:GetService("Players").LocalPlayer.info.snowmanBallSize
local ballCount = game:GetService("Players").LocalPlayer.localData.snowballs
local sackStorage = game:GetService("Players").LocalPlayer.localData.sackStorage
local children = game:GetService("Workspace").snowmanBases:GetChildren()
local bossStep = game:GetService("Workspace").steps
local getMinions = game:GetService("Workspace"):GetDescendants()
local pvpList = game:GetService("Players"):GetPlayers()
local gameVector = Vector3.new(math.random(5000), y, math.random(5000))
local FindOldInstance = game:GetService("CoreGui"):FindFirstChild('ScreenGui')
local test = game:GetService("CoreGui"):GetChildren()

local autoSnow
local rebirthAuto
local autoCandy
local noOptions
local autoYetiMoney
local autoYeti
local autoSell
local sBoss
local customWait
local doKill
local murderKid

local candyCount = {}

local waitCount = 0
local killPlayer = "pvpHit"
local eventKill = game:GetService("ReplicatedStorage").ThisGame.Calls.snowballProjectile

loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/newnotif.lua"))()

if FindOldInstance then
  FindOldInstance:Destroy()
 end

local config = {
    ["HeaderWidth"] = 240,
    ["AccentColor"] = Color3.new(0.6,0,0)
}
local gui = loadstring(game:HttpGet("https://gitlab.com/0x45.xyz/droplib/-/raw/master/drop-minified.lua"))():Init(config,game.CoreGui)
--gui:CreateCategory("Clean Up"):CreateButton("Click",function() gui:CleanUp() end)
local main = gui:CreateCategory("Snowman Simulator GUI")
local autofarms = main:CreateSection('Auto Farms')


autofarms:CreateButton('Snowbase', function()
    local snowbase = gui:CreateCategory('Automatic Snowbase Farm')
    local start_base = snowbase:CreateSwitch('Start', function(bool) autoSnow = bool end)
    local options = snowbase:CreateSection('Options')
    local rebirth = options:CreateSwitch('Rebirth', function(bool) rebirthAuto = bool end)
    --local maxBalls = options:CreateSwitch('No Max Size', function(bool) maxBall = bool end)
    options:Collapse()
    
    end)


autofarms:CreateButton("Boss", function() 
    local bossfarms = gui:CreateCategory("Automatic Boss Farm") 
    local yeti = bossfarms:CreateSection('Yeti Giant')
    local start_yeti = yeti:CreateSwitch('Start', function(bool) autoYeti = bool sBoss = 'Yeti Giant' end)
    local yeti_options = yeti:CreateSection('Options')
    local yeti_teleport = yeti_options:CreateButton('Teleport', function()  teleportBoss('Yeti Giant')  end)
    local yeti_money = yeti_options:CreateButton('Manual Boss Reward', function() end)
    local yeti_moneyauto = yeti_options:CreateSwitch('Auto Boss Reward', function(bool) autoYetiMoney = bool sBoss = 'Yeti Giant' end)
    local yeti_slider = yeti_options:CreateSlider("Custom Kill Wait", function(value) customWait = value end,0,100,0.1,false,1)
    local ginger = bossfarms:CreateSection('Bad Batch Gingey')
    local start_ginger = ginger:CreateSwitch('Start', function(bool) autoYeti = bool sBoss = 'Bad Batch Gingey' end)
    local ginger_options = ginger:CreateSection('Options')
    local ginger_teleport = ginger_options:CreateButton('Teleport', function()  teleportBoss('Bad Batch Gingey') end)
    local ginger_money = ginger_options:CreateButton('Manual Boss Reward', function() end)
    local ginger_moneyauto = ginger_options:CreateSwitch('Auto Boss Reward', function(bool) autoYetiMoney = bool sBoss = 'Bad Batch Gingey' end)
    local ginger_slider = ginger_options:CreateSlider("Custom Kill Wait", function(value) customWait = value end,0,100,0.1,false,1)
    local teddy = bossfarms:CreateSection('Terrible Teddy Bear')
     local start_teddy = teddy:CreateSwitch('Start', function(bool) autoYeti = bool sBoss = 'Terrible Teddy Bear' end)
    local teddy_options = teddy:CreateSection('Options')
    local teddy_teleport = teddy_options:CreateButton('Teleport', function()  teleportBoss('Terrible Teddy Bear') end)
    local teddy_money = teddy_options:CreateButton('Manual Boss Reward', function() end)
    local teddy_moneyauto = teddy_options:CreateSwitch('Auto Boss Reward', function(bool) autoYetiMoney = bool sBoss = 'Terrible Teddy Bear' end)
    local teddy_slider = teddy_options:CreateSlider("Custom Kill Wait", function(value) customWait = value end,0,100,0.1,false,1)
     local gumdrop = bossfarms:CreateSection('Gumdrop King')
     local start_gumdrop = gumdrop:CreateSwitch('Start', function(bool) autoYeti = bool sBoss = 'Gumdrop King' end)
    local gumdrop_options = gumdrop:CreateSection('Options')
    local gumdrop_teleport = gumdrop_options:CreateButton('Teleport', function()  teleportBoss('Gumdrop King') end)
    local gumdrop_money = gumdrop_options:CreateButton('Manual Boss Reward', function() end)
    local gumdrop_moneyauto = gumdrop_options:CreateSwitch('Auto Boss Reward', function(bool) autoYetiMoney = bool sBoss = 'Gumdrop King' end)
    local gumdrop_slider = gumdrop_options:CreateSlider("Custom Kill Wait", function(value) customWait = value end,0,100,0.1,false,1)
    yeti:Collapse()
    ginger:Collapse()
    teddy:Collapse()
    gumdrop:Collapse()
    yeti_options:Collapse()
    teddy_options:Collapse()
    ginger_options:Collapse()
    gumdrop_options:Collapse()
    end)




autofarms:CreateButton("Candy", function() 
    local candies = gui:CreateCategory("Automatic Candy Farm") 
    local start = candies:CreateSwitch('Start', function(bool) autoCandy = bool end)
    local options = candies:CreateSection('Options')
    local slider = options:CreateSlider("Amount to Wait", function(value) if waitCheck() == true then noOptions = false end waitCount = value end,0,25,1)
    local sell = options:CreateSwitch('AutoSell', function(value) autoSell = value end)
    options:Collapse()
    end)


autofarms:CreateButton("Minions", function()
    local minions_start = gui:CreateCategory("Minion Farm")
    local start = minions_start:CreateSwitch('Start', function(bool) doKill = bool end)
    local options_min = minions_start:CreateSection('Options')
    local god = options_min:CreateButton('Minion God Mode', function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Snow-Simulator-GUI/main/mGod.lua"))() end)
end)

autofarms:CreateButton('Players', function()
    local player_cat = gui:CreateCategory('Player Fun')
    local selector = player_cat:CreateSelector('Player: ', function() return; end, function()    local pvpEnabled = {}
    
    for i, player in pairs(pvpList) do 
        if player == game.Players.LocalPlayer then
            table.remove(pvpList, i)
        end
    end
    
    for _, v in pairs(pvpList) do
        if v.localData.playerSettings.pvp.value == true then
            table.insert(pvpEnabled,v)
        end
    end
    
    return pvpEnabled end, 'none') 
local Manual = player_cat:CreateButton('Teleport Kill', function()
Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
    if player == selector:GetValue() then 
        --attackPlayer = player.name
        --playerHealth = player.localData.health.value
        gamePlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,8)
        repeat
            for i = 1, 2 do
                eventKill:FireServer(killPlayer, player, gameVector)
                wait(0.30)
            end
        until player.Character.Humanoid.Health == 0
        
    end
end
end) 
local pvpKillAll = player_cat:CreateButton('PVP-Enabled Kill All', function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Snow-Simulator-GUI/main/SilentKillALLV1.lua"))() end)

end)

autofarms:Collapse()

main:CreateButton("Exit GUI",function() gui:CleanUp() end)

main:CreateTextLabel('Created by DohmBoyOG#0313 \n Version: 1.0')


------- END GUI STUFF -------

function waitCheck()
    if waitCount > 0 then
        return true;
    else
        return false;
    end
end

        
function maxSize()
    return 8 + 12 * math.clamp(game:GetService("Players").LocalPlayer.localData.collecting.Value / 200, 0, 1)
end

function auto_snowbase()
    --if maxBall == true then
       -- op = ballSize.Value <= maxSize()
    --else
       -- op = ballSize.Value >= maxSize()
        
   -- end
   game:GetService("ReplicatedStorage").ThisGame.Calls.snowballControllerFunc:InvokeServer("startRoll")
    repeat
        for i = 1, 100 do
        game:GetService("ReplicatedStorage").ThisGame.Calls.collectSnow:FireServer()
        game:GetService("RunService").Heartbeat:wait()
        end
    until ballSize.Value >= maxSize()
        
    warn('[Snowball Size]: '..ballSize.Value..'/'..maxSize())
    game:GetService("ReplicatedStorage").ThisGame.Calls.snowballControllerFunc:InvokeServer("stopRoll")
    if ballCount.Value == sackStorage.Value then
        print("Stop Collecting")
        game:GetService("ReplicatedStorage").ThisGame.Calls.snowballController:FireServer("addToSnowman")
        print("Adding Collection to snowman")
        end
        while rebirthAuto == true and getBool() == true do
            wait()
            print("Congrats, its a boy!")
            provideRebirth()
            wait()
        end
end

function getBool()
    for _, gamePlots in pairs(children) do
        if gamePlots.player.Value == gamePlayer then
            return gamePlots.rebirthActive.Value
        end
    end
end

function provideRebirth() ---[ Code block Taken and put into a function from user 'umbtw' on v3rmillion forums]---
    for _, value in pairs(children) do
        if value.player.value == gamePlayer then
            if value.player.value == gamePlayer then
                LandPlot = value
            end
        end
    end

    local A_1 = "acceptRebirth"
    local A_2 = LandPlot
    local A_3 = true

    local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.snowmanEvent

    Event:FireServer(A_1, A_2, A_3)
end ---[ End of taken code, i CBA to do it myself even though i know how] ---

function countCandy()
    local candyCanes = game:GetService("Workspace").gameCandyCanes:GetChildren()
    local count = #candyCanes
    return count
end

function startCollection()
    for _ , candyCanes in next, game:GetService("Workspace").gameCandyCanes:GetChildren() do
        local cane = candyCanes:FindFirstChild("cane")
        if cane then
            gamePlayer.Character.HumanoidRootPart.CFrame  = candyCanes.cane.CFrame * CFrame.new(0,4,0)
            wait(0.40)
        end
    end
end

function sellCandy()
    print(autoSell)
    if autoSell == true then
        for count = 1, 3 do
            local A_1 = "sellCandycanes"
            local A_2 = count
            local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.candycaneSell
            Event:FireServer(A_1, A_2)
        end
    end
end


    

function forceReward()
    local bossPosition = searchBoss(sBoss)
    if bossPosition:FindFirstChild('Boss') and bossPosition.Boss:FindFirstChild('HumanoidRootPart') then
        local A_1 = "hit"
        local A_2 = sBoss
        local A_3 = game:GetService("Workspace").steps.bossLedge.Boss.Boss.Humanoid
        local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.bossReward
        for i= 1, 80 do
            Event:FireServer(A_1, A_2, A_3)
            game:GetService("RunService").Heartbeat:wait()
            end
            print('doing')
    end
end

        

function searchBoss(b)
    for _, findLedge in next, bossStep:GetChildren() do
        if findLedge.Name == 'bossLedge' then
            for _, findBoss in next, findLedge:GetChildren() do
                if findBoss:IsA('Folder') and findBoss.Name == 'Boss' then
                    if findBoss.bossName.Value == b then
                        return findBoss
                    end
                end
            end
        end
    end
end

function autoKill()
    local bossPosition = searchBoss(sBoss)
    if bossPosition:FindFirstChild('Boss') and bossPosition.Boss:FindFirstChild('HumanoidRootPart') then
        local A_1 = "explodeLauncher"
        local A_2 = bossPosition.Boss.HumanoidRootPart.CFrame.p;
        local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.snowballProjectile
        wait(customWait)
        for i=1, 20 do 
        Event:FireServer(A_1, A_2)
        game:GetService("RunService").Heartbeat:wait()
        end
    end
end

function notImplemented()
    wait(0.2)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Not Implemented"; -- the title 
        Text = "This Function is not implemented yet, please be patient this is a WIP"; -- what the text says 
        Duration = 5; -- how long the notification should in secounds
        })
end

function killMinions()
    for _, value in pairs(getMinions) do
        if value:IsA('Folder') and value.name == 'minionHolder' then
            for _, m in pairs(value:GetChildren()) do
                for i = 1, 20 do
                    game:GetService("ReplicatedStorage").ThisGame.Calls.minionHelper:FireServer("minionHit", m)
                    game:GetService("RunService").Heartbeat:wait()
                end
            end
        end
    end
end

function teleportBoss(boss)
    for _, bossLedge in pairs(bossStep:GetChildren()) do
        if bossLedge.name == 'bossLedge' then
            local whatBoss = bossLedge.bossName.value
            local isBoss = boss
            if whatBoss == isBoss then 
                gamePlayer.Character.HumanoidRootPart.CFrame = bossLedge.portal.teleportSpot.CFrame
            else
                print('No boss named '..isBoss..' Found!')
            end
        end
    end
end

function murderChild()
    
    local pvpEnabled = {}
    
    for i, player in pairs(pvpList) do 
        if player == game.Players.LocalPlayer then
            table.remove(pvpList, i)
        end
    end
    
    for _, v in pairs(pvpList) do
        if v.localData.playerSettings.pvp.value == true then
            table.insert(pvpEnabled,v)
        end
    end
    
    return pvpEnabled
end


while wait() do
    if autoSnow == true then
        auto_snowbase()
    end
    if autoCandy == true and noOptions == true then
        startCollection()
    elseif autoCandy == true and waitCheck() == true then
    --print('[Waiting for] '..'['..waitCount..']'..' Candy Canes')
        if countCandy() >= waitCount then
            --print('Found Candy!')
            startCollection()
            sellCandy()
        end
    end
    
    

    if autoYetiMoney == true then
        print('enabled')
        forceReward()
    end
    if autoYeti == true then
        autoKill()
    end
    
    if doKill == true then
        killMinions()
    end
    
    
    
end