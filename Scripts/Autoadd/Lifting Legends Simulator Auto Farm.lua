local XLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/snipcola/roblox-scripts/main/xlib-min.lua', true))()

local ReplicatedStorage = game:GetService('ReplicatedStorage')
local UserInputService = game:GetService('UserInputService')

local VirtualUser = game:GetService('VirtualUser')
local Camera = workspace.CurrentCamera

local Events = ReplicatedStorage:WaitForChild('Events')
local Functions = ReplicatedStorage:WaitForChild('Functions')

local Players = game:GetService('Players')
local Player = Players.LocalPlayer

local PlayerData = Player:WaitForChild('PlayerData')

local WeightFolder = PlayerData:WaitForChild('WeightFolder')
local Weights = WeightFolder:WaitForChild('Owned')

local DNAFolder = PlayerData:WaitForChild('DNAFolder')
local DNA = DNAFolder:WaitForChild('Owned')

local RankFolder = PlayerData:WaitForChild('RankFolder')
local Ranks = RankFolder:WaitForChild('Owned')

local InputBegan
local ScriptActive

local CreateNotification
local GetRemote
local ExecuteRemote
local ExecuteModules
local InputBeganConnection
local DestroyConnections
local CreateConnections
local IterateScript
local EnableScript
local DisableScript
local KillScript
local ToggleScript

local Config
local Modules
local RemoteEvents
local RemoteFunctions

Config = {
    Delay = 1,
    EnabledModules = {
        'Sell',
        'Lift',
        'BuyWeights',
        'BuyDNA',
        'BuyRanks'
    }
}

Modules = {
    Lift = function()
        ExecuteRemote(Functions, RemoteFunctions.Lift)
    end,
    Sell = function()
        ExecuteRemote(Events, RemoteEvents.Sell)
    end,
    BuyWeights = function()
        for _, Weight in pairs(Weights:GetChildren()) do
            if not Weight.Value then
                ExecuteRemote(Functions, RemoteFunctions.Shop, { 'Weights', Weight.Name, 'Buy' })
            end
        end
    end,
    BuyDNA = function()
        for _, DNA2 in pairs(DNA:GetChildren()) do
            if not DNA2.Value then
                ExecuteRemote(Functions, RemoteFunctions.Shop, { 'DNA', DNA2.Name, 'Buy' })
            end
        end
    end,
    BuyRanks = function()
        for _, Rank in pairs(Ranks:GetChildren()) do
            if not Rank.Value then
                ExecuteRemote(Functions, RemoteFunctions.Shop, { 'Ranks', Rank.Name, 'Buy' })
            end
        end
    end
}

RemoteEvents = {
    Sell = 'Sell'
}

RemoteFunctions = {
    Lift = 'LiftWeight',
    Shop = 'ShopFetching'
}

CreateNotification = function(Title, Description, Duration)
    XLib.CreateNotification({
        Title = Title or '',
        Description = Description or '',
        RemoveIn = Duration or 5
    })
end

GetRemote = function(Type, Remote)
    return Type:FindFirstChild(Remote) or false
end

ExecuteRemote = function(Type, Remote, Arguments)
    local Remote2 = GetRemote(Type, Remote)
    
    if Remote2 then
        if tostring(Type) == 'Events' then
            Remote2:FireServer(table.unpack(Arguments or {}))
        else
            Remote2:InvokeServer(table.unpack(Arguments or {}))
        end
    end
end

ExecuteModules = function()
    for Name, Module in pairs(Modules) do
        if table.find(Config.EnabledModules, Name) then
            coroutine.wrap(Module)()
        end
    end
end

InputBeganConnection = function(Input, OnGui)
    if Input.UserInputType == Enum.UserInputType.Keyboard and not OnGui then
        if Input.KeyCode == Enum.KeyCode.N then
            ToggleScript()
        elseif Input.KeyCode == Enum.KeyCode.X then
            KillScript()
        end
    end
end

DestroyConnections = function()
    if InputBegan then
        InputBegan:Disconnect()
        InputBegan = nil
    end
end

CreateConnections = function()
    if not InputBegan then
        InputBegan = UserInputService.InputBegan:Connect(InputBeganConnection)
    end
end

IterateScript = function()
    while task.wait(Config.Delay) and ScriptActive do
        pcall(ExecuteModules)
    end
end

EnableScript = function()
    if ScriptActive then
        ScriptActive = false
        
        task.wait(Config.Delay)
    end
    
    CreateNotification('Script Status', 'The script is now enabled.', 1)
    
    ScriptActive = true
    
    CreateConnections()
    IterateScript()
end

DisableScript = function()
    CreateNotification('Script Status', 'The script is now disabled.', 1)
    
    ScriptActive = false
end

KillScript = function()
    CreateNotification('Script Status', 'The script has been killed.', 1)
    
    ScriptActive = false
    DestroyConnections()
end

ToggleScript = function()
    if ScriptActive then
        DisableScript()
    else
        EnableScript()
    end
end

Player.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), Camera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), Camera.CFrame)
end)

EnableScript()