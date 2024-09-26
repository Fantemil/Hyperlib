-- Get the player
local player = game.Players.LocalPlayer

-- Function to set the player's health to a specific value
local function setPlayerHealth(healthValue)
    -- Check if the player's character and Humanoid exist
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        -- Set the player's health to the specified value
        player.Character.Humanoid.Health = healthValue
    end
end

-- Call the function and pass the desired health value
setPlayerHealth(0)

-- Create a notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "skip level doneâ",
    Text = "Made by indonesiangamer777",
    Duration = 7
})