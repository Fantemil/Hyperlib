local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = playerGui:WaitForChild("ScreenGui")
local navigationButtons = screenGui:WaitForChild("NavigationButtons")
local adminButton = navigationButtons:WaitForChild("Admin")

-- Function to make the button visible
local function makeButtonVisible()
    adminButton.Visible = true
end

-- Call the function to make the button visible
makeButtonVisible()