local Players = game:GetService("Players")
local player = Players.LocalPlayer
local virtualUser = game:GetService("VirtualUser")

print("Slots Hub anti afk")

local function preventAFK()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end

local isCoroutineRunning = false

local function startPreventAFKCoroutine()
    if isCoroutineRunning then return end
    isCoroutineRunning = true
    coroutine.wrap(function()
        while true do
            wait(60)
            preventAFK()
        end
    end)()
end

player.Idled:Connect(function()
    preventAFK()
    startPreventAFKCoroutine()
end)

startPreventAFKCoroutine()
