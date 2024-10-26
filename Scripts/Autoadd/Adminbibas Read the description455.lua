-- ÐÐ¿ÑÐµÐ´ÐµÐ»ÑÐµÐ¼ Ð¿ÐµÑÐµÐ¼ÐµÐ½Ð½ÑÐµ
local player = game.Players.LocalPlayer
local noclip = false
local float = false
local infJump = false
local annoy = false
local targetPlayer = nil

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local CmdsLabel = Instance.new("TextLabel")
local CmdsText = Instance.new("TextLabel")

ScreenGui.Parent = player:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Frame.Position = UDim2.new(0.5, -102, 0.5, -136)
Frame.Size = UDim2.new(0, 204, 0, 272)
Frame.Active = true
Frame.Draggable = true
Frame.Visible = false  -- Ð¡Ð½Ð°ÑÐ°Ð»Ð° ÑÐºÑÑÑÐ¾

CloseButton.Parent = Frame
CloseButton.Text = "Hide"
CloseButton.Size = UDim2.new(0, 50, 0, 25)
CloseButton.Position = UDim2.new(0.5, -25, 0, 5)
CloseButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible  -- ÐÐµÑÐµÐºÐ»ÑÑÐµÐ½Ð¸Ðµ Ð²Ð¸Ð´Ð¸Ð¼Ð¾ÑÑÐ¸
end)

CmdsLabel.Parent = Frame
CmdsLabel.Text = "Commands"
CmdsLabel.Size = UDim2.new(1, 0, 0, 50)
CmdsLabel.Position = UDim2.new(0, 0, 0, 35)
CmdsLabel.TextColor3 = Color3.new(1, 1, 1)
CmdsLabel.TextScaled = true
CmdsLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

CmdsText.Parent = Frame
CmdsText.Text = "!noclipon\n!noclipoff\n!floaton\n!floatoff\n!infjumpon\n!infjumpoff\n!annoyon [username]\n!annoyoff\n!speed [value]\n!jumppower [value]\n!baby [username]\n!cmds\n!sit"
CmdsText.Size = UDim2.new(1, 0, 1, -85)
CmdsText.Position = UDim2.new(0, 0, 0, 85)
CmdsText.TextColor3 = Color3.new(1, 1, 1)
CmdsText.TextScaled = true
CmdsText.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
CmdsText.TextYAlignment = Enum.TextYAlignment.Top
CmdsText.TextWrapped = true

print("GUI script is running")

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸ ÑÐ°ÑÐ°
local function onChatted(message)
    local msg = message:lower()
    print("Received message:", msg)

    if msg == "!noclipon" then
        noclip = true
        print("Noclip enabled")
    elseif msg == "!noclipoff" then
        noclip = false
        print("Noclip disabled")
    elseif msg == "!floaton" then
        float = true
        print("Float enabled")
    elseif msg == "!floatoff" then
        float = false
        print("Float disabled")
    elseif msg == "!infjumpon" then
        infJump = true
        print("Infinite jump enabled")
    elseif msg == "!infjumpoff" then
        infJump = false
        print("Infinite jump disabled")
    elseif msg:sub(1, 9) == "!annoyon " then
        local username = msg:sub(10)
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower() == username:lower() then
                targetPlayer = v
                annoy = true
                print("Annoying player:", v.Name)
                break
            end
        end
    elseif msg == "!annoyoff" then
        annoy = false
        targetPlayer = nil
        print("Annoy disabled")
    elseif msg:sub(1, 7) == "!speed " then
        local speed = tonumber(msg:sub(8))
        if speed and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character.Humanoid.WalkSpeed = speed
            print("Setting speed to:", speed)
        else
            print("Error: Speed or Humanoid not found")
        end
    elseif msg:sub(1, 11) == "!jumppower " then
        local jumpPower = tonumber(msg:sub(12))
        if jumpPower and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character.Humanoid.JumpPower = jumpPower
            print("Setting jump power to:", jumpPower)
        else
            print("Error: JumpPower or Humanoid not found")
        end
    elseif msg:sub(1, 6) == "!baby " then
        local username = msg:sub(7)
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower() == username:lower() then
                local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                local targetHumanoidRootPart = v.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart and targetHumanoidRootPart then
                    humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, targetHumanoidRootPart.Size.Y + humanoidRootPart.Size.Y / 2, 0)
                    print("Carrying player:", v.Name)
                else
                    print("Error: HumanoidRootPart not found")
                end
                break
            end
        end
    elseif msg == "!cmds" then
        Frame.Visible = not Frame.Visible
        print("Toggling command menu")
    elseif msg == "!sit" then
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Sit = true
            print("Sitting")
        else
            print("Humanoid not found")
        end
    else
        print("Unknown command:", msg)
    end
end

player.Chatted:Connect(onChatted)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸ noclip
game:GetService("RunService").Stepped:Connect(function()
    if noclip and player.Character then
        for _, v in pairs(player.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    elseif player.Character then
        for _, v in pairs(player.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
    end
end)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸ float
game:GetService("RunService").RenderStepped:Connect(function()
    if float and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            humanoidRootPart.CFrame = humanoidRootPart.CFrame + Vector3.new(0, 0.5, 0)
        end
    end
end)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸ infJump
game:GetService("UserInputService").JumpRequest:Connect(function()
    if infJump and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        end
    end
end)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸ annoy
game:GetService("RunService").Stepped:Connect(function()
    if annoy and targetPlayer and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and targetPlayer.Character then
            humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
        end
    end
end)
