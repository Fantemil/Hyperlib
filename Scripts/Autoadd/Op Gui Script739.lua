local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Arceus-X-UI-Library/main/source.lua"))()
lib:SetTitle("Plinko Casino | Agreed69")

local targetPart = workspace.PlinkoBoard:FindFirstChild("1000xMultRight")
local cash = 1000000000000
local bestwin = 1000000000000
local token = 1000000000000
local tag = -1

lib:AddButton("Cash", function()
    game:GetService("ReplicatedStorage").CashTransfer1:FireServer(cash, "Cash")
end)

lib:AddComboBox("ComboBox", {"1T", "1QA", "1QI", "math.huge"}, function(selection)
    if selection == "1T" then
        cash = 1000000000000
    elseif selection == "1QA" then
        cash = 1000000000000000
    elseif selection == "1QI" then
        cash = 1000000000000000000
    elseif selection == "math.huge" then
        cash = math.huge
    end
end)

lib:AddButton("BestWin", function()
    game:GetService("ReplicatedStorage").CashTransfer1:FireServer(bestwin, "BestWin")
end)

lib:AddComboBox("ComboBox", {"1T", "1QA", "1QI", "math.huge"}, function(selection)
    if selection == "1T" then
        bestwin= 1000000000000
    elseif selection == "1QA" then
        bestwin= 1000000000000000
    elseif selection == "1QI" then
        bestwin= 1000000000000000000
    elseif selection == "math.huge" then
        bestwin = math.huge
    end
end)

lib:AddButton("Token", function()
    game:GetService("ReplicatedStorage").CashOut:FireServer(token)
end)

lib:AddComboBox("ComboBox", {"1T", "1QA", "1QI", "math.huge"}, function(selection)
    if selection == "1T" then
        token = 1000000000000
    elseif selection == "1QA" then
        token = 1000000000000000
    elseif selection == "1QI" then
        token = 1000000000000000000
    elseif selection == "math.huge" then
        token = math.huge
    end
end)

lib:AddButton("Custom Tag", function()
    game:GetService("ReplicatedStorage").TagEquip:FireServer(tag)
end)

lib:AddComboBox("ComboBox", {"VIP", "OWNER", "TESTER", "CUSTOM"}, function(selection)
    if selection == "VIP" then
        tag = -1
    elseif selection == "OWNER" then
        tag = -2
    elseif selection == "TESTER" then
        tag = -3
    elseif selection == "CUSTOM" then
        tag = -4
    end
end)

local function teleportParts()
    local targetPosition = targetPart.Position
    local ballsFolder = game.Workspace:FindFirstChild("Balls")
    if ballsFolder then
        for _, part in ipairs(ballsFolder:GetChildren()) do
            if part:IsA("BasePart") then
                part.Position = targetPosition
            end
        end
    end
end

lib:AddToggle("Auto Win", function(state)
    if state then
        _G.loop = true
        while _G.loop do
            teleportParts()
            wait()
            end
    else
       _G.loop = false
    end
end, false)

lib:AddToggle("Ball stat spam", function(state)
    if state then
        _G.loop1 = true
        while _G.loop1 do
            game:GetService("ReplicatedStorage").TakeCashAddBall:FireServer()
            wait()
            end
    else
       _G.loop1 = false
    end
end, false)

lib:AddToggle("Give everyone 10x cash w cooldown", function(state)
    if state then
        _G.loop2 = true
        while _G.loop2 do
           workspace.Lobby.ServerEvents.SurfaceGui.Frame.Events.PurchaseEvents:FireServer(workspace.Lobby.ServerEvents.SurfaceGui.Frame.Events.GiveCash)
            wait()
            end
    else
       _G.loop2 = false
    end
end, false)