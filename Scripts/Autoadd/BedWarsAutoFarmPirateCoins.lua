repeat wait() until game:IsLoaded() and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) and game.Players.LocalPlayer:FindFirstChild("PlayerScripts") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

local lplr = game.Players.LocalPlayer
local servRun = game:GetService('RunService')

local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local KnitClient = debug.getupvalue(require(game.Players.LocalPlayer.PlayerScripts.TS.knit).setup, 6)

local ptc = KnitClient.Controllers.PirateTreasureController
local ClientStore = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore:getState()
local matchState = ClientStore.Game.matchState
local queueType = ClientStore.Game.queueType

function openChest(p1)
    return Client:Get("OpenChest"):CallServer({
  secret = p1:GetAttribute("Secret")
 });
end

function doprint(text)
    if syn or iskrnlclosure then
     rconsolename("bedwars pirate event autofarm")
     rconsoleprint(text)
    else
     print(text)
    end 
end

doprint('@@WHITE@@')
doprint("Clearing console")
wait(1)
rconsoleclear()

setclipboard("eixotic07#2313")
    
doprint('@@WHITE@@')
doprint('made by eixotic07#2313 Discord Copied to Clipboard' .. "\n")

spawn(function()
    while wait(1) do
        matchState = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore:getState().Game.matchState
        queueType = ClientStore.Game.queueType
    end
end)



local disabled = false
local treasureGotten = false
local treasureSpawned = false
local treasure
local chestGotten = false
local chestGreen = false

while true do wait()
    Client:WaitFor("DestroyTreasureChest"):andThen(function(p1)
        p1:Connect(function(p2)
            if p2.secret then
                treasureGotten = true
            end
        end)
    end)
    if (matchState == 0) and lplr.Character:FindFirstChild("Humanoid") and disabled == false and game.PlaceId ~= 6872265039 then
        lplr.Character.Humanoid:ChangeState("Dead")
        doprint('@@GREEN@@')
        doprint("Disabler success" .. "\n")
        disabled = true
    end
    if (matchState == 1) and disabled == false and lplr.Character:FindFirstChild("Humanoid") then
        doprint('@@RED@@')
        doprint("Disabler failed / playing again" .. "\n")
        wait(1)
        game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue:FireServer({["queueType"] = queueType})
    end
    if (matchState == 1) and disabled == true and lplr.Character:GetAttribute("Health") == 0 then
        doprint('@@RED@@')
        doprint("Disabler failed / playing again" .. "\n")
        wait(1)
        game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue:FireServer({["queueType"] = queueType})
    end
    if (matchState == 1) and disabled == true then
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "PirateTreasure" and not chestGreen then
                doprint('@@GREEN@@')
                doprint("chest spawned teleporting to it" .. "\n")
                chestGreen = true
                treasure = v
            end
        end
        if chestGreen == true and treasure ~= nil and treasure:FindFirstChild("Main") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = treasure.Main.CFrame
            openChest(treasure)
        end
    end
    if treasureGotten == true then
        doprint('@@RED@@')
        doprint("chest has been gotten, playing again" .. "\n")
        wait(1)
        game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue:FireServer({["queueType"] = queueType})
    end
end