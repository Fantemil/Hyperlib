-- Load the Kavo UI Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Create the main window
local Window = Library.CreateLib("Tool Dropper", "Ocean")

-- Create a tab in the window
local Tab = Window:NewTab("Drop Tools")

-- Create a section in the tab
local Section = Tab:NewSection("Drop Tool Options")

-- Function to drop the currently equipped tool
local function dropTool()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local tool = character:FindFirstChildOfClass("Tool")
        if tool and tool:IsA("Tool") then
            tool.Parent = game.Workspace
        else
            print("No tool equipped!")
        end
    end
end

-- Create a button to drop the tool
Section:NewButton("Drop Current Tool", "Drops the currently equipped tool", function()
    dropTool()
end)

-- Create a toggle for auto-dropping tools
local autoDropEnabled = false
Section:NewToggle("Auto Drop Tools", "Automatically drops tools when equipped", function(state)
    autoDropEnabled = state
end)

-- Function to handle auto-dropping
local function autoDropTools()
    while true do
        wait(0.1)  -- Check every 0.1 seconds
        if autoDropEnabled then
            dropTool()
        end
    end
end

-- Start the auto-drop loop
coroutine.wrap(autoDropTools)()