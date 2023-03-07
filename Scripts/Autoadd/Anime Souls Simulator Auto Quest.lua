_G.mendoptMeEnabled = true
    local playerService = require(game.Players.LocalPlayer.PlayerGui.Init.Client.Services)
    local islandsData = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules").Data.Islands)
    local questData = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules").Data.Quests)
    local enemiesData = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules").Data.Enemies)
    local function callHit(mob)
       return game:GetService("ReplicatedStorage").Remotes.Server:FireServer({"Hit", mob})
    end
    local function buyHero(location)
       return game:GetService("ReplicatedStorage").Remotes.Server:FireServer({"BuyHeroes", location})
    end
    local function getQuest()
       if playerService.PlayerData.Quest.killed then
           return {enemyName = questData[islandsData[playerService.PlayerData.Quest.island].name][playerService.PlayerData.Quest.quest].enemy, islandName = islandsData[playerService.PlayerData.Quest.island].name}
       end
    end
    -- Auto Quest ( Needs to load the world first )
    local doingQuest = false
    while _G.mendoptMeEnabled do
        if not doingQuest then
            doingQuest = true
            for i,v in pairs(workspace:FindFirstChild("_ENEMIES"):FindFirstChild(getQuest().islandName):GetChildren()) do
                if v.Name == getQuest().enemyName and v:FindFirstChild("_stats").current_hp.Value > 0 then
                    repeat wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame
                        wait()
                        callHit(v)
                    until v:FindFirstChild("_stats").current_hp.Value <= 0
                    if playerService.PlayerData.Quest.killed >= playerService.PlayerData.Quest.goal then
                        game:GetService("ReplicatedStorage").Remotes.Server:FireServer({"Quest"})
                    end
                    break
                end
            end
            doingQuest = false
        end
    end