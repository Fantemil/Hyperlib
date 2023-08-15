-- Advanced Player Access System in Lua

-- Define a table to store valid player usernames
local playerDatabase = {
    ["player1"] = true,
    ["player2"] = true,
    -- Add more valid player usernames as needed
}

-- Function to check if a player username is valid
local function isValidPlayer(player)
    return playerDatabase[player] or false
end

-- Function to handle access denial
local function handleAccessDenied(player)
    print("Access denied for player:", player)
    -- You can implement further actions here, such as logging or notifications
end

-- Main function to process player access
local function processPlayerAccess(player)
    if isValidPlayer(player) then
        print("Access granted for player:", player)
        -- Your application logic for granting player access goes here
    else
        handleAccessDenied(player)
    end
end

-- Simulate reading player username from user input (replace with actual method)
io.write("Enter your player username: ")
local currentPlayer = io.read()

-- Process the provided player username
processPlayerAccess(currentPlayer)
