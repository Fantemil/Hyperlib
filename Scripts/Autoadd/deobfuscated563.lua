local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local KeyInput = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")
local DiscordButton = Instance.new("TextButton")
local StatusLabel = Instance.new("TextLabel")

-- GUI Setup
ScreenGui.Parent = player:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 250)
Frame.Position = UDim2.new(0.5, -150, 0.5, -125)
Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.2
Frame.ClipsDescendants = true

-- Rounded Corners
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

KeyInput.Parent = Frame
KeyInput.Size = UDim2.new(1, -20, 0, 50)
KeyInput.Position = UDim2.new(0, 10, 0, 20)
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Key"
KeyInput.TextColor3 = Color3.new(1, 1, 1)
KeyInput.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
KeyInput.BorderSizePixel = 0

local KeyInputCorner = Instance.new("UICorner")
KeyInputCorner.CornerRadius = UDim.new(0, 8)
KeyInputCorner.Parent = KeyInput

SubmitButton.Parent = Frame
SubmitButton.Size = UDim2.new(1, -20, 0, 50)
SubmitButton.Position = UDim2.new(0, 10, 0, 80)
SubmitButton.Text = "Submit"
SubmitButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
SubmitButton.TextColor3 = Color3.new(1, 1, 1)
SubmitButton.BorderSizePixel = 0

local SubmitButtonCorner = Instance.new("UICorner")
SubmitButtonCorner.CornerRadius = UDim.new(0, 8)
SubmitButtonCorner.Parent = SubmitButton

DiscordButton.Parent = Frame
DiscordButton.Size = UDim2.new(1, -20, 0, 50)
DiscordButton.Position = UDim2.new(0, 10, 0, 140)
DiscordButton.Text = "Get Key"
DiscordButton.BackgroundColor3 = Color3.new(0.2, 0.4, 0.8)
DiscordButton.TextColor3 = Color3.new(1, 1, 1)
DiscordButton.BorderSizePixel = 0

local DiscordButtonCorner = Instance.new("UICorner")
DiscordButtonCorner.CornerRadius = UDim.new(0, 8)
DiscordButtonCorner.Parent = DiscordButton

StatusLabel.Parent = Frame
StatusLabel.Size = UDim2.new(1, -20, 0, 30)
StatusLabel.Position = UDim2.new(0, 10, 0, 110)
StatusLabel.TextColor3 = Color3.new(1, 1, 1)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""

-- Key Logic
local correctKey = "rellahiscool"

-- Function to run the main script
local function runMainScript()
    print("rizz")
    -- Get the local player
local player = game.Players.LocalPlayer

-- Check if the player exists
if player then
    -- Function to make the player say a message in the chat
    local function sayInChat(message)
        -- Use the Chat service to send the message
        local chatService = game:GetService("Chat")
        chatService:Chat(player.Character.Head, message, Enum.ChatColor.White)
    end

    -- Make the player say "Script Loading"
    sayInChat("Script Loading!")
else
    warn("LocalPlayer not found")
end


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

function Init()
    Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end

function Test()
    print(Fluent.Options)
end

Init()
Test()

local Window = Fluent:CreateWindow({
    Title = "Naval Warfare | " .. Fluent.Version,
    SubTitle = "by rellah",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})



local Options = Fluent.Options

Fluent:Notify({
    Title = "Script Loaded!",
    Content = "discord.gg/g6TDNr8d",
    SubContent = " ",
    Duration = 10
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://4483345998" }),
    PlayerMods = Window:AddTab({ Title = "Player Mods", Icon = "rbxassetid://4483345998" }),
    Cred = Window:AddTab({ Title = "Credits", Icon = "rbxassetid://4483345998" }) -- Corrected title to "Credits"
}

local MainTab = Tabs.Main
local PlayerModsTab = Tabs.PlayerMods -- Added reference to Player Mods tab
local CredTab = Tabs.Cred

MainTab:AddButton({
    Title = "TP to Japan Lobby",
    Description = "Teleport to the Japan Spawn Area",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.103087425231934, -295.5, -36.644065856933594)
    end
})

