local eggs = game:GetService("Workspace").EggHuntMinigame.Eggs
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.HumanoidRootPart
local timer =  plr.PlayerGui.EasterEventOriginal.InGameOverhead.Timer
local Counter = plr.PlayerGui.EasterEventOriginal.InGameOverhead.Counter
local nest = game:GetService("Workspace").EggHuntMinigame:WaitForChild("NestClickbox")
local button = plr.PlayerGui.ProximityPrompts

getgenv().eggFarm = true --true/on false/off

local function getCounter()
    for i,v in pairs(string.split(Counter.Text,"/5","")) do
        if tonumber(v) then
            return tonumber(v)
        end
    end 
end

local function folderCount(folder)
    local children = folder:GetChildren()
    local count = #children

    return count
end
local function press(path)
    for i,v in pairs(path:GetDescendants()) do
        if v:IsA("TextButton") then
            for k,w in next,getconnections(v.MouseButton1Click) do
                    wait()
                    w.Function()
            end
        end
    end
end

--Egg Farm
local function eggFarm()
    if getCounter() < 5 and folderCount(eggs) ~= 0 then
        for i,egg in pairs(eggs:GetChildren()) do 
    	    hum.CFrame = egg.CFrame
            fireclickdetector(egg:WaitForChild("ClickDetector"))
        end
    else
        hum.CFrame = nest.CFrame
        fireproximityprompt(nest.ProximityPrompt)
    end
    if folderCount(eggs) == 0 then
		local spawn = game:GetService("Workspace").EggHuntMinigame.SpawnPositions
        for i,v in pairs(spawn:GetChildren()) do
            hum.CFrame = v.CFrame
            
wait(1)
            if folderCount(eggs) > 0 or timer.Time.Text == "GAME OVER" then
                break
            end
        end
    end
end


--Intro skip
local Event = plr.PlayerGui.EasterEventOriginal
local eButton =Event.IntroText

local function skipIntro()
    if eButton.Visible == true then
        for i=1,5 do
            press(eButton)
            wait(0.1)
        end
    end
end



while getgenv().eggFarm do
    wait()
    if timer.Time.Text == "GAME OVER" then
        skipIntro()
    else
        eggFarm()
    end
end

