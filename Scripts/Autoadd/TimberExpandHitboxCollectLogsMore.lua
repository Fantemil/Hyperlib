local player = game:GetService("Players").LocalPlayer
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

function find()
    for i , v in pairs(workspace.Plots:GetChildren()) do 
        if v:FindFirstChild("Owner") and v.Owner.Value == player then 
            return v 
        end 
    end
end
local plot = find()

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "ChaosHub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

GUI:Notification{
 Title = "Game Detected",
 Text = "Timber",
 Duration = 3,
 Callback = function() end
}

GUI:Notification{
 Title = "Discord",
 Text = "Make Sure To Join The Discord Server! :D",
 Duration = 3,
 Callback = function() end
}

GUI:Credit{
 Name = "Chaotic_Void",
 Description = "Hub Owner",
}

local Tab = GUI:Tab{
 Name = "Main",
 Icon = "rbxthumb://type=Asset&id=3517717568&w=150&h=150"
}

Tab:Button{
 Name = "Expand HitBox",
 Description = nil,
 Callback = function() 
    box()
    end
}

Tab:Button{
 Name = "Sell",
 Description = nil,
 Callback = function() 
        plr.CFrame = plot["0_0"].Sell.CFrame
    end
}

Tab:Button{
 Name = "Collect Logs",
 Description = nil,
 Callback = function() 
        plr.CFrame = plot["0_-2"].Claim.CFrame
    end
}

Tab:Toggle{
 Name = "Upgrade AxeStrength",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().a = state
        if state then
            axe()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade Speed",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().b = state
        if state then
            Speed()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade TreeGrowth",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().c = state
        if state then
            Tree()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade GoldenChance",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().d = state
        if state then
            gold()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade Workers",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().Workers = state
        if state then
            Workers()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade WorkersSpeed",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().WSpeed = state
        if state then
            WSpeed()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade Max Log(workers)",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().WLogs = state
        if state then
            WLogs()
        end
    end
}

Tab:Toggle{
 Name = "Upgrade HutCapacity(workers)",
 StartingState = false,
 Description = nil,
 Callback = function(state) 
        getgenv().WHutCapacity = state
        if state then
            WHutCapacity()
        end
    end
}


local Tab = GUI:Tab{
 Name = "Teleports",
 Icon = "rbxthumb://type=Asset&id=8797391505&w=150&h=150"
}

Tab:Button{
 Name = "Middle Island",
 Description = nil,
 Callback = function() 
    plr.CFrame = CFrame.new(-32.10877227783203, 7.29974365234375, 141.3975830078125)
    end
}

Tab:Button{
 Name = "Volcano",
 Description = nil,
 Callback = function() 
    plr.CFrame = CFrame.new(-145.10562133789062, 13.972052574157715, 1491.6981201171875)
    end
}

Tab:Button{
 Name = "Pirate",
 Description = nil,
 Callback = function() 
    plr.CFrame = CFrame.new(-502.763916015625, 9.554851531982422, -1113.6663818359375)
    end
}

Tab:Button{
 Name = "Temple",
 Description = nil,
 Callback = function() 
    plr.CFrame = CFrame.new(1349.2047119140625, 58.051109313964844, 1031.7491455078125)
    end
}

local Tab = GUI:Tab{
 Name = "Misc",
 Icon = "rbxthumb://type=Asset&id=3331928717&w=150&h=150"
}

Tab:Slider{
 Name = "Walk Speed",
 Default = 50,
 Min = 0,
 Max = 200,
 Callback = function(speed) 
        pcall(function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end)
    end
}

Tab:Slider{
 Name = "Jump Power",
 Default = 50,
 Min = 0,
 Max = 200,
 Callback = function(jump) 
        pcall(function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jump
        end)
    end
}

Tab:Slider{
 Name = "Gravity",
 Default = 50,
 Min = 0,
 Max = 200,
 Callback = function(text) 
            workspace.Gravity = text
    end
}

Tab:Button{
 Name = "Inf Jump",
 Description = nil,
 Callback = function() 
    local infjump = true
    game:GetService("UserInputService").JumpRequest:connect(function()
    if infjump then
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
   end
end)
end
}

local Tab = GUI:Tab{
 Name = "Discord",
 Icon = "rbxthumb://type=Asset&id=9334666836&w=150&h=150"
}

Tab:Button{
 Name = "Copy Discord Server Invite",
 Description = nil,
 Callback = function()
        GUI:Notification{
            Title = "Discord",
            Text = "Discord Invite Has Been Copied!",
            Duration = 3,
            Callback = function() end
        }
        setclipboard("https://discord.gg/wk7Wer9rGk")
    end
}

function axe()
while getgenv().a == true do
local ohString1 = "AxeStrength"
game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
wait()
end
end

function Speed()
    while getgenv().b == true do
    local ohString1 = "Speed"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function Tree()
    while getgenv().c == true do
    local ohString1 = "TreeGrowth"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function gold()
    while getgenv().d == true do
    local ohString1 = "GoldenChance"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function Workers()
    while getgenv().Workers == true do
    local ohString1 = "WCount"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function WStrength()
    while getgenv().WStrength == true do
    local ohString1 = "WStrength"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function WSpeed()
    while getgenv().WSpeed == true do
    local ohString1 = "WSpeed"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function WLogs()
    while getgenv().WLogs == true do
    local ohString1 = "WLogs"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function WHutCapacity()
    while getgenv().WHutCapacity == true do
    local ohString1 = "WHutCapacity"
    game:GetService("ReplicatedStorage").Communication.Upgrade:FireServer(ohString1)
    wait()
    end
end

function box()
for i ,v in pairs(game:GetService("Workspace").TreeIslands:GetDescendants()) do
    if v.Name == "Hitbox" then
        v.Transparency = 0.5
        v.Size = Vector3.new(10,10,10)
    end
end

for i ,v in pairs(plot:GetDescendants()) do
    if v.Name == "Hitbox" then
        v.Size = Vector3.new(10,10,10)
    end
end

for i ,v in pairs(plot.Workers:GetDescendants()) do
    if v.Name == "Hitbox" then
        v.Size = Vector3.new(6,6,6)
    end
end

for i ,v in pairs(game:GetService("Workspace")[player.Name]:GetDescendants()) do
    if v.Name == "Hitbox" then
        v.Size = Vector3.new(6,6,6)
    end
end

while wait(5) do
for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
    if v:FindFirstChildOfClass("MeshPart") and v:FindFirstChild("Base") then
        v.Base.Transparency = 0.1
        v.Base.CanCollide = false
        v.Base.Size = Vector3.new(20, 20, 20)
    end
end
end
end