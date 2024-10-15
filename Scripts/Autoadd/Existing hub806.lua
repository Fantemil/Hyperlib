-- Load the library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TwiRwal/TwiWare/main/uilib.lua"))() -- open source

-- Create the main window
local Window = Library.CreateLib("Existing Hub", "Twiware") -- Set the title to "Existing Hub"

-- Create a new tab for Game Features
local Tab = Window:NewTab("Game Features")

-- Create a new section in the tab
local Section = Tab:NewSection("Main Controls")

-- Noclip feature
local noclipEnabled = false

-- Function to toggle noclip
local function toggleNoclip()
    noclipEnabled = not noclipEnabled
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not noclipEnabled
            end
        end
    end

    print("Noclip is now " .. (noclipEnabled and "enabled" or "disabled"))
end

-- Button to toggle noclip
Section:NewButton("Toggle Noclip", "Toggles noclip on or off", toggleNoclip)

-- Tool giver for Speed Coil
Section:NewButton("Give Speed Coil", "Gives you a Speed Coil", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Create the Speed Coil tool
    local tool = Instance.new("Tool")
    tool.Name = "Speed Coil"
    tool.RequiresHandle = true

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.BrickColor = BrickColor.new("Bright yellow")
    handle.Material = Enum.Material.Neon
    handle.Anchored = false
    handle.CanCollide = false
    handle.Parent = tool

    tool.Parent = player.Backpack

    -- Speed boost logic
    tool.Activated:Connect(function()
        player.Character.Humanoid.WalkSpeed = 30 -- Default speed when activated
        print("Speed Coil activated! Walk speed is now 30.")
        
        -- Reset walk speed after a delay (optional)
        wait(5) -- Time the effect lasts
        player.Character.Humanoid.WalkSpeed = 16 -- Reset to default walk speed (16)
        print("Speed Coil deactivated! Walk speed reset to 16.")
    end)
    
    print("Speed Coil has been given to you!")
end)

-- Speed change buttons
Section:NewButton("Set Speed to 30", "Set walk speed to 30", function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 30
    print("Walk speed set to 30.")
end)

Section:NewButton("Set Speed to 50", "Set walk speed to 50", function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 50
    print("Walk speed set to 50.")
end)

Section:NewButton("Set Speed to 100", "Set walk speed to 100", function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 100
    print("Walk speed set to 100.")
end)

-- Create a new tab for Scripts
local ScriptTab = Window:NewTab("Scripts")

-- Create a new section in the Scripts tab
local ScriptSection = ScriptTab:NewSection("Available Scripts")

-- Script 1: A Dusty Trip
ScriptSection:NewButton("A Dusty Trip", "Load the A Dusty Trip script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip", true))()
    Window:Close() -- Close the hub
end)

-- Script 2: Untitled Trip Game
ScriptSection:NewButton("Untitled Trip Game", "Load the Untitled Trip Game script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/UntitledTrip", true))()
    Window:Close() -- Close the hub
end)

-- Script 3: Pets Go
ScriptSection:NewButton("Pets Go", "Load the Pets Go script", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
    Window:Close() -- Close the hub
end)

-- Fluxus and Delta exploit compatibility
if syn and syn.protect_gui then
    syn.protect_gui(Window) -- Protect the GUI in Fluxus
elseif getgenv().is_sirhurt_closure then
    getgenv().is_sirhurt_closure = false -- For Delta and Sirhurt
end