MainTab:AddButton({
    Title = "TP to American Lobby",
    Description = "Teleport to the American Spawn Area",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.000070571899414, -295.5, 46.504608154296875)
    end
})

MainTab:AddButton({
    Title = "TP to Island C",
    Description = " ",
    Callback = function()
        -- LocalPlayer setup
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local Workspace = game:GetService("Workspace")

        -- Character handling
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

        LocalPlayer.CharacterAdded:Connect(function(character)
            Character = character
        end)

        -- Island positions
        local IslandPositions = {
            IslandA = { X = nil, Y = nil, Z = nil },
            IslandB = { X = nil, Y = nil, Z = nil },
            IslandC = { X = nil, Y = nil, Z = nil },
        }

        -- Function to set island positions
        local function SetIslandPositions()
            for _, v in pairs(Workspace:GetChildren()) do
                if v:IsA("Model") and v.Name == "Island" then
                    local flag = v:FindFirstChild("Flag")
                    if flag then
                        local post = flag:FindFirstChild("Post")
                        if post and post:IsA("BasePart") then
                            local position = post.Position
                            local islandCode = v:FindFirstChild("IslandCode")
                            if islandCode and islandCode:IsA("StringValue") then
                                if islandCode.Value == "A" then
                                    IslandPositions.IslandA.X, IslandPositions.IslandA.Y, IslandPositions.IslandA.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "B" then
                                    IslandPositions.IslandB.X, IslandPositions.IslandB.Y, IslandPositions.IslandB.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "C" then
                                    IslandPositions.IslandC.X, IslandPositions.IslandC.Y, IslandPositions.IslandC.Z = position.X, position.Y, position.Z
                                end
                            end
                        end
                    end
                end
            end
        end

        -- Continuously update island positions
        spawn(function()
            while true do
                SetIslandPositions()
                wait(10) -- Check every 10 seconds; adjust as needed
            end
        end)

        -- Initial setting of island positions
        SetIslandPositions()

        -- Teleport to Island C immediately after the script runs
        if IslandPositions.IslandC.X then
            Character.HumanoidRootPart.CFrame = CFrame.new(IslandPositions.IslandC.X, IslandPositions.IslandC.Y, IslandPositions.IslandC.Z)
        end
    end
})

MainTab:AddButton({
    Title = "TP to Island B",
    Description = " ",
    Callback = function()
        -- LocalPlayer setup
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local Workspace = game:GetService("Workspace")

        -- Character handling
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

        LocalPlayer.CharacterAdded:Connect(function(character)
            Character = character
        end)

        -- Island positions
        local IslandPositions = {
            IslandA = { X = nil, Y = nil, Z = nil },
            IslandB = { X = nil, Y = nil, Z = nil },
            IslandC = { X = nil, Y = nil, Z = nil },
        }

        -- Function to set island positions
        local function SetIslandPositions()
            for _, v in pairs(Workspace:GetChildren()) do
                if v:IsA("Model") and v.Name == "Island" then
                    local flag = v:FindFirstChild("Flag")
                    if flag then
                        local post = flag:FindFirstChild("Post")
                        if post and post:IsA("BasePart") then
                            local position = post.Position
                            local islandCode = v:FindFirstChild("IslandCode")
                            if islandCode and islandCode:IsA("StringValue") then
                                if islandCode.Value == "A" then
                                    IslandPositions.IslandA.X, IslandPositions.IslandA.Y, IslandPositions.IslandA.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "B" then
                                    IslandPositions.IslandB.X, IslandPositions.IslandB.Y, IslandPositions.IslandB.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "C" then
                                    IslandPositions.IslandC.X, IslandPositions.IslandC.Y, IslandPositions.IslandC.Z = position.X, position.Y, position.Z
                                end
                            end
                        end
                    end
                end
            end
        end

        -- Function to teleport to Island B
        local function TeleportToIslandB()
            SetIslandPositions() -- Ensure positions are updated before teleporting
            if IslandPositions.IslandB.X then
                Character.HumanoidRootPart.CFrame = CFrame.new(IslandPositions.IslandB.X, IslandPositions.IslandB.Y, IslandPositions.IslandB.Z)
            end
        end

        -- Execute teleportation when script runs
        TeleportToIslandB()

        -- Optionally, you can add a way to trigger teleportation again, such as through a chat command
        LocalPlayer.Chatted:Connect(function(message)
            local nm = string.lower(message)
            if nm == ";tpb" then -- Command to teleport to Island B
                TeleportToIslandB()
            end
        end)
    end
})

