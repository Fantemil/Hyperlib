_G.remove_egg_opening_animation = true

-- REMOTE BYPASS AND LUCKY BLOCK AUTOFARM
-- DM FOR SUPPORT OR HELP
-- eixotic07#2313

if not shared.Functions then
    shared.Functions = {}
end

function isHooked(Function)
    if shared.Functions[Function] then
        return true
    else
        return false
    end
end


function HookFunction(Function, NewFunction)
    if shared.Functions[Function] then
        return
    end

     for i,v in pairs(getgc(true)) do
        if (typeof(v) == 'table' and rawget(v, Function)) then
            shared.Functions[Function] = v[Function]
            hookfunction(v[Function], NewFunction)
        end
    end
end

function RestoreFunction(Function)
    if not shared.Functions[Function] then
        return
    end

    for i,v in pairs(getgc(true)) do
        if (typeof(v) == 'table' and rawget(v, Function)) then
            if shared.Functions[Function] then
                hookfunction(v[Function], shared.Functions[Function])
                shared.Functions[Function] = nil
            else
                return
            end
        end
    end
end

if game.Workspace.__THINGS:FindFirstChild("Orbs") then
    game.Workspace.__THINGS.Orbs:remove()
end

local lplr = game.Players.LocalPlayer

for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
    if v:IsA("RemoteFunction") or v:IsA("RemoteEvent") then
        v.Name = i
    end
end

local Library = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
local Ids = {}

for i, v in pairs(Library.Save.Get().Pets) do
    if Library.Shared.HasPetEquipped(v) then
        table.insert(Ids, v.uid)
    end
end

function getValue(Instance)
    if Instance:GetAttribute("Name"):find("Pink") then
        return 3
    elseif Instance:GetAttribute("Name"):find("Blue") then
        return 2
    elseif Instance:GetAttribute("Name"):find("Yellow") then
        return 1
    end
end

function FindLuckyBlock()
    for i,v in pairs(game.Workspace.__THINGS.Coins:GetChildren()) do
        if v:GetAttribute("Name"):find("Lucky Block") then
            return true
        end
    end
    return false
end

local BestValue = 0
local SaidMessage = false
local BestLuckyBlock = nil
function DestroyLuckyBlock()
    if Library.WorldCmds.Get() == "Spawn" and not SaidMessage then
        Library.Message.New("Sorry the autofarm does not work on spawn world go to another world.")
        SaidMessage = true
        return
    end

    for i, v in pairs(game.Workspace.__THINGS.Coins:GetChildren()) do
        if v:GetAttribute("Health") > 0 and v:GetAttribute("Name"):find("Lucky Block") then
            if getValue(v) > BestValue then
                BestValue = getValue(v)
                BestLuckyBlock = v
            end
        end
    end
    if BestLuckyBlock and BestLuckyBlock:FindFirstChild("POS") and BestLuckyBlock:FindFirstChild("Coin") then
        repeat wait()
            pcall(function()
                game:GetService("ReplicatedStorage")["9"]:InvokeServer(tostring(BestLuckyBlock.Name), Ids)
                for i,v in pairs(Ids) do
                    game:GetService("ReplicatedStorage")["11"]:FireServer(tostring(BestLuckyBlock.Name), v)
                end
            end)
        until not game.Workspace.__THINGS.Coins:FindFirstChild(BestLuckyBlock.Name)
        BestValue = 0
    end
end


while task.wait() do
    DestroyLuckyBlock()
end

while task.wait() do
    if _G.remove_egg_opening_animation then
        if not isHooked("OpenEgg") then
            FakeFunction = function() return end
            HookFunction("OpenEgg", FakeFunction)
        end
    else
        if isHooked("OpenEgg") then
            RestoreFunction("OpenEgg")
        end
    end
end