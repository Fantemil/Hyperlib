if game.PlaceId ~= 9733390246 then
    return
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Rain-Design/Libraries/main/Revenant.lua",
    true))()

local stairs = game:GetService("Workspace"):WaitForChild("Stairs")
local player = game:GetService("Workspace"):WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")

local virtualUser = game:GetService("VirtualUser")
virtualUser:CaptureController()

local uis = game:GetService("UserInputService")

local legit = false
local blatant = false
local delay = 0.125

-- You can change these in the menu
local keybinds = {Enum.KeyCode.Z, Enum.KeyCode.X, Enum.KeyCode.N, Enum.KeyCode.M}

getgenv().gamemode = 0
local jump_stair = function()
    if getgenv().gamemode == 1 then
        for _, v in pairs(stairs:GetChildren()) do
            if v.Size.z == 6 and v.Position.z == math.floor(player.Position.z) - 6 then
                if v.Position.y < player.Position.y then
                    virtualUser:SetKeyDown('0x64')
                    virtualUser:SetKeyUp('0x64')
                    break
                else
                    virtualUser:SetKeyDown('0x61')
                    virtualUser:SetKeyUp('0x61')
                    break
                end
            end
        end
    else
        for _, v in pairs(stairs:GetChildren()) do
            if v.Size.z == 6 and v.Position.y == math.floor(player.Position.y) + 5 then
                if v.Position.z < player.Position.z then
                    virtualUser:SetKeyDown('0x64')
                    virtualUser:SetKeyUp('0x64')
                    break
                else
                    virtualUser:SetKeyDown('0x61')
                    virtualUser:SetKeyUp('0x61')
                    break
                end
            end
        end
    end
end

local already_auto = false

local auto_play = function()
    already_auto = true
    while wait(delay) and blatant do
        if #(stairs:GetChildren()) == 0 then
            stairs:WaitForChild("Stair", 1000)
        end
        jump_stair()
    end
    already_auto = false
end

local gamemode_detector = coroutine.wrap(function()
    while wait() do
        stairs:WaitForChild("Stair", 1000)
        local below = 0
        for _, v in pairs(stairs:GetChildren()) do
            if v.Position.y < player.Position.y then
                below = below + 1
            end
        end
        if below > 0 then
            getgenv().gamemode = 1
        else
            getgenv().gamemode = 0
        end
        while #(stairs:GetChildren()) > 0 do
            stairs.ChildRemoved:Wait()
        end
    end
end)
gamemode_detector()

local Window = Library:Window({
    Text = "Stair Tappers"
})

Window:Toggle({
    Text = "Legit Hack",
    Callback = function(bool)
        if bool then
            Library:Notification({
                Text = "Check your keybinds in the second window.",
                Duration = 5
            })
        end
        legit = bool
    end
})

Window:Toggle({
    Text = "Auto Play",
    Callback = function(bool)
        blatant = bool
        if bool and not already_auto then
            Library:Notification({
                Text = "Try tuning the delay too see what works fastest for you.",
                Duration = 5
            })
            auto_play()
        end
    end
})

Window:Slider({
    Text = "Delay (ms)",
    Default = 125,
    Minimum = 1,
    Maximum = 250,
    Callback = function(value)
        delay = value / 1000
    end
})

Window:Label({
    Text = "60ms recommended.",
    Color = Color3.fromRGB(0, 255, 0)
})

Window:Keybind({
    Text = "Toggle Window",
    Default = Enum.KeyCode.F4,
    Callback = function()
        Library:Toggle()
    end
})

local Window2 = Library:Window({
    Text = "Keybinds (Legit Hack)"
})

Window2:Keybind({
    Text = "Keybind 1",
    Default = keybinds[1],
    Callback = function()
        if legit then
            jump_stair()
        end
    end
})

Window2:Keybind({
    Text = "Keybind 2",
    Default = keybinds[2],
    Callback = function()
        if legit then
            jump_stair()
        end
    end
})

Window2:Keybind({
    Text = "Keybind 3",
    Default = keybinds[3],
    Callback = function()
        if legit then
            jump_stair()
        end
    end
})

Window2:Keybind({
    Text = "Keybind 4",
    Default = keybinds[4],
    Callback = function()
        if legit then
            jump_stair()
        end
    end
})

Window2:Label({
    Text = "Does not override defaults.",
    Color = Color3.fromRGB(255, 0, 0)
})