if _G.SENDER_CONNECTIONS then
    for _, Connection in pairs(_G.SENDER_CONNECTIONS) do
        Connection:Disconnect()
    end
end
_G.SENDER_CONNECTIONS = {}

_G.SENDER_DEBUG = false -- set this to true if you want to debug the script (also setting to true stop bot from saying anything)
_G.SENDER_ACTIVE = true -- set this to false to stop the bot from saying anything
_G.SENDER_STARTERS = {
    "I think its gonna be",
    "I predict its",
    "The next one is",
    "Next is",
    "Simon says:",
    "Its gonna be",
    "Next one is",
    "Next will be",
    "The next thing is",
    "The answer is",
    "The spin is",
}

local ReplicatedStorage = game:GetService('ReplicatedStorage')
local SayMessageRequest = ReplicatedStorage:WaitForChild('DefaultChatSystemChatEvents'):WaitForChild('SayMessageRequest')
local function SayMessage(Message)
    if _G.SENDER_DEBUG then
        print('Say', Message)
    else
        SayMessageRequest:FireServer(Message, 'All')
    end
end

local function GetSpinFromName(Name)
    local Spin
    for _,v in pairs(workspace:WaitForChild('Spinner'):WaitForChild('Spin'):WaitForChild('Model2'):GetChildren()) do
        if tonumber(v.Name) == Name then
            Spin = v.SurfaceGui.TextLabel.Text
        end
    end

    return Spin
end

local ScreenSpin = ReplicatedStorage:WaitForChild('Remotes'):WaitForChild('ScreenSpin')
table.insert(_G.SENDER_CONNECTIONS, ScreenSpin.Event:Connect(function(Type, Name, Timeout)
    local Spin = GetSpinFromName(Name)
    if Spin and _G.SENDER_ACTIVE then
        local Starter = _G.SENDER_STARTERS[math.random(1, #_G.SENDER_STARTERS)] .. ' ' .. Spin
        if math.random(1, 3) == 1 then Starter = Starter .. ', trust' end
        if math.random(1, 2) == 1 then Starter = Starter:lower() end

        task.wait((((math.random() + 1) / 2) * Timeout) / 10)
        SayMessage(Starter)
    end
end))