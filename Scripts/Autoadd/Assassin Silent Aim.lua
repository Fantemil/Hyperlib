local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Client = Players.LocalPlayer

local function GetPlayers()
    local Playerss, Characters = {}, {}
    for i,v in next, Workspace:GetChildren() do
        if table.find(Players:GetPlayers(), Players:FindFirstChild(v.Name)) then
            table.insert(Playerss, Players:FindFirstChild(v.Name))
            table.insert(Characters, v)
        end
    end
    return Playerss, Characters
end

local function GetClosestPlayer(index)
    local plr, dist = nil, math.huge
    local Players, Characters = GetPlayers()
    for i,v in next, Characters do
        if v == Client.Character then continue end
        if not v:FindFirstChild("HumanoidRootPart") then continue end
        
        local mag = (Client.Character:FindFirstChild("HumanoidRootPart").Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude
        if mag < dist then
            dist = mag
            plr  = index and v[index] or v
        end
    end
    return plr
end

local old; old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local caller = checkcaller()
    local args = {...}
    if not caller and method == "FireServer" and self.Name == "ThrowKnife" then
        if typeof(args[1]) == "Vector3" or typeof(args[1]) == "CFrame" then
            args[1] = GetClosestPlayer("HumanoidRootPart").Position
        end
    end
    return old(self, args)
end))