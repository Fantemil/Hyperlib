wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by luca#5432"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried kicking you buy I didnt let them!"wait(2)ab.Text="Status : Active"end)



autoFarm = true
ROUNDS = 0

moneySinceExecution = Instance.new("IntValue")
moneySinceExecution.Parent = game:GetService("CoreGui")
moneySinceExecution.Value = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.GoldGui.Frame.Amount.Text)
moneySinceExecution.Name = "moneySinceRun"

currentMoney = Instance.new("IntValue")
currentMoney.Parent = game:GetService("CoreGui")
currentMoney.Name = "currentMoney"
currentMoney.Value = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.GoldGui.Frame.Amount.Text)
task.spawn(function()
    while autoFarm == true and task.wait() do
        pcall(function()
            currentMoney.Value = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.GoldGui.Frame.Amount.Text)
        end)
    end
end)

money_made = Instance.new("IntValue")
money_made.Parent = game:GetService("CoreGui")
money_made.Value = 0
money_made.Name = "Moneh Made"
task.spawn(function()
    while autoFarm == true and task.wait() do
        pcall(function()
            money_made.Value = (currentMoney.Value - moneySinceExecution.Value)
        end)
    end
end)



-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local rounds = Instance.new("TextLabel")
local moneyMade = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0, 0, 0.76337117, 0)
Frame.Size = UDim2.new(0.175635278, 0, 0.176661268, 0)

UICorner.Parent = Frame

rounds.Name = "rounds"
rounds.Parent = Frame
rounds.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
rounds.BackgroundTransparency = 1.000
rounds.BorderColor3 = Color3.fromRGB(255, 0, 0)
rounds.BorderSizePixel = 0
rounds.Size = UDim2.new(1, 0, 0.5, 0)
rounds.Font = Enum.Font.SourceSans
rounds.Text = "Rounds : "
rounds.TextColor3 = Color3.fromRGB(170, 170, 170)
rounds.TextScaled = true
rounds.TextSize = 14.000
rounds.TextWrapped = true
rounds.TextXAlignment = Enum.TextXAlignment.Left

moneyMade.Name = "moneyMade"
moneyMade.Parent = Frame
moneyMade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
moneyMade.BackgroundTransparency = 1.000
moneyMade.BorderSizePixel = 0
moneyMade.Position = UDim2.new(0, 0, 0.5, 0)
moneyMade.Size = UDim2.new(1, 0, 0.5, 0)
moneyMade.Font = Enum.Font.SourceSans
moneyMade.Text = "Money made : "
moneyMade.TextColor3 = Color3.fromRGB(160, 160, 160)
moneyMade.TextScaled = true
moneyMade.TextSize = 14.000
moneyMade.TextWrapped = true
moneyMade.TextXAlignment = Enum.TextXAlignment.Left

task.spawn(function()
    while task.wait() do
        pcall(function()
            moneyMade.Text = "Money made : "..tostring(money_made.Value)
            rounds.Text = "Rounds : "..tostring(ROUNDS)
        end)
    end
end)


CurrentRunningTweens = {}
ChestTriggerPart = game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.Trigger

local function TweenCFrame(TargetPart,TargetProperty,Speed)
    tweenhasCompleted = false
 local speeed = (TargetPart.Position - Vector3.new(TargetProperty.X,TargetProperty.Y,TargetProperty.Z)).Magnitude/Speed
 local TweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(speeed,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
 local goal = {}
 goal.CFrame = TargetProperty
 local tween = TweenService:Create(TargetPart,tweenInfo,goal)
 table.insert(CurrentRunningTweens,tween)
 tween:Play()
    tween.Completed:Connect(function(playbackState)
        tweenhasCompleted = true
    end)
end

task.spawn(function()
    repeat task.wait()
        if autoFarm == true then
            pcall(function()
                if not game.Players.LocalPlayer.Character then
                else
                    humRoot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if humRoot then
                        hasNoVelo = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("NoVelo")
                        if hasNoVelo then
                        else
                            NoVelo = Instance.new("BodyVelocity")
                            NoVelo.Name = "NoVelo"
                            NoVelo.P = math.huge
                            NoVelo.Velocity = Vector3.new(0,0,0)
                            NoVelo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                            NoVelo.Parent = humRoot
                        end
                    end
                end
            end) 
        end
    until 1+1==3
end)






game.Workspace.ChildAdded:Connect(function(child)
    if autoFarm == true then
        if child.Name == game.Players.LocalPlayer.Name then
            repeat wait() until child:FindFirstChild("Humanoid")
            ROUNDS = 0  
        end
    end
end)

repeat task.wait()
    if autoFarm == true then
        pcall(function()
            if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                if ROUNDS == 5 then
                    ROUNDS = 0
                    for i = 1,30 do
                        task.wait(.1)
                        game.Players.LocalPlayer.Character:PivotTo(ChestTriggerPart.CFrame)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,ChestTriggerPart,1)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,ChestTriggerPart,0)
                    end
                end
                TweenCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrame.new(-90, 125, 1368),4000)
                repeat task.wait()
                until tweenhasCompleted == true
                TweenCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrame.new(-56, 96, 8301),4000)
                repeat task.wait()
                until tweenhasCompleted == true
                TweenCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrame.new(-48, 67, 8816),4000)
                repeat task.wait() until tweenhasCompleted == true
                ROUNDS = ROUNDS+1
            end
        end)
    end
until 1+1==3