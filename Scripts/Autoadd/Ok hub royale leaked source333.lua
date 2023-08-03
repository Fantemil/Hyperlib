local userinputservice = game:GetService("UserInputService")
local LocalPlayer = game.Players.LocalPlayer.Name
Player = game.Players.LocalPlayer.Character.Name
local plr = game.Players.LocalPlayer

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Slap royale", "By Ok.")

local Home = UI:addPage("Combat", 1, true, 6)

local Items = UI:addPage("Items", 1, true, 6)

local Teleports = UI:addPage("Teleports", 1, true, 6)

local Discord = UI:addPage("Discord", 1, true, 6)

Home:addToggle(
    "Slap aura",
    function(SlapAura)
        if SlapAura == true then
            getgenv().SlapAura = true
            spawn(
                function()
                    while getgenv().SlapAura do
                        for _, ok in ipairs(workspace:GetChildren()) do
                            if ok:FindFirstChild("Humanoid") then
                                game:GetService("ReplicatedStorage").Events.Slap:FireServer(ok.Torso)
                                wait(0.01)
                            end
                        end
                    end
                end
            )
        else
            getgenv().SlapAura = false
        end
    end
)

Home:addToggle("Reach",function(SlapAura)
    if SlapAura == true then
        spawn(function()
        getgenv().Reach = true
        userinputservice.InputBegan:Connect(function(input, gameProcessedEvent)
            local inputType = input.UserInputType
                if inputType == Enum.UserInputType.MouseButton1 then -- When a player clicks the screen
                    if getgenv().Reach then
                        for _, ok in ipairs(workspace:GetChildren()) do
                            if ok:FindFirstChild("Humanoid") then
                                game:GetService("ReplicatedStorage").Events.Slap:FireServer(ok.Torso);
                            wait(0.01)
                        end
                    end
                end 
            end
        end)
    end)
    else
        getgenv().Reach = false
    end
end)



Discord:addButton(
    "Copy link to discord - for updates",
    function()
        setclipboard(tostring("https://discord.gg/HKJx3eQXxu"))
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Discord",
                Text = "Coppied!"
            }
        )
    end
)

Home:addToggle(
    "Kill random people aka free win (buggy)",
    function(SlapAura)
        if SlapAura == true then
            getgenv().KILLPEOPLE = true

            spawn(
                function()
                    workspace[Player].Head:Destroy()
                end
            )

            spawn(
                function()
                    while getgenv().KILLPEOPLE do
                        for _, ok in ipairs(workspace:GetChildren()) do
                            if ok:FindFirstChild("Humanoid") then
                                game:GetService("ReplicatedStorage").Events.Slap:FireServer(ok.Torso)
                                wait(0.01)
                            end
                        end
                    end
                end
            )

            while getgenv().KILLPEOPLE do
                for _, v in pairs(game.Players:GetPlayers()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") then
                        while v.Character:IsDescendantOf(workspace) and v.Character.Humanoid.Health > 1 do
                            wait(0.1)
                            tweenService, tweenInfo =
                                game:GetService("TweenService"),
                                TweenInfo.new(.5, Enum.EasingStyle.Linear)
                            tween =
                                tweenService:Create(
                                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
                                tweenInfo,
                                {CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)}
                            )
                            tween:Play()
                            Wait(0.2)
                        end
                    end
                end
            end
        else
            getgenv().KILLPEOPLE = false
        end
    end
)

Home:addButton(
    "Destroy acid pits (use with kill people)",
    function()
        spawn(
            function()
                game:GetService("Workspace").Map.AcidAbnormality.Acid:Destroy()
                game:GetService("Workspace").Map.AcidAbnormality.Acid:Destroy()
                game:GetService("Workspace").Map.AcidAbnormality.Acid:Destroy()
            end
        )
    end
)

Home:addButton(
    "Destroy lab (items still remain)",
    function()
        spawn(
            function()
game:GetService("Workspace").Map.OriginOffice:Destroy()
end
)
end
)

Items:addButton(
    "Get all items (DONT USE BOMBS)",
    function()
        spawn(
            function()
                
local charac = game.Players.LocalPlayer.Character
for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") then
        wait(.1)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1.5, Enum.EasingStyle.Linear)
        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.Handle.CFrame})
        tween:Play()
        wait(.2)
        charac.Humanoid:EquipTool(v)
    end
end
            end
        )
    end
)

Teleports:addButton(
    "School",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    508.355164,
                    51.9435844,
                    -369.250031,
                    -0.0291695595,
                    0.696763933,
                    0.71670723,
                    -0.998238981,
                    0.0167474151,
                    -0.0569090843,
                    -0.0516551733,
                    -0.717105031,
                    0.695048273
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)

Teleports:addButton(
    "Desert",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new(-642, 15.1884031, -93.6500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)}
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
Teleports:addButton(
    "Field",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new(469.94043, 89.8776321, 385.162689, 1, 0, 0, 0, 1, 0, 0, 0, 1)}
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
Teleports:addButton(
    "Hallow Hills",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    -129.338455,
                    103.993027,
                    357.294373,
                    -0.998822331,
                    0.0428290665,
                    0.0228018295,
                    0.041174911,
                    0.996791124,
                    -0.0686445013,
                    -0.0256686416,
                    -0.067624785,
                    -0.997380614
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
Teleports:addButton(
    "Under Map",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new()}
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
Teleports:addButton(
    "Caves",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    542.96228,
                    -43.080822,
                    -209.350006,
                    0.193205729,
                    -0.0219757352,
                    0.980912149,
                    -0.974057674,
                    0.115763538,
                    0.194449127,
                    -0.117827021,
                    -0.993033648,
                    0.000960545964
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
Teleports:addButton(
    "Mini Market",
    function()
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    -568.477661,
                    15.0554562,
                    -490.663818,
                    -0.735443711,
                    -0.15264675,
                    0.660167813,
                    0.0225285366,
                    0.968246698,
                    0.248979419,
                    -0.677211165,
                    0.197982967,
                    -0.708652139
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
    end
)