MainTab:AddButton({
    Title = "TP to Island A",
    Description = " ",
    Callback = function()
         -- LocalPlayer setup
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local Workspace = game:GetService("Workspace")

        -- Character handling
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

        LocalPlayer.CharacterAdded:Connect(function(character)
            Character = character
        end)

        -- Island positions
        local IslandPositions = {
            IslandA = { X = nil, Y = nil, Z = nil },
            IslandB = { X = nil, Y = nil, Z = nil },
            IslandC = { X = nil, Y = nil, Z = nil },
        }

        -- Function to set island positions
        local function SetIslandPositions()
            for _, v in pairs(Workspace:GetChildren()) do
                if v:IsA("Model") and v.Name == "Island" then
                    local flag = v:FindFirstChild("Flag")
                    if flag then
                        local post = flag:FindFirstChild("Post")
                        if post and post:IsA("BasePart") then
                            local position = post.Position
                            local islandCode = v:FindFirstChild("IslandCode")
                            if islandCode and islandCode:IsA("StringValue") then
                                if islandCode.Value == "A" then
                                    IslandPositions.IslandA.X, IslandPositions.IslandA.Y, IslandPositions.IslandA.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "B" then
                                    IslandPositions.IslandB.X, IslandPositions.IslandB.Y, IslandPositions.IslandB.Z = position.X, position.Y, position.Z
                                elseif islandCode.Value == "C" then
                                    IslandPositions.IslandC.X, IslandPositions.IslandC.Y, IslandPositions.IslandC.Z = position.X, position.Y, position.Z
                                end
                            end
                        end
                    end
                end
            end
        end

        -- Function to teleport to Island A
        local function TeleportToIslandA()
            SetIslandPositions() -- Ensure positions are updated before teleporting
            if IslandPositions.IslandA.X then
                Character.HumanoidRootPart.CFrame = CFrame.new(IslandPositions.IslandA.X, IslandPositions.IslandA.Y, IslandPositions.IslandA.Z)
            end
        end

        -- Execute teleportation when script runs
        TeleportToIslandA()

        -- Optionally, you can add a way to trigger teleportation again, such as through a chat command
        LocalPlayer.Chatted:Connect(function(message)
            local nm = string.lower(message)
            if nm == ";tpa" then -- Command to teleport to Island A
                TeleportToIslandA()
            end
        end)
    end
})

MainTab:AddButton({
    Title = "TP to American Harbour",
    Description = " ",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.992095947265625, 23.0000057220459, 8129.59423828125)
    end
})

MainTab:AddButton({
    Title = "TP to Japan Harbour",
    Description = " ",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150.50711059570312, 23.0000057220459, -8160.171875)
    end
})

