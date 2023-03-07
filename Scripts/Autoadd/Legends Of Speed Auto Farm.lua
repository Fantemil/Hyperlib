if getgenv().Stepped ~= nil and getgenv().WhileLoop ~= nil then
    getgenv().Stepped:Disconnect()
    getgenv().Stepped = nil
    task.cancel(getgenv().WhileLoop)
    getgenv().WhileLoop = nil
end

getgenv().Enabled = false -- // Change to "false" to disable

if getgenv().Enabled == false then
    return
end

local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local RepStorage = game:GetService("ReplicatedStorage")

local Level = Player.level
local Multiplier = Player.rebirthMultiplier

local RemoteEvents = RepStorage.rEvents
local RebirthEvent = RemoteEvents.rebirthEvent
local OrbEvent = RemoteEvents.orbEvent

local Functions = require(RepStorage.globalFunctions)

local OrbArguments = {
    {[1] = "collectOrb", [2] = "Red Orb", [3] = "City"},
    {[1] = "collectOrb", [2] = "Gem", [3] = "City"},
    {[1] = "collectOrb", [2] = "Blue Orb", [3] = "City"},
    {[1] = "collectOrb", [2] = "Yellow Orb", [3] = "City"},
    {[1] = "collectOrb", [2] = "Orange Orb", [3] = "City"}
}

getgenv().Stepped = RunService.Stepped:Connect(function()
for _, Obj in next, Workspace.Hoops:GetChildren() do
if Player.Character ~= nil then
    firetouchinterest(Player.Character.HumanoidRootPart, Obj, 0)
    task.wait()
    firetouchinterest(Player.Character.HumanoidRootPart, Obj, 1)
end
end
end)

getgenv().WhileLoop = task.spawn(function()
    while task.wait() and getgenv().Enabled == true do
        local NeededRebirths = Functions.calculateRequiredRebirthLevel(Multiplier.Value - 1)
        
        for _, Arguments in next, OrbArguments do
        OrbEvent:FireServer(table.unpack(Arguments))
        end
        
        if tonumber(NeededRebirths) == tonumber(Level.Value) then
            RebirthEvent:FireServer("rebirthRequest")
        end
    end
end)