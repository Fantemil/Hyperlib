--// Exploit Check \\--
if #{hookmetamethod, getnamecallmethod} ~= 2 then
    game:Shutdown()
    return
end

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// Services \\--
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local Inventory = Player:WaitForChild("Inventory")
local BlockFolder = ReplicatedStorage:WaitForChild("Blocks")
local Blocks = {}

--// Get Blocks \\--
for _, A_1 in next, BlockFolder:GetChildren() do
    table.insert(Blocks, (function()
        local Fake = Instance.new("NumberValue")
        Fake.Name = A_1.Name
        Fake.Value = 1
        return Fake
    end)())
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Creative by Ezpi#0474")
Window:AddLabel({
    text = "discord.gg/nxHQEk2kEt"
})
Window:AddToggle({
    text = "Inf. Blocks",
    flag = "Inf"
})
Window:AddToggle({
    text = "All Blocks",
    callback = function(A_1)
        if A_1 == true then
            table.foreach(Blocks, function(A_1, A_2)
                A_2.Parent = Inventory
            end)
        else
            table.foreach(Blocks, function(A_1, A_2)
                A_2.Parent = nil
            end)
        end
    end
})
Library:Init()

--// Block Spoof \\--
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    -- Variables
    local Args = {...}
    local Info = Args[2]
    local NamecallMethod = getnamecallmethod()

    -- Fake
    if NamecallMethod == "FireServer" and Self.Name == "PlaceBlockE" and typeof(Info) == "table" and (Info[3].ClassName == "NumberValue" or Library.flags.Inf) then
        Info[3] = {Name=Info[1];Value=1}
    end
    return OldNameCall(Self, unpack(Args))
end)