MainTab:AddButton({
    Title = "Load IY",
    Description = "Executes infinite yield",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

CredTab:AddParagraph({
    Title = "By rellah",
    Content = "This script was made by rellah | .gg/7VGCr4Rzq5"
})

PlayerModsTab:AddButton({
    Title = "Faster Walk",
    Description = "Increases walk speed",
    Callback = function()
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
})

local Options = Fluent.Options
local Tabs = {
    Main = Window:AddTab({ Title = "Players", Icon = "rbxassetid://4483345998" }),
}

local PlayersTab = Tabs.Main
local playerButtons = {} -- Table to keep track of buttons

-- Function to create or update player buttons
local function UpdatePlayerButtons()
    -- Debug print
    print("Updating player buttons...")
    
    -- Remove buttons for players who are no longer in the game
    for playerName, button in pairs(playerButtons) do
        local player = game.Players:FindFirstChild(playerName)
        if not player then
            print("Removing button for player: " .. playerName)
            button:Destroy()
            playerButtons[playerName] = nil
        end
    end

    -- Add buttons for players who are new or not yet added
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and not playerButtons[player.Name] then
            print("Adding button for player: " .. player.Name)
            local button = PlayersTab:AddButton({
                Title = player.Name,
                Description = "Teleport to " .. player.Name,
                Callback = function()
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local targetPosition = character.HumanoidRootPart.CFrame.Position
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        print("Character or HumanoidRootPart not found for player: " .. player.Name)
                    end
                end
            })
            playerButtons[player.Name] = button
        end
    end
end

-- Initial setup
UpdatePlayerButtons()

-- Update the player buttons when a new player joins
game.Players.PlayerAdded:Connect(function(player)
    wait(1) -- Wait a short time to ensure the player has been added
    print("Player added: " .. player.Name)
    UpdatePlayerButtons()
end)

-- Remove player buttons when a player leaves
game.Players.PlayerRemoving:Connect(function(player)
    if playerButtons[player.Name] then
        print("Player leaving: " .. player.Name)
        playerButtons[player.Name]:Destroy()
        playerButtons[player.Name] = nil
    end
end)

-- Continuously update the player buttons
spawn(function()
    while wait(5) do -- Adjust the interval as needed
        UpdatePlayerButtons()
    end
end)


PlayerModsTab:AddButton({
    Title = "OP Player GUI",
    Description = "RPG Spam, Kill all, Rapid Fire",
    Callback = function()
         local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/rvllah/gui-lib-for-nw/refs/heads/main/OP%20PlayerGUI", true))()

local w = library:CreateWindow("Rellah's OP GUI")

-- Add a label above the Godmode button
w:Label("Use in lobby")

-- Flag to check if Godmode is active
local godmodeActive = false

-- Function to teleport player based on team
local function teleportPlayer()
    if godmodeActive then
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local team = player.Team and player.Team.Name or "Unknown" -- Ensure player.Team is valid
            print("Current Team: " .. team) -- Debug message to check the team name
            if team == "Japan" then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-150.50711059570312, 23.0000057220459, -8160.171875)
            elseif team == "USA" then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-50.992095947265625, 23.0000057220459, 8129.59423828125)
            else
                print("Team not recognized or not found")
            end
        else
            print("Player or HumanoidRootPart not found")
        end
    end
end

-- Button to enable godmode
w:Button("Godmode", function()
    print("Godmode button clicked") -- Debug message to check if button is clicked
    godmodeActive = not godmodeActive -- Toggle Godmode state
    if godmodeActive then
        print("Godmode activated")
        teleportPlayer() -- Initial teleport when Godmode is activated
    else
        print("Godmode deactivated")
    end
end)

-- Check player's team every 30 seconds
spawn(function()
    while wait(30) do
        if godmodeActive then
            local player = game.Players.LocalPlayer
            if player and player.Team then
                local team = player.Team.Name
                print("Current team check: " .. team) -- Print the team name for debugging
            else
                print("Player or team not found")
            end
        end
    end
end)

w:Toggle("Rapid Fire (Hold E)", {flag="toggle1"})
spawn(function()
    while wait() do
        if w.flags.toggle1 then
            local character = game.Players.LocalPlayer.Character
            if character and character:FindFirstChild("Humanoid") then
                local UIS = game:GetService("UserInputService")
                while w.flags.toggle1 do
                    if UIS:IsKeyDown(Enum.KeyCode.E) then
                        local tool = character:FindFirstChild("M1 Garand")
                        if tool then
                            tool:Activate()
                        else
                            print("Tool not found: M1 Garand")
                        end
                    end
                    wait(0.1)
                end
            else
                print("Humanoid not found")
            end
        end
    end
end)

w:Toggle("Kill Opposite Team", {flag="toggle3"})
spawn(function()
    while wait(0.1) do
        if w.flags.toggle3 then
            local character = game.Players.LocalPlayer.Character
            if character and character:FindFirstChild("Humanoid") then
                local localPlayerTeam = game.Players.LocalPlayer.Team
                for _, v in pairs(game.workspace:GetDescendants()) do
                    if v:IsA("Humanoid") and v.Parent and v.Parent:FindFirstChild("HumanoidRootPart") then
                        local opponentPlayer = game.Players:GetPlayerFromCharacter(v.Parent)
                        if opponentPlayer and opponentPlayer.Team ~= localPlayerTeam then
                            local humanoidRootPart = v.Parent:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                local A_1 = "shootRifle"
                                local A_2 = ""
                                local A_3 = {humanoidRootPart}
                                local Event = game:GetService("ReplicatedStorage"):FindFirstChild("Event")
                                if Event then
                                    Event:FireServer(A_1, A_2, A_3)
                                    Event:FireServer(A_1, "hit", {v})
                                else
                                    print("Event not found in ReplicatedStorage")
                                end
                            end
                        end
                    end
                end
            else
                print("Humanoid not found")
            end
        end
    end
end)

w:Section("Must have RPG GamePass")
w:Toggle("Shoot RPG", {flag="toggle4"})
spawn(function()
    while wait() do
        if w.flags.toggle4 then
            local mouse = game.Players.LocalPlayer:GetMouse()
            local A_2 = {[1] = mouse.Hit.p}
            game:GetService("ReplicatedStorage").Event:FireServer("fireRPG", A_2)
        end
    end
end)

    end
})

