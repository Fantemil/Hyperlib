local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Skibid Hook Sigma",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

getgenv().settings = {
    minFPS = 0,
    maxFPS = 3500,
    interval = 1000
}

local firing = false
local backupScript = nil

local function destroyCounter()
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local counter = playerGui:FindFirstChild("fps_counter") and playerGui.fps_counter:FindFirstChild("counter_main")
    if counter then
        backupScript = counter:Clone()
        counter:Destroy()
    end
end

local function restoreCounter()
    if backupScript then
        backupScript.Parent = game.Players.LocalPlayer.PlayerGui.fps_counter
        backupScript = nil
    end
end

local function startFiring()
    spawn(function()
        while firing do
            game.ReplicatedStorage:WaitForChild("UpdateFPS"):FireServer(math.random(settings.minFPS, settings.maxFPS))
            task.wait(settings.interval / 1000)
        end
    end)
end

Tab:AddToggle({
    Name = "Change Fps",
    Default = false,
    Callback = function(state)
        firing = state
        if firing then
            destroyCounter()
            startFiring()
        else
            restoreCounter()
        end
    end
})

Tab:AddSlider({
    Name = "Min FPS",
    Min = 0,
    Max = 5000,
    Default = 0,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Min FPS",
    Callback = function(value)
        settings.minFPS = value
    end
})

Tab:AddSlider({
    Name = "Max FPS",
    Min = 0,
    Max = 5000,
    Default = 5000,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Max FPS",
    Callback = function(value)
        settings.maxFPS = value
    end
})

Tab:AddSlider({
    Name = "Update Interval",
    Min = 0,
    Max = 1000,
    Default = 200,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "ms",
    Callback = function(value)
        settings.interval = value
    end
})

OrionLib:Init()