local Server = game:GetService("ReplicatedStorage").Remotes.Server

local areas = {}

table.foreach(game:GetService("Workspace")["_ENEMIES"]:GetChildren(), function(a,b)
    table.insert(areas, b.Name)
end)

local eggs = {} -- do sum w this

table.foreach(game:GetService("Workspace")["_EGGS"]:GetChildren(), function(a,b)
    table.insert(eggs, b.Name)
end)

local function GetMob(Area: string, Health: string): Instance
    local mob, dist, health = nil, math.huge, Health == "High" and 0 or Health == "Low" and math.huge
    table.foreach(workspace._ENEMIES[Area]:GetChildren(), function(a,b)
        if b:IsA("Model") then
            if b:FindFirstChild("_stats") then
                if b._stats:FindFirstChild("current_hp") and b._stats.current_hp.Value ~= 0 then
                    local mag = game.Players.LocalPlayer:DistanceFromCharacter(b:FindFirstChild("HumanoidRootPart").Position)
                    local _health = b._stats.current_hp.Value
                    if Health == "High" then
                        if _health > health then
                            health = _health
                            if mag < dist then
                                dist = mag
                                mob  = b
                            end
                        end
                    end
                    if Health == "Low" then
                        if _health < health then
                            health = _health
                            if mag < dist then
                                dist = mag
                                mob  = b
                            end
                        end
                    end
                    if Health == "Any" then
                        if mag < dist then
                            dist = mag
                            mob  = b
                        end
                    end
                end
            end
        end
    end)

    return mob
end

local function Attack()
    local mob = GetMob("Pyecy Village", "Any") -- "High" (goes for high health mobs) | "Low" (goes for low health mobs) | "Any" (goes for any health mobs)
    game.Players.LocalPlayer.Character:PivotTo(mob:GetPivot())
    Server:FireServer({"Hit", mob})
    print(mob._stats.current_hp.Value)
end

while task.wait() do
 pcall(Attack)
end