PlayerModsTab:AddButton({
    Title = "TP Tool",
    Description = "Click to teleport",
    Callback = function()
         -- Function to create and give the teleport tool to the player
local function giveTeleportTool(player)
    -- Create the teleport tool
    local TpTool = Instance.new("Tool")
    TpTool.Name = "Teleport Tool"
    TpTool.RequiresHandle = false
    TpTool.Parent = player.Backpack

    -- Get the player's mouse
    local mouse = player:GetMouse()

    -- Connect the activation of the tool
    TpTool.Activated:Connect(function()
        -- Get the player's character and HumanoidRootPart
        local char = player.Character or workspace:FindFirstChild(player.Name)
        local HRP = char and char:FindFirstChild("HumanoidRootPart")
        if not HRP then
            return warn("Failed to find HumanoidRootPart")
        end

        -- Get the target position from the mouse hit
        local targetPosition = mouse.Hit.p

        -- Teleport the player to the target position
        HRP.CFrame = CFrame.new(targetPosition.X, targetPosition.Y + 3, targetPosition.Z)
    end)
end

-- Give the teleport tool to the local player
local player = game.Players.LocalPlayer
if player then
    giveTeleportTool(player)
else
    warn("LocalPlayer not found")
end

    end
})

PlayerModsTab:AddButton({
    Title = "GodMode",
    Description = "Use in lobby BUGGY",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local team = player.Team and player.Team.Name or "Unknown" -- Ensure player.Team is valid
            print("Current Team: " .. team) -- Debug message to check the team name
            if team == "Japan" then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-150.50711059570312, 23.0000057220459, -8160.171875)
            elseif team == "USA" then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(-50.992095947265625, 23.0000057220459, 8129.59423828125)
            else
                print("Team not recognized or not found")
            end
        else
            print("Player or HumanoidRootPart not found")
			end 
    end
})
    ScreenGui:Destroy()
end

SubmitButton.MouseButton1Click:Connect(function()
    local enteredKey = KeyInput.Text
    if enteredKey == correctKey then
        StatusLabel.Text = "Key accepted! Running script..."
        wait(1)
        runMainScript()
    else
        StatusLabel.Text = "Incorrect key. Try again."
    end
end)

-- Copy Discord link function
DiscordButton.MouseButton1Click:Connect(function()
    setclipboard("discord.gg/Eq7rPHkRPT")
    DiscordButton.Text = "Discord Copied"
end)

-- Focus events to manage placeholder text
KeyInput.Focused:Connect(function()
    if KeyInput.Text == "Enter Key" then
        KeyInput.Text = ""
        KeyInput.TextColor3 = Color3.new(1, 1, 1)
    end
end)

KeyInput.FocusLost:Connect(function()
    if KeyInput.Text == "" then
        KeyInput.Text = "Enter Key"
        KeyInput.TextColor3 = Color3.new(0.5, 0.5, 0.5)
    end
end)