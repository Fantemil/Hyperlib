local Player = game.Players.LocalPlayer
local Character = Player.Character
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local ReplicatedStorage = game:GetService("ReplicatedStorage")


Player.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Configuration = {
    Speed = 0.001
}

getgenv().Configuration = Configuration


local function TweenPlayer(cframe)
    local Tween = TweenService:Create(HumanoidRootPart, TweenInfo.new((cframe.Position - HumanoidRootPart.Position).Magnitude * getgenv().Configuration.Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = cframe})
    Tween:Play()
    HumanoidRootPart.Anchored = true
    Tween.Completed:Wait()
    HumanoidRootPart.Anchored = false
end

local function SendMessage(message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    local ChatModule = require(game.Players.LocalPlayer.PlayerScripts.ChatScript.ChatMain)
    ChatModule.MessagePosted:fire(message);
end

local function Start()
    TweenPlayer(CFrame.new(974.50439453125, -139.62503051757812, 273.3216552734375))

    if ReplicatedStorage.Scenes.Interiors:FindFirstChild("Key Resource Employment Office") then
        ReplicatedStorage.Scenes.Interiors:FindFirstChild("Key Resource Employment Office").Parent = workspace.Interiors
    end
    wait(1)

    local Arguments1 = {
        [1] = "GiveGui"
        }

    game:GetService("ReplicatedStorage").Events.JobService:FireServer(unpack(Arguments1))
    
    wait(1)

    local Arguments2 = {
         [1] = "Apply",
         [2] = {
        ["job_radius"] = 60,
        ["CanWork"] = true,
        ["indoor_job_point"] = workspace.JobPoints.Litfits,
        ["Workers"] = {},
        ["ID"] = "LitFits",
        ["job_point"] = workspace.JobPoints.LitfitsInterior,
        ["MaxPositions"] = 3,
        ["Data"] = {
            ["HourReqirement"] = 0,
            ["EndTime"] = "22:00:00",
            ["Shiftless"] = false,
            ["JobDesc"] = "Sell clothes to customers. Very simple.",
            ["JobTitle"] = "LitFits Clerk",
            ["RequiredConstantWork"] = true,
            ["UniformShirt"] = 198707189,
            ["UniformPants"] = 3127805122,
            ["Commission"] = 0,
            ["StartTime"] = "08:00:00",
            ["BasePay"] = 200,
            ["JobRules"] = "Make sure customers do not shoplift, and check them out when purchasing clothing. Help the customer find the right size if needed."
        }
      }
    }

    game:GetService("ReplicatedStorage").Events.JobService:FireServer(unpack(Arguments2))

    wait(1)

    TweenPlayer(CFrame.new(1999.5096435546875, -244.62509155273438, 24.730424880981445))

    if ReplicatedStorage.Scenes.Interiors:FindFirstChild("Lit Fits") then
        ReplicatedStorage.Scenes.Interiors:FindFirstChild("Lit Fits").Parent = workspace.Interiors
    end
end

Start()

local function Check()
    if game:GetService("Lighting").ClockTime == 22 then
        Start()
    end
end

game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(Check)

for _, child in pairs(game.Players:GetChildren()) do
    child.Chatted:Connect(function(msg)
        if string.find(msg, "/payservice") then
            SendMessage("/finishservice")
        end
    end)
end

game.Players.ChildAdded:Connect(function(child)
    child.Chatted:Connect(function(msg)
        if string.find(msg, "/payservice") then
            SendMessage("/finishservice")
        end
    end)
end)