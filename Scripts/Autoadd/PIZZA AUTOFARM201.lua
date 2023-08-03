-- Made by lobox920#9889
-- https://discord.gg/gurahub
getgenv().Farm = true -- To turn off change true to false
-- Script may bug idk if it has bugs dm me using discord

-- /// Functions
local function Go_To_End()
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if getgenv().Farm == true then
            if v:FindFirstChild("Arrow") and v:FindFirstChild("B1") and v:FindFirstChild("TouchInterest") then
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(v.Position)*CFrame.new(0,5,0)}):Play()
                wait(1)
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(v.Position)*CFrame.new(5,5,0)}):Play()
                wait(1)
            end
        end
    end
end

local function Get_Job()
    if getgenv().Farm == true then
        getgenv().Farm = false
        old = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8515.6, 4.95587, -33.2034)
        wait(1)
        game:GetService("ReplicatedStorage").Remotes.JobPrompt:FireServer(1, "Pizza Delivery")
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = old
    
        wait(1.5)
        getgenv().Farm = true
    end
end

local function Stop_Job()
    if getgenv().Farm == true then
        getgenv().Farm = false
        old = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8515.6, 4.95587, -33.2034)
        wait(1)
        game:GetService("ReplicatedStorage").Remotes.JobPrompt:FireServer(2, "Pizza Delivery")
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = old


        wait(1.5)
        getgenv().Farm = true
    end
end
-- /// End of Functions
while getgenv().Farm do
    if game:GetService("Players").LocalPlayer.CurrentJob.Value == "Pizza Delivery" then
        if game:GetService("Players").LocalPlayer:FindFirstChild("JobStatus") then
            if game:GetService("Players").LocalPlayer.JobStatus.Value == true then
                Stop_Job()
            elseif game:GetService("Players").LocalPlayer.JobStatus.Value == false then                Go_To_End()
            end
        else
            Get_Job()
        end
    else
        Get_Job()
    end
    wait(0.5) -- Yeah if not it may crash
end

