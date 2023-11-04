loadstring(game:HttpGet("https://raw.githubusercontent.com/Wh1t3Bl4ckPT/Scripts/main/Protected_6640836446039649.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Carry Me", "DarkTheme")
local Tab = Window:NewTab("Stage Teleporter")
local Section = Tab:NewSection("Stage Teleporter")

-- Function to teleport the player to a specific position
local function teleportToPosition(position)
    game.Players.LocalPlayer.Character:MoveTo(position)
end

-- Adding buttons for each checkpoint
for i = 1, 6 do
    local checkpointPosition = game:GetService("Workspace").Checkpoints["checkpoint" .. i].Position
    Section:NewButton("Checkpoint " .. i .. " - " .. (i - 1) * 100 .. " Meters","", function()
        teleportToPosition(checkpointPosition)
    end)
end