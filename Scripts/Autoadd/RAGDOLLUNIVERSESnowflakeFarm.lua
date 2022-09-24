local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")

getgenv().SnowflakeFarm = true
getgenv().SnowflakeFarmDistance = 30

local function GetKey()
    for _, Func in next, getgc() do
        local FEnv = getfenv(Func)
        if FEnv.script and FEnv.script.Name == utf8.char(71,97,114,98,97,103,101,8203,67,111,100,101) then
            local UpValues = getupvalues(Func)
            if UpValues[1] then
                if type(UpValues[1]) == "string" then
                    return UpValues[1]
                end
            end
        end
    end
end

local Wait = 0
local Key = GetKey()
RunService.Heartbeat:Connect(function(Delta)
    Wait = Wait + Delta
    if Wait >= 5 then
        if CandyFarm then
            Key = GetKey()
        end
        Wait = 0
    end
end)

RunService.RenderStepped:Connect(function()
    local LocalPlayer = PlayerService.LocalPlayer
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character:FindFirstChild("Torso")

    if Character and HumanoidRootPart and SnowflakeFarm and Key then
        for _, Snowflake in pairs(game:GetService("Workspace").Drops:GetChildren()) do
            if Snowflake.Name == "Snowflake" then
                local Distance = (HumanoidRootPart.Position - Snowflake.Position).Magnitude
                if Distance <= SnowflakeFarmDistance then
                    --print(Distance)
                    game:GetService("ReplicatedStorage").MainRemote:FireServer(Key .. "ac", "us", Snowflake)
                end
            end
        end
    end
end)