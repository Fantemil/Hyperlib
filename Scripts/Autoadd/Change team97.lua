-- à¸£à¸²à¸¢à¸à¸·à¹à¸­à¸à¸µà¸¡à¸à¸µà¹à¸ªà¸²à¸¡à¸²à¸£à¸à¹à¸à¸¥à¸µà¹à¸¢à¸à¹à¸à¹
local teams = {
    ["Red"] = "Red Team",
    ["Blue"] = "Blue Team",
    ["Green"] = "Green Team",
    ["Yellow"] = "Yellow Team"
}

-- à¸à¸±à¸à¸à¹à¸à¸±à¸à¹à¸à¸¥à¸µà¹à¸¢à¸à¸à¸µà¸¡
local function changeTeam(player, teamName)
    local team = game.Teams:FindFirstChild(teamName)
    if team then
        player.Team = team
        player:LoadCharacter()  -- à¸£à¸µà¹à¸à¹à¸à¸à¸±à¸§à¸¥à¸°à¸à¸£à¹à¸à¸·à¹à¸­à¹à¸à¸¥à¸µà¹à¸¢à¸à¸à¸µà¸¡à¸à¸±à¸à¸à¸µ
        player:FindFirstChildOfClass("PlayerGui"):SetCore("ChatMakeSystemMessage", {
            Text = "You have been switched to " .. teamName;
            Color = Color3.new(0, 1, 0);
        })
    else
        player:FindFirstChildOfClass("PlayerGui"):SetCore("ChatMakeSystemMessage", {
            Text = "Invalid team name!";
            Color = Color3.new(1, 0, 0);
        })
    end
end

-- à¸à¸±à¸à¸à¹à¸à¸±à¸à¸à¸³à¹à¸à¸´à¸à¸à¸²à¸£à¹à¸¡à¸·à¹à¸­à¸à¸¹à¹à¹à¸¥à¹à¸à¸à¸´à¸¡à¸à¹à¹à¸à¹à¸à¸
local function onChatted(player, message)
    local args = string.split(message, " ")
    if args[1] == "/team" and args[2] then
        local teamName = teams[args[2]]
        if teamName then
            changeTeam(player, teamName)
        else
            player:FindFirstChildOfClass("PlayerGui"):SetCore("ChatMakeSystemMessage", {
                Text = "Invalid team name!";
                Color = Color3.new(1, 0, 0);
            })
        end
    end
end

-- à¹à¸à¸·à¹à¸­à¸¡à¸à¹à¸­à¸à¸±à¸à¸à¹à¸à¸±à¸à¸à¸±à¸à¹à¸«à¸à¸¸à¸à¸²à¸£à¸à¹
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onChatted(player, message)
    end)
end)