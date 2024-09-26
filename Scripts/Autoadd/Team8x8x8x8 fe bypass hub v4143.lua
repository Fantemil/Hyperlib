local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("team8x8x8x8 fe bypass hub v4", "DarkTheme")
local Tab = Window:NewTab("fe bypass scripts")
local Section = Tab:NewSection("fe bypass scripts")
Section:NewButton("fly gui", "this is a fly script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/luascriptsROBLOX/XeraFly/main/obf_T7i386U4GX5o5F972ArK1UT1cOx4C15fUwXS70d4M4878JzOy8v6dF4Lv8bmTE8B.lua.txt"))()
end)
Section:NewButton("c00lgui fe v2", "this is c00lgui fe v2", function()
loadstring(game:GetObjects("rbxassetid://9827584846")[1].Source)()
end)
Section:NewButton("1x1x1x1 gui v2 fe", "this is a 1x1x1x1 gui fe v2", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)
Section:NewButton("1x1x1x1 gui fe v2.1", "1x1x1x1 gui fe v2.1", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/8aCcmYAx'))()
end)
Section:NewButton("fe fling gui", "this is a fling gui", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0'))()
end)
Section:NewButton("chat glitch", "this makes the chat glitch", function()    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ÃÆÃâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹Ãâ¹ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ", "All")
end)
Section:NewButton("loop tp", "this makes you tp in the map", function()
    local isLooping = false  -- Variable to track the loop state
local targetPlayerName = ""

local function teleportToPlayerHead()
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
        local targetPosition = targetPlayer.Character.Head.Position
        local player = game.Players.LocalPlayer
        player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    end
end

local function startLoop()
    isLooping = true
    submitButton.Text = "Stop Loop Teleport"
    while isLooping do
        teleportToPlayerHead()
        wait(0.1)
    end
end

local function stopLoop()
    isLooping = false
    submitButton.Text = "Start Loop Teleport"
end

submitButton.MouseButton1Click:Connect(function()
    if isLooping then
        stopLoop()
    else
        targetPlayerName = userInput.Text
        startLoop()
    end
end)
Section:NewButton("chat spam", "this will chat spam in the chat", function()
    local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(1, 0, 0, 30)
button2.Position = UDim2.new(0, 0, 0, 60)
button2.Text = "Start 1x1x1x1 Loop"
button2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
button2.TextColor3 = Color3.fromRGB(255, 0, 0)
button2.Parent = frame

local loopRunning = false -- Variable to track if the loop is running

local function loopFunction()
    while loopRunning do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("1X1X1X1: IM BACK!!", "All")
        wait(3)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8: team8x8x8x8: YOU WILL NOT LIVE THROUGH MY DEADLY ATTACKS!!", "All")
        wait(3) 
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8: THOSE BOTS WILL DESTROY YOU ALL!!", "All")
        wait(3)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8: I MIGHT AS WELL TURN YOU INTO BOTS!!", "All")
        wait(3)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8: NOBODY CAN'T STOP ME HAHAHAHA!!", "All")
        wait(3)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x8: I WILL REVENGE ON ROBLOX !!", "All")
        wait(3)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("team8x8x8x81: THOSE MODERATOR CAN'T BAN ME!!", "All")
        wait(3)
    end
end

local loopThread -- To store the loop thread

button2.MouseButton1Click:Connect(function()
    if not loopRunning then
        loopRunning = true -- Start the loop
        loopThread = coroutine.create(loopFunction)
        coroutine.resume(loopThread) -- Start the loop in a new coroutine
    else
        loopRunning = false -- Stop the loop
        if loopThread then
            coroutine.resume(loopThread) -- Resume the loop coroutine to allow it to finish
            loopThread = nil
        end
        button2.Text = "Start team8x8x8x8 Loop"
    end
end)

end)
Section:NewButton("fake data leak", "this is a fake data leak", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/EeWZTw8j'))()
end)