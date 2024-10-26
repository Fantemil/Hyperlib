local Player = game.Players.LocalPlayer
local ClientActor = Player.PlayerScripts:WaitForChild("frontlines_client_actor")

run_on_actor(ClientActor, [[
    local Player = game.Players.LocalPlayer

    local Globals = getrenv()._G.globals
    local cli_names = Globals.cli_names
    local soldiers_alive = Globals.soldiers_alive
    local soldiers_models = Globals.soldier_models

    local function getPlayerSolID(plr)
        assert(plr, "Player cannot be nil")
        assert(typeof(plr) == "Instance", "Player must be instance")
        assert(plr.ClassName == "Player", "Player ClassName must be player")
        local foundSoldierId = nil

        table.foreach(cli_names, function(soldierId, soldierName)
            if soldierName == plr.Name then
                foundSoldierId = soldierId
            end
        end)

        return foundSoldierId
    end

    local function isAlive(soldierId)
        assert(soldierId, "Soldier ID cannot be nil")
        assert(typeof(soldierId) == "number", "Soldier ID must be number")
        return soldiers_alive[soldierId]
    end

    local function getSoldierModel(soldierId)
        assert(soldierId, "Soldier ID cannot be nil")
        assert(typeof(soldierId) == "number", "Soldier ID must be number")
        return soldiers_models[soldierId]
    end
    
    task.spawn(function()
        while task.wait(1) do
            for soldierId, soldierModel in pairs(soldiers_models) do
                if soldierId == getPlayerSolID(Player) then continue end
                if soldierModel:FindFirstChild("Highlight") then
                    if not isAlive(soldierId) then
                        soldierModel.Highlight:Destroy()
                        continue
                    end

                    if soldierModel:FindFirstChild("friendly_marker") then
                        soldierModel.Highlight.FillColor = Color3.new(0, 0, 1)
                    else
                        soldierModel.Highlight.FillColor = Color3.new(1, 0, 0)
                    end
                    continue
                end
                if not isAlive(soldierId) then continue end

                local newHighlight = Instance.new("Highlight", soldierModel)
                if soldierModel:FindFirstChild("friendly_marker") then
                    newHighlight.FillColor = Color3.new(0, 0, 1)
                end

                print("Adding highlight to ID "..soldierId)
            end
        end
    end)